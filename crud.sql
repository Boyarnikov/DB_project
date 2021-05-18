-- Для игроков

insert into PLAYER(player_id, player_login_value, player_email_value, player_password_value)
    values(4, 'hallo_im_Steve', 'stevegamer@gmail.com', 'ppppassword');
select * from PLAYER r where length(player_login_value) > 6;
update PLAYER set player_login_value = 'steve_nagibator' where player_id = 4;
delete from PLAYER where player_id = 4;

-- Для локаций

insert into LOCATIONS(location_id, location_dificality_coeff, location_nm) values(5, 11, 'cursed_forest');
select * from LOCATIONS r where location_dificality_coeff > 3 and location_dificality_coeff < 100;
update LOCATIONS set location_dificality_coeff = 100 where location_nm = 'cursed_forest';
delete from LOCATIONS where location_nm = 'cursed_forest';