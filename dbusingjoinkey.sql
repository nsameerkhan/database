--join using tables
--customers table
create table customers1(cid int primary key,cusname varchar(50),cusphone varchar(50))
--order table
create table orders1(oid int primary key,cusid int foreign key references customers1(cid),product varchar(50),price varchar(50))
--insert customers table
insert into customers1 values(1,'sameerkhan',987)
insert into customers1 values(2,'andal',9876)
insert into customers1 values(3,'santhos',9875)
insert into customers1 values(4,'mohan',9874)
insert into customers1 values(5,'asraf',87654)
insert into customers1 values(6,'thalif',89786)
select * from customers1
--insert orders
insert into orders1 values(1,1,'pencil',10)
insert into orders1 values(2,1,'pen',10)
insert into orders1 values(3,2,'pencil',10)
insert into orders1 values(4,2,'pen',10)
insert into orders1 values(5,3,'pencil',10)
insert into orders1 values(6,4,'pen',10)



select * from orders1
--cross join
select * from customers1 c cross join orders1 o
--cross join no keywords
select * from customers1,orders1
--cross join with condition (a inner join)
select * from customers1 c cross join orders1 o where c.cid=o.cusid
--a simple inner join
select * from customers1 join orders1 on customers1.cid=orders1.cusid
--another way for inner join without using join key
select * from customers1,orders1 where customers1.cid=orders1.cusid
--another way to inner join
select * from customers1 c inner join orders1 o on c.cid=o.cusid
--show only selected column using join
--
--full join
select * from customers1 c full join orders1 o on c.cid=o.cusid
--full join left to right
select * from customers1 c full join orders1 o on c.cid=o.cusid where o.oid is null
--full join right to left
select * from  orders1 o full join customers1 c on o.cusid=c.cid where c.cid is null
