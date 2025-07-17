/* зв'язок один до одного*/
use alexdb;

create table usersSome
(
    id int primary key auto_increment,
    username varchar(20),
    password varchar(20)
);

create table profile
(
    id int primary key auto_increment,
    name varchar(20) not null ,
    surname varchar(20) not null ,
    age int not null ,
    user_id int not null unique ,
    foreign key (user_id) references usersSome (id)
);

select * from usersSome join profile p on usersSome.id = p.user_id;


/*зв'язок багато до багатьох*/

create table users_cars
(
    cars_id bigint,
    user_id int,
    primary key (cars_id, user_id),
    foreign key (cars_id) references cars(id),
    foreign key (user_id) references users(id)
);


    select name, model, price from users join users_cars uc on users.id = uc.user_id
    join alexdb.cars c on c.id = uc.cars_id;