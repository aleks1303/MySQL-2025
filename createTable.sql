/* яку базу використовуємо*/
use alexdb;

/* створюємо нову таблицю*/
create table usersShop(
    id int primary key auto_increment,
    name varchar(55) not null ,
    username varchar(55) not null ,
    age int not null,
    gender varchar(6) not null
);

/* додаємо користувачів в таблицю*/
insert into usersShop values (null, 'Max', 'Horenko', 40, 'male');
insert into usersShop values (null, 'Olga', 'Horenko', 34, 'female');

/* виводимо всіх користувачів*/
select * from usersShop;

/*знайти окремо*/
select id, name from usersShop;

select * from users where name='Oleg';

select * from users where name like 'O%'
