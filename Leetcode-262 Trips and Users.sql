--Leetcode 262 Trips and Users

Create table If Not Exists Trips (Id int,Client_Id int, Driver_Id int, City_Id int, Status ENUM('completed','cancelled_by_driver', 'cancelled_by_client'), Request_at varchar(50));
Create table If Not Exists Users (Users_Id int,Banned varchar(50), Role ENUM('client', 'driver', 'partner'));
Truncate table Trips;
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('1', '1', '10', '1', 'completed','2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('2', '2', '11', '1','cancelled_by_driver', '2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('3', '3', '12', '6', 'completed','2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('4', '4', '13', '6','cancelled_by_client', '2013-10-01');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('5', '1', '10', '1', 'completed','2013-10-02');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('6', '2', '11', '6', 'completed','2013-10-02');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('7', '3', '12', '6', 'completed','2013-10-02');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('8', '2', '12', '12', 'completed','2013-10-03');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('9', '3', '10', '12', 'completed','2013-10-03');
insert into Trips (Id, Client_Id, Driver_Id,City_Id, Status, Request_at) values ('10', '4', '13', '12','cancelled_by_driver', '2013-10-03');
Truncate table Users;
insert into Users (Users_Id, Banned, Role)values ('1', 'No', 'client');
insert into Users (Users_Id, Banned, Role)values ('2', 'Yes', 'client');
insert into Users (Users_Id, Banned, Role)values ('3', 'No', 'client');
insert into Users (Users_Id, Banned, Role)values ('4', 'No', 'client');
insert into Users (Users_Id, Banned, Role)values ('10', 'No', 'driver');
insert into Users (Users_Id, Banned, Role)values ('11', 'No', 'driver');
insert into Users (Users_Id, Banned, Role)values ('12', 'No', 'driver');
insert into Users (Users_Id, Banned, Role)values ('13', 'No', 'driver');


--join on 
Select t.Request_at Day, Round(Sum(Case When t.Status Like 'cancelled%' Then 1 Else 0 end)/Count(*), 2) as 'Cancellation Rate'
From Trips t Join Users u On t.Client_Id = u.users_Id and u.Banned = 'No'
Where t.Request_at Between '2013-10-01' and '2013-10-03' group by t.request_at;

-- where
select Request_at Day, Round(Count(If(Status !='completed', True, Null))/ count(*), 2) as 'Cancellation Rate'
From Trips where (Request_at Between '2013-10-01' and '2013-10-03') And Client_Id IN
(Select Users_Id from Users where Banned = 'No') Group By Request_at;