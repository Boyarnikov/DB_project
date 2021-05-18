select *
from PLAYER;

create or replace view PLAYER_view as
select player_login_value,
       SUBSTRING(player_email_value, 0, 4) || '***' || SUBSTRING(player_email_value, length(player_email_value)-8, 9)
       as player_email_value,
       repeat('*', length(player_password_value)) as password
from PLAYER;

select *
from PLAYER_view;
----------------------------------
select *
from CHARACTERS;

create or replace view CHARACTERS_view as
select
    character_hp_am,
    character_level_am,
    character_mana_am,
    character_class_nm
from CHARACTERS;

select *
from CHARACTERS_view;
----------------------------------
select *
from ITEMS;

create or replace view ITEMS_view as
select
    item_type_nm,
    item_is_consumable_flg,
    item_type_nm
from ITEMS;

select *
from ITEMS_view;
----------------------------------
select *
from LOCATIONS;

create or replace view LOCATIONS_view as
select
    location_nm,
    location_dificality_coeff
from LOCATIONS;

select *
from LOCATIONS_view;
----------------------------------
select *
from SKILLS;

create or replace view SKILLS_view as
select
    skill_mana_requirements,
    skill_type_nm,
    skill_item_requirements
from SKILLS;

select *
from SKILLS_view;