-- LeetCode：626. Exchange Seats

Create table If Not Exists seat(id int, studentvarchar(255));
Truncate table seat;
insert into seat (id, student) values ('1','Abbot');
insert into seat (id, student) values ('2','Doris');
insert into seat (id, student) values ('3','Emerson');
insert into seat (id, student) values ('4','Green');
insert into seat (id, student) values ('5','Jeames');
--------------------- 

--set-
UPDATE seat
set id = id where (id = max(id))
set id = id + 1 where (id != max(id)) and (id % 2 = 1)
set id = id - 1 where (id != max(id)) and (id % 2 = 1)
order by id;

-- case
select (CASE
        when mod( id, 2) = 1 and id != max(id) then id +1
        when mod( id, 2) = 1 and id = max(id) then id
        else id -1 end
        ) as id , student
        from seat
order by id;