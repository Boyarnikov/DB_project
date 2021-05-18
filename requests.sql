-- Средний уровень персонажей каждого игрока, выводим ники и число

select nick_nm, max_level_am
from
        (select max(character_level_am) as max_level_am, player_id as player_id
        from characters
        group by player_id ) as maximum_levels
    inner join
        (select player_id as id, player_login_value as nick_nm
        from PLAYER) as player_data
    on player_data.id = maximum_levels.player_id
order by max_level_am;

-- Сколько у каждого персонажа предметов в инвентаре, сколько среди них одноразовых

select character_id, count(character_id) as items_amt,
       sum(case when (item_is_consumable_flg) then 1 else 0 end) as consumable_items_amt
from (CHARACTER_x_ITEM inner join items using (item_id))
group by character_id;

-- id предметов, которые нужны чтобы использовать способность каждую способность

select skill_id as skill, string_agg(cast(item_id as char(15)), ', ') as items_required_desc
from (
        (select skill_id
        from SKILLS
        where skill_item_requirements) as skills_with_req
    inner join skill_x_item using (skill_id)
    )
group by skill_id;

-- id персонажей, уровень которых выше сложности локации, вывести насколько уровень меньше, вывести название локации

select character_id, location_nm, location_dificality_coeff - characters.character_level_am as difference_am
from (
    CHARACTERS inner join LOCATIONS using (location_id)
    )
where (location_dificality_coeff > character_level_am);

-- Для игрока выводит способности которые ему доступны и количество маны, которая ему нужна чтобы выполнить данный скил

select character_id, skill_id as skills_id,
       (case when character_mana_am > skill_mana_requirements then 0 else
        skill_mana_requirements-character_mana_am end) as mana_needed_am
from (
        (select skill_id, skill_mana_requirements
        from SKILLS) as skills
        inner join CHARACTER_x_SKILL using (skill_id)
        inner join CHARACTERS using (character_id)
    )
group by character_id, skill_id, skill_mana_requirements, character_mana_am;