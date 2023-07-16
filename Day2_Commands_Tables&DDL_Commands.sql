create database if not exists temp_db;

use temp_db;

show databases;

# create a new table
create table if not exists `students data` (
roll_no bigint primary key,
name varchar(20),
age int,
gender char(1),
hobbies varchar(50)
);

drop database tem_db;



#truncate an existing table
use companydb;

SELECT 
    *
FROM
    works_on;

truncate works_on;

SELECT 
    *
FROM
    works_on;

# drop table

drop table works_on;

# alter table

use temp_db;

# add new column

alter table `students data`
add column hometown varchar(10) 
after age;


alter table `students data`
add column(
emergency_contact varchar(20),
address varchar (30)
);

# change column datatype
alter table `students data`
modify address varchar(50);

# rename a column
alter table `students data`
change column emergency_contact contact varchar(10);

# rename a table
alter table `students data`
rename to student;