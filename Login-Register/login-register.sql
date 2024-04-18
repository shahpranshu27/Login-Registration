create database demo4;

use demo4;

create table users(
username varchar(20),
email varchar(30),
password varchar(20)
);

insert into users values("ab", "ab@gmail.com", "ab12");

select * from users;