--leetcode 176. Second Highest Salary

Create table If Not Exists Employee (Idint, Salary int);
Truncate table Employee;
insert into Employee (Id, Salary) values('1', '100');
insert into Employee (Id, Salary) values('2', '200');
insert into Employee (Id, Salary) values('3', '300');

select (select distinct Salary from Employee order by Desc limit 1, 1) as SecondHighestSalary
