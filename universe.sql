create database universe
create table galaxy(
    galaxy_id SERIAL NOT NULL,
    name VARCHAR(30) UNIQUE NOT NULL,
    description TEXT,
    age NUMERIC,
    volume INT,
    no_of_stars INT,
    is_life_exists BOOLEAN,
    is_water_exists BOOLEAN
);
create table star(
    star_id SERIAL NOT NULL,
    name VARCHAR(30) UNIQUE NOT NULL,
    description TEXT,
    age NUMERIC,
    volume INT,
    no_of_planets INT,
    is_life_exists BOOLEAN,
    is_water_exists BOOLEAN,
    galaxy_id INT
);
create table planet(
    planet_id SERIAL NOT NULL,
    name VARCHAR(30) UNIQUE NOT NULL,
    description TEXT,
    age NUMERIC,
    volume INT,
    no_of_moons INT,
    is_life_exists BOOLEAN,
    is_water_exists BOOLEAN,
    star_id INT
);
create table moon(
    moon_id  SERIAL NOT NULL,
    name VARCHAR(30) UNIQUE NOT NULL,
    description TEXT,
    age NUMERIC,
    volume INT,
    area INT,
    is_life_exists BOOLEAN,
    is_water_exists BOOLEAN,
    planet_id INT
);
create table more_info(
    more_info_id SERIAL NOT NULL,
    name VARCHAR(30) UNIQUE NOT NULL,
    description TEXT,
);

insert into galaxy values(1,'galaxy1','This is galaxy1',1.5,12345,1,true,true),
(2,'galaxy2','This is galaxy2',1.5,12345,1,true,true),
(3,'galaxy3','This is galaxy3',1.5,12345,1,true,true),
(4,'galaxy4','This is galaxy4',1.5,12345,1,true,true),
(5,'galaxy5','This is galaxy5',1.5,12345,1,true,true),
(6,'galaxy6','This is galaxy6',1.5,12345,1,true,true);

insert into star values(1,'star1','This is star1',1.5,12345,1,true,true,1),
(2,'star2','This is star2',1.5,12345,1,true,true,2),
(3,'star3','This is star3',1.5,12345,1,true,true,3),
(4,'star4','This is star4',1.5,12345,1,true,true,4),
(5,'star5','This is star5',1.5,12345,1,true,true,5),
(6,'star6','This is star6',1.5,12345,1,true,true,6);

insert into planet values(1,'planet1','This is planet1',1.5,12345,1,true,true,1),
(2,'planet2','This is planet2',1.5,12345,1,true,true,2),
(3,'planet3','This is planet3',1.5,12345,1,true,true,3),
(4,'planet4','This is planet4',1.5,12345,1,true,true,4),
(5,'planet5','This is planet5',1.5,12345,1,true,true,5),
(6,'planet6','This is planet6',1.5,12345,1,true,true,6),
(7,'planet7','This is planet7',1.5,12345,1,true,true,6),
(8,'planet8','This is planet8',1.5,12345,1,true,true,5),
(9,'planet9','This is planet9',1.5,12345,1,true,true,4),
(10,'planet10','This is planet10',1.5,12345,1,true,true,3),
(11,'planet11','This is planet11',1.5,12345,1,true,true,2),
(12,'planet12','This is planet12',1.5,12345,1,true,true,1);

insert into moon values(1,'moon1','This is moon1',1.5,12345,1,true,true,1),
(2,'moon2','This is moon2',1.5,12345,1,true,true,2),
(3,'moon3','This is moon3',1.5,12345,1,true,true,3),
(4,'moon4','This is moon4',1.5,12345,1,true,true,4),
(5,'moon5','This is moon5',1.5,12345,1,true,true,5),
(6,'moon6','This is moon6',1.5,12345,1,true,true,6),
(7,'moon7','This is moon7',1.5,12345,1,true,true,7),
(8,'moon8','This is moon8',1.5,12345,1,true,true,8),
(9,'moon9','This is moon9',1.5,12345,1,true,true,9),
(10,'moon10','This is moon10',1.5,12345,1,true,true,10),
(11,'moon11','This is moon11',1.5,12345,1,true,true,11),
(12,'moon12','This is moon12',1.5,12345,1,true,true,12),
(13,'moon13','This is moon13',1.5,12345,1,true,true,1),
(14,'moon14','This is moon14',1.5,12345,1,true,true,4),
(15,'moon15','This is moon15',1.5,12345,1,true,true,5),
(16,'moon16','This is moon16',1.5,12345,1,true,true,6),
(17,'moon17','This is moon17',1.5,12345,1,true,true,7),
(18,'moon18','This is moon18',1.5,12345,1,true,true,8),
(19,'moon19','This is moon19',1.5,12345,1,true,true,9),
(20,'moon20','This is moon20',1.5,12345,1,true,true,2);

insert into more_info values(1,'more1','sdnjnfjn'),
(2,'more2','dfwdgrrgrw'),
(3,'more3','dfwdgrrgrw'),
(4,'more4','dfwdgrrgrw'),
(5,'more5','dfwdgrrgrw');

alter table galaxy add primary key(galaxy_id);
alter table star add primary key(star_id);
alter table planet add primary key(planet_id);
alter table moon add primary key(moon_id);
alter table more_info add primary key(more_info_id);

