--  SQL Commands
-- Types of SQL Commands
-- 1. DDL (Data Definition Language)
-- They used to define, create, modify and delete database structure. 
-- Examples are CREATE, ALTER, DROP, TRUNCATE

-- 2. DML (Data Manipulation Language)
-- This is used to insert, update and retrieve data in  a database;
-- Examples INSERT, UPDATE, DELETE and SELECT


create database amoo;
use amoo;
create table patients(
patient_id int,
first_name varchar(50),
last_name varchar(50),
date_of_birth date,
gender char(1),
phone varchar(50),
email varchar(50),
blood_group varchar(50)
);
select * from patients;
-- alter table
alter table patients rename column phone to phone_number;
select * from patients;
describe patients;
alter table patients modify column gender varchar(50);
describe patients;

insert into patients values
(1, "Aisha","Adebayo","1998-04-12","F", "+2348063362208", "aisha_adebayo@gmail.com", "O+"),
(2, "Muideen","Adeleke","2004-04-12","F", "+2348134324967", "muideen_adeleke@gmail.com", "O-"),
(3, "John","Mathew","1984-09-09","M", "+2348056465627", "mathew2234@gmail.com", "AB+"),
(4, "Ajayi","Micheal","2005-08-22","M", "+234802314242", "mikeajayi@gmail.com", "A");

select * from patients;
-- truncate table patients;
set sql_safe_updates = 0;
-- delete from patients;
select * from patients;
delete from patients where patient_id = 4;
select * from patients;
-- update
update patients set first_name="Francisca" where patient_id =1; 
update patients set last_name="Ogaram" where patient_id =1;

-- write sql query to dislpay patient first_name and phone number
select first_name, phone_number from patients;

-- Inbuild in SQL
-- function is a piece of code that can be used to perform a specific tasks
-- Numerical Function
select round(56.7826,2);
select round(56.7826,1);
select round(56.7826);
select round(56);
select round(56.7826) as RoundingNumber;
select round(56.7826) RoundingMe;
-- rand()
select rand() as RandomNumber;
select rand()*100 as RandumberNo;
select round(rand()*100) as RandumberNo;
select round(rand()*1000000000000) as RandumberNo;
-- truncate()
select truncate(6.54627272,2) as TruncateValue;
select truncate(6.54627272,4) as TruncateValue;
-- floor()
select floor(56.4656) as FloorValue;
select floor(5.3) as FloorValue;
select floor(5.7) as FloorValue;
-- ceil()
select ceil(56.4656) as ceilValue;
select ceil(5.3) as ceilValue;

-- string functions
-- concat()
select concat("Muideen", "Olawale") as ConcatMe;
select concat("Muideen", " ", "Olawale") as ConcatMe;
select * from patients;
select concat(first_name, " ", last_name) as FullName from patients;
select * from patients;
select patient_id, first_name, last_name, concat(first_name, " ", last_name) as "Full Name", gender from patients;
-- upper()
select upper("muideen olawale") as UpperLetter;
-- lower()
select lower("MUIDEEN AKINROYE") as UpperLetter;
-- substring()
select substr("Muideen",3,3) as substringPart;
select substr("Education",6,4) as substringPart;
select substr(first_name,1,1) as Initial from patients;
select concat(substr(first_name,1,1),".") as Initial from patients;
select substr("Aptech Computer Education",1,1) as Initial from patients;







