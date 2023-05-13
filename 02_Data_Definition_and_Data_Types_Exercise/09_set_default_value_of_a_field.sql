-- 9 Set Default Value of a Field

alter table users
change column last_login_time
last_login_time datetime default NOW();