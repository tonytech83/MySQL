-- Change Primary Key
alter table users
drop primary key,
add constraint pk_users
primary key users(id, username);