--LeetCode 184. Department Top Salaries

Create table If Not Exists Employee (Idint, Name varchar(255), Salary int, DepartmentId int);
Create table If Not Exists Department (Idint, Name varchar(255));
Truncate table Employee;
insert into Employee (Id, Name, Salary,DepartmentId) values ('1', 'Joe', '70000', '1');
insert into Employee (Id, Name, Salary,DepartmentId) values ('2', 'Henry', '80000', '2');
insert into Employee (Id, Name, Salary,DepartmentId) values ('3', 'Sam', '60000', '2');
insert into Employee (Id, Name, Salary,DepartmentId) values ('4', 'Max', '90000', '1');
Truncate table Department;
insert into Department (Id, Name) values('1', 'IT');
insert into Department (Id, Name) values('2', 'Sales');

-- where 
select d.Name as Department, e1.Name as Employee, e1.Salary as Salary
from Employee e1, Department d
where e1.DepartmentId = d.Id and (e1.DepartmentId, e1.Salary) 
in (select max(Salary), DepartmentId from Employee group by DepartmentId)

-- inner join
select d.Name Department, e1.Nae Employee, e1.Salary Salary
from Employee e1
inner join Department d on e1.deparmentId = d.Id
where (select max(e1.salary) from Employee group by e1.DepartmentId)

--185. Department Top Three Salaries4