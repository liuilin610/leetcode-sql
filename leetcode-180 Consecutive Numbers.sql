--Leetcode 180. Consecutive Numbers 

Create table If Not Exists Logs (Id int,Num int);
Truncate table Logs;
insert into Logs (Id, Num) values ('1','1');
insert into Logs (Id, Num) values ('2','1');
insert into Logs (Id, Num) values ('3', '1');
insert into Logs (Id, Num) values ('4','2');
insert into Logs (Id, Num) values ('5','1');
insert into Logs (Id, Num) values ('6','2');
insert into Logs (Id, Num) values ('7','2');

select disctinct l1.Num as ConsecutiveNums
from Logs l1, Logs l2, Logs l3
where l1.Id = l2.Id-1 and l2.Id =l3.Id-1 and l1.Num =l2.Num and l2.Num =l3.Num
