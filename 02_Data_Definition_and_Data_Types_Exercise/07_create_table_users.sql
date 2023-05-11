CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time DATETIME,
    is_deleted BOOLEAN
);

insert into users(username, password)
values ('Ivan', '1q2w3e4r'),
('Stoqn', '1q2w3e4r'),
('Petkan', '1a2w3e4r5t'),
('Gencho', '123456'),
('Pencho', '111111');