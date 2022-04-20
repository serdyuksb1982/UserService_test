delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
    (1, true, '202cb962ac59075b964b07152d234b70', 'admin'),
    (2, true, '250cf8b51c773f3f8dc8b4be867a9a02', 'user');

insert into user_role(user_id, roles) values
    (1, 'USER'),
    (1, 'ADMIN'),
    (2, 'USER');

