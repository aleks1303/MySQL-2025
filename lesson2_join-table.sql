create table cities
(
    id int primary key auto_increment,
    city varchar(20)
);

create table usersCity
(
    id int primary key auto_increment,
    name varchar(20) not null ,
    age int not null ,
    city_id int ,
    foreign key (city_id) references cities(id)
);

/*об'єднуємо таблички*/

select * from usersCity
join cities on cities.id = usersCity.city_id;

select * from cities
join usersCity  on cities.id = usersCity.city_id;

/*виводимо в пріоритеті usersCity (left) */
select * from usersCity left join cities on cities.id = usersCity.city_id;

/*виводимо в пріоритеті cities (right) */
select * from cities right join usersCity on cities.id = usersCity.city_id;


/*об'єднуємо три таблиці*/
select * from client join alexdb.application a on client.idClient = a.Client_idClient
join alexdb.department d on d.idDepartment = client.Department_idDepartment
where City='Lviv' and Sum>5000;

/*виводимо те, що треба*/
select client.*, Sum, Currency, CountOfWorkers from client join alexdb.application a on client.idClient = a.Client_idClient
                     join alexdb.department d on d.idDepartment = client.Department_idDepartment;

