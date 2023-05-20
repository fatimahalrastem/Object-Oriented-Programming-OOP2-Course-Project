create database cinemaSyt;
use cinemaSyt;
create table Empolyee(
Employee_ID numeric (20) not null primary key,
Job_Tiltl varchar(30),
Location varchar(30),
Salary numeric
);

create table Admin(
Emp_ID numeric (20) references Empolyee(Employee_ID) ,
Email varchar(30),
Admin_Name varchar(30),
Admin_pass varchar(20)
);

alter table Admin add primary key (Emp_ID, Admin_pass);

create table Movie(
Movie_Name varchar (40) not null primary key, 
Least_Age numeric(2),
Duration numeric (5),
Ratings numeric(30),
Emp_ID numeric(20) references Empolyee(Employee_ID)
);
create table Lounge(
Lounge_Num numeric not null primary key,
Total_capcity numeric (10) ,
 Movie_Name varchar (40)
);
create table Customer(
Cust_Email char (50) not null primary key,
age numeric(2),
Cust_pass varchar(20),cust_id numeric(20)
);
create table Dependent (
Emp_ID numeric (20) references Empolyee(Employee_ID) ,
Dep_Name varchar(10) not null,  
Dep_Age numeric(2), 
Dep_Relationship varchar(10)
);
create table Ticket (
Ticket_Num numeric(20) not null primary key,
Num_of_Seats varchar(10),
Cust_Email char (50) references Customer(Cust_Email),Movie_name varchar(20)
);
create table Enter (
Num_of_Seats varchar(10) references Ticket(Ticket_Num),
Movie_name varchar(20) references Movie(Movie_Name),
Lounge_Num char (50) references Lounge(Lounge_Num) 
);
alter table Dependent add primary key(Emp_ID,Dep_Name);
create table Sell(
Employee_ID numeric (20) references Empolyee(Employee_ID),
Ticket_Num numeric(20) references Ticket(Ticket_Num) 
);
alter table Sell add primary key(Employee_ID,Ticket_Num);
create table Custmer_Seats(
Num_of_Seats varchar(10) references Ticket(Num_of_Seats),
Cust_Email varchar (50) references Customer(Cust_Email) 
);
alter table Custmer_Seats add primary key(Num_of_Seats,Cust_Email);

insert into Empolyee values(1234,'CASHER','KSA',6000);
insert into Empolyee values(2233,'COUNTER','KSA',6500);
insert into Empolyee values(3344,'RECEPTIONIST','KSA',7000);

insert into Admin values(1234,'sarak33@gmail.com','Sara','200123');
insert into Admin values(2233,'danarkk1@gmail.com','Dana','020211');
insert into Admin values(3344,'Ranas2@gmail.com','Rana','100300');

insert into Movie values('Titanic',15,180,5,1234);
insert into Movie values('The Godfather',18,120,4,2233);
insert into Movie values('The Dark Night',15,120,3,3344);

insert into Lounge values(1,60,'Titanic');
insert into Lounge values(2,80,'The Godfather');
insert into Lounge values(3,100,'The Dark Night');

insert into Customer values('hesa352@hotmail.com',20,'dtsg14326',1);
insert into Customer values('fahadals@gmail.com',22,'ksjfg@333',2);
insert into Customer values('amal2001@gmail.com',25,'sosid#1234',3);

insert into Ticket values(1,'A2','hesa352@hotmail.com','The Godfather');
insert into Ticket values(2,'C4','fahadals@gmail.com','The Dark Night');
insert into Ticket values(3,'D8','amal2001@gmail.com','Titanic');

insert into Dependent values(1234,'Ahmed',18,'Brother');
insert into Dependent values(2233,'Khaled',55,'Father');
insert into Dependent values(3344,'Tala',28,'Sister');

insert into Sell values(1234,1);
insert into Sell values(2233,1);
insert into Sell values(3344,1);

insert into Custmer_Seats values('A2','hesa352@hotmail.com');
insert into Custmer_Seats values('C4','fahadals@gmail.com');
insert into Custmer_Seats values('D8','amal2001@gmail.com');





select * from Empolyee;
select Distinct * from Admin;
select * from Movie;
select * from Lounge;
select * from Customer;
select * from Ticket;
select * from Dependent;
select * from Sell;
select * from  Custmer_Seats;
