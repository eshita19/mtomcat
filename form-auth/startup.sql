create schema db1;
use db1;
create table users (
  user_name         varchar(15) not null primary key,
  user_pass         varchar(15) not null
);

create table user_roles (
  user_name         varchar(15) not null,
  role_name         varchar(15) not null,
  primary key (user_name, role_name)
);

insert into users values('eshita', 'July2020!');
insert into user_roles values('eshita', 'admin');	


