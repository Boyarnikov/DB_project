drop schema if exists RPG cascade;
create schema RPG;

set search_path to RPG, public;

drop table if exists PLAYER cascade;
create table PLAYER
(
    player_id        INT NOT NULL PRIMARY KEY,
    player_login_value    varchar(30),
    player_email_value     varchar(30),
    player_password_value  varchar(30)
);

drop table if exists LOCATIONS cascade;
create table LOCATIONS
(
    location_id                INT NOT NULL PRIMARY KEY,
    location_dificality_coeff  INT,
    location_nm                varchar(30)
);

drop table if exists CHARACTERS cascade;
create table CHARACTERS
(
    character_id        INT NOT NULL PRIMARY KEY,
    player_id           INT REFERENCES PLAYER(player_id),
    character_hp_am     INT,
    location_id         INT REFERENCES LOCATIONS(location_id),
    character_level_am  INT,
    character_mana_am   INT,
    character_class_nm  varchar(30),
    check (character_class_nm = 'warrior' OR character_class_nm = 'archer' OR
           character_class_nm = 'magician' OR character_class_nm = null)
);

drop table if exists ITEMS cascade;
create table ITEMS
(
    item_id                  INT NOT NULL PRIMARY KEY,
    item_type_nm             varchar(10),
    item_is_consumable_flg   BOOLEAN,
    item_rarity_value        varchar(10)
    check (item_type_nm = 'cursed' OR item_type_nm = 'blessed'
               OR item_type_nm = 'magical' OR item_type_nm = NULL)
    check (item_rarity_value = 'common' OR item_rarity_value = 'rare' OR item_rarity_value = 'epic')
);

drop table if exists SKILLS cascade;
create table SKILLS
(
    skill_id                    INT not null primary key,
    skill_mana_requirements     INT,
    skill_item_requirements     BOOLEAN,
    skill_type_nm               varchar(10)
    check (skill_type_nm = 'melee' OR skill_type_nm = 'range' OR skill_type_nm = 'magic')
);

drop table if exists CHARACTER_X_SKILL cascade;
create table CHARACTER_X_SKILL
(
    character_id INT NOT NULL REFERENCES CHARACTERS(character_id),
    skill_id     INT NOT NULL REFERENCES LOCATIONS(location_id)
);

drop table if exists CHARACTER_X_ITEM cascade;
create table CHARACTER_X_ITEM
(
    character_id INT NOT NULL REFERENCES CHARACTERS(character_id),
    item_id     INT NOT NULL REFERENCES ITEMS(item_id)
);

drop table if exists SKILL_X_ITEM cascade;
create table SKILL_X_ITEM
(
    skill_id    INT NOT NULL REFERENCES SKILLS(skill_id),
    item_id     INT NOT NULL REFERENCES ITEMS(item_id)
);