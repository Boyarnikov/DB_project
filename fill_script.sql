insert into PLAYER(player_id, player_login_value, player_email_value, player_password_value)
values(0, 'borp', 'borp@gmail.com', '12345');
insert into PLAYER(player_id, player_login_value, player_email_value, player_password_value)
values(1, 'gamer', 'gamer@gmail.com', 'a83a&h03t');
insert into PLAYER(player_id, player_login_value, player_email_value, player_password_value)
values(2, 'stranger351', 'stranger@gmail.com', 'password');
insert into PLAYER(player_id, player_login_value, player_email_value, player_password_value)
values(3, 'prob', 'probprob@gmail.com', 'prob');

insert into LOCATIONS(location_id, location_dificality_coeff, location_nm)
values(0, 1, 'forest');
insert into LOCATIONS(location_id, location_dificality_coeff, location_nm)
values(1, 3, 'castle');
insert into LOCATIONS(location_id, location_dificality_coeff, location_nm)
values(2, 4, 'dungeon');
insert into LOCATIONS(location_id, location_dificality_coeff, location_nm)
values(3, 0, 'shelter');
insert into LOCATIONS(location_id, location_dificality_coeff, location_nm)
values(4, 100, 'hell');

insert into CHARACTERS(character_id, player_id, character_hp_am, location_id,
                      character_level_am, character_mana_am, character_class_nm)
values(0, 0, 10, 0, 23, 0, 'warrior');
insert into CHARACTERS(character_id, player_id, character_hp_am, location_id,
                      character_level_am, character_mana_am, character_class_nm)
values(1, 0, 15, 1, 1, 10, null);
insert into CHARACTERS(character_id, player_id, character_hp_am, location_id,
                      character_level_am, character_mana_am, character_class_nm)
values(2, 2, 20, 3, 13, 10, 'archer');
insert into CHARACTERS(character_id, player_id, character_hp_am, location_id,
                      character_level_am, character_mana_am, character_class_nm)
values(3, 3, 1, 3, 62, 100, 'magician');

insert into ITEMS(item_id, item_type_nm, item_is_consumable_flg, item_rarity_value)
values(0, null, true, 'common');
insert into ITEMS(item_id, item_type_nm, item_is_consumable_flg, item_rarity_value)
values(1, 'blessed', false, 'rare');
insert into ITEMS(item_id, item_type_nm, item_is_consumable_flg, item_rarity_value)
values(2, 'blessed', false, 'rare');
insert into ITEMS(item_id, item_type_nm, item_is_consumable_flg, item_rarity_value)
values(3, 'magical', false, 'epic');
insert into ITEMS(item_id, item_type_nm, item_is_consumable_flg, item_rarity_value)
values(4, 'cursed', false, 'epic');

insert into SKILLS(skill_id, skill_mana_requirements, skill_item_requirements, skill_type_nm)
values(0, 0, false, 'melee');
insert into SKILLS(skill_id, skill_mana_requirements, skill_item_requirements, skill_type_nm)
values(1, 0, false, 'range');
insert into SKILLS(skill_id, skill_mana_requirements, skill_item_requirements, skill_type_nm)
values(2, 10, true, 'range');
insert into SKILLS(skill_id, skill_mana_requirements, skill_item_requirements, skill_type_nm)
values(3, 15, true, 'magic');

insert into CHARACTER_X_SKILL(character_id, skill_id) values(0, 0);
insert into CHARACTER_X_SKILL(character_id, skill_id) values(0, 1);
insert into CHARACTER_X_SKILL(character_id, skill_id) values(0, 3);
insert into CHARACTER_X_SKILL(character_id, skill_id) values(0, 4);
insert into CHARACTER_X_SKILL(character_id, skill_id) values(1, 2);
insert into CHARACTER_X_SKILL(character_id, skill_id) values(1, 3);
insert into CHARACTER_X_SKILL(character_id, skill_id) values(2, 0);
insert into CHARACTER_X_SKILL(character_id, skill_id) values(3, 1);

insert into CHARACTER_X_ITEM(character_id, item_id) values(0, 0);
insert into CHARACTER_X_ITEM(character_id, item_id) values(0, 0);
insert into CHARACTER_X_ITEM(character_id, item_id) values(0, 0);
insert into CHARACTER_X_ITEM(character_id, item_id) values(2, 1);
insert into CHARACTER_X_ITEM(character_id, item_id) values(2, 2);
insert into CHARACTER_X_ITEM(character_id, item_id) values(3, 0);
insert into CHARACTER_X_ITEM(character_id, item_id) values(3, 0);
insert into CHARACTER_X_ITEM(character_id, item_id) values(3, 1);
insert into CHARACTER_X_ITEM(character_id, item_id) values(3, 2);
insert into CHARACTER_X_ITEM(character_id, item_id) values(3, 3);

insert into SKILL_X_ITEM(skill_id, item_id) values(2, 2);
insert into SKILL_X_ITEM(skill_id, item_id) values(3, 4);
insert into SKILL_X_ITEM(skill_id, item_id) values(3, 0);
