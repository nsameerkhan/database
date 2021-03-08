create table employee1(empid int primary key not null,empname varchar(50) not null,empage int)
insert into employee1 values(1,'sameer',22)
insert into employee1 values(2,'andal',22)
insert into employee1 values(3,'santhos',21)
select * from employee1
create table students1(studid int identity(1,1) not null primary key,studname varchar(50),studage int)
insert into students1 values('khan',22)
insert into students1 values('santhini',22)
insert into students1 values('sandy',21)
insert into students1(studname) values('NSK')
select * from students1
create table customer(cusid int primary key not null,cusname varchar(50) not null,cusphoneno varchar(50),cusdob date)
insert into customer values(1,'vicky','12345','19900202')
insert into customer values(2,'mani','12678','19970311')
insert into customer(cusid,cusname,cusdob)values(3,'asraf','19970614')
select * from customer
--multiple primary key
create table studentmark(studid int not null,examtype varchar(50) not null,examyear varchar(50) not null,mark int,primary key(studid,examtype,examyear))
--constraints
create table cars(carid varchar(50) not null primary key,carcolor varchar(50) not null default 'white',carprice int not null check(carprice>10000),regno varchar(50) not null unique)
insert into cars values(1,'red',15000,'123')
insert into cars(carid,carprice,regno) values (2,20000,'321')
insert into cars values(3,'black',77777,'143')
update cars set carprice=50000 where carid=2;
select * from cars
delete from cars where carid=3;
select * from cars



