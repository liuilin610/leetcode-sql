
--LeetCode--181. Employees Earning More Than Their Managers

Create table If Not Exists Employee (Idint, Name varchar(255), Salary int, ManagerId int);
Truncate table Employee;
insert into Employee (Id, Name, Salary,ManagerId) values ('1', 'Joe', '70000', '3');
insert into Employee (Id, Name, Salary,ManagerId) values ('2', 'Henry', '80000', '4');
insert into Employee (Id, Name, Salary,ManagerId) values ('3', 'Sam', '60000', Null);
insert into Employee (Id, Name, Salary,ManagerId) values ('4', 'Max', '90000', Null);

--join two table
select e1.name from Employee e1
join Employee e2 on e1.ManagerId = e2.Id
where e1.Salary > e2.Salary

--where
select e1.name from employee e1, Employee e2
where e1.ManagerId =e2.Id and e1.Salary > e2.Salary
