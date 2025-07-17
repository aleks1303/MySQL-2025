
use alexdb;



/* виводимо всіх користувачів*/

select * from usersShop;
select * from users;

/*знайти окремо*/
select id, name from usersShop;

select * from users where name='Oleg';

/*number*/
select * from users where age=30;
select * from users where age>=30;
select * from users where age<=30;
select * from users where age!=30;
select * from users where age between 15 and 30;
select * from users where age not between 10 and 20;

select * from users where name='oleg' or name='olha' and age between 10 and 40;

/* перебирати по діапазону*/
select * from users where age in (16, 4, 30, 34);
select * from users where age not in (16, 4, 30, 34);



/*varchar*/
/*довжина name*/
select * from users where length(name) != 4;
select * from users where length(name) = 4;
select * from users where length(name) >= 4;
select * from users where length(name) <= 4;


/* починається на першу букву...*/
select * from users where name like 'O%';
/* де є буква (o)*/
select * from users where name like '%o%';

/* пошук де 2 буква e, а далі всеодно*/
select * from users where name like '__e%';

/* де є буква (o)*/
select * from users where name like '%o%';


/*sort*/
select * from users order by age;
select * from users order by age desc ;

select * from users order by name;
select * from users order by name desc;

/* скільки вивести і пропустити*/
select * from users limit 2;
select * from users limit 3 offset 3;


/*
агрегатні значення:
  min
  max
  count
  sum
  avg (середнє значення)
  */

/*  as передає на фронт об'єкт minAge*/
select min(age) as minAge from client;
select max(age) as maxAge from client;
select avg(age) as avgAge from client;
select sum(age) as sumAge from client;

select count(*) as count from client where age >=25;

/*group*/
select count(*) as count, gender from users group by gender;
select count(*) as count, education from client group by education;
select max(age) as maxAge, gender from users group by gender;


/* шукаємо та рахуємо моделі, більше ніж 2010 та групуємо, виводимо ті, які мають більше ніж 4 в групі*/
select count(*) as count, model from cars where year>=2010 group by model having count>=5;

/*delete*/
delete from usersShop where id=2;

/*update*/
update usersShop set age=55 where id=1;
