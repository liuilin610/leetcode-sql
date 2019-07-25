--leetcode 183. Customers Who Never Order
Create table If Not Exists Customers (Idint, Name varchar(255));
Create table If Not Exists Orders (Id int,CustomerId int);
Truncate table Customers;
insert into Customers (Id, Name) values('1', 'Joe');
insert into Customers (Id, Name) values('2', 'Henry');
insert into Customers (Id, Name) values('3', 'Sam');
insert into Customers (Id, Name) values('4', 'Max');
Truncate table Orders;
insert into Orders (Id, CustomerId) values('1', '3');
insert into Orders (Id, CustomerId) values('2', '1');

-- join and find Null
select c.name as Customers from Customers c
left join orders o on o.CustomerId = c.Id
where o.CustomerId is null

--exist
select c.name as Customers 
from Customers c
where not exists (select * from Orders o where o.customerId = c.id)

