drop view if exists PLAYER_and_his_characters cascade;
create or replace view PLAYER_and_his_characters as
select player_login_value,
       SUBSTRING(player_email_value, 0, 4) || '***' || SUBSTRING(player_email_value, length(player_email_value)-8, 9)
       as player_email_value,
       repeat('*', length(player_password_value)) as password,
       (case when character_class_nm is null then 'human' else character_class_nm end)
from PLAYER inner join CHARACTERS using (player_id) inner join LOCATIONS using (location_id)
select *
from PLAYER_and_his_characters;

drop view if exists CHARACTERS_inventory cascade;
create or replace view CHARACTERS_inventory as
select character_id, item_id, count(item_id) as item_am, item_is_consumable_flg
from (CHARACTER_x_ITEM inner join items using (item_id))
group by item_id, character_id, item_is_consumable_flg;

select *
from CHARACTERS_inventory;