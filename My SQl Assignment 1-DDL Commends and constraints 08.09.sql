Create database Employee;
Use Employee;

Create table department( 
Department_id int primary key auto_increment,
Department_name varchar(100) unique not null);

Create table Location( 
Location_id int primary key auto_increment,
Location varchar(30) unique not null);

Create table Employees(
employee_id int primary key auto_increment,
employee_name varchar(50) unique not null,
Gender char(1) not null,
constraint chk_gender check ( Gender IN ('M', 'F')),
Age Int check (Age >= 18),
hire_date date,
designation varchar(100),
Department_id int, 
Location_id int,
Salary decimal(10,2) default 0,
foreign key (Department_Id) references Department(Department_id), 
foreign key (Location_id) references Location(Location_id));

alter table employees add Email varchar(50);

alter table employees modify designation varchar(300);
alter table employees drop column age;
alter table employees rename column hire_date TO date_of_joining;

Rename table Department to Departments_Info;
Rename table Location to Locations;

Truncate table employees;
drop table employees;
drop database employee;



Create database Employee;
Use Employee;

Create table department( 
Department_id int primary key auto_increment,
Department_name varchar(100) unique not null);

Create table Location( 
Location_id int primary key auto_increment,
Location varchar(30) unique not null);

Create table Employees(
employee_id int primary key auto_increment,
employee_name varchar(50) unique not null,
Gender char(1) not null,
constraint chk_gender check ( Gender IN ('M', 'F')),
Age Int check (Age >= 18),
hire_date date,
designation varchar(100),
Department_id int, 
Location_id int,
Salary decimal(10,2) default 0,
foreign key (Department_Id) references Department(Department_id), 
foreign key (Location_id) references Location(Location_id));
