--LeetCode 602 Friend Requests II: Who Has Most Friend

create table request_accepted
(
requester_id int,
accepter_id int,
accept_date date
)
 
insert into request_accepted values(1,2,'2016-06-03')
insert into request_accepted values(1,3,'2016-06-08')
insert into request_accepted values(2,3,'2016-06-08')
insert into request_accepted values(3,4,'2016-06-09')


-- solution
select t.id, count(t.id) as num from 
(select requester_id as id from request_accepted
 union ALL 
 select accepter_id as id from request_accepted) as t
 group by t.accepter_id
 order by num Desc limit 1;

 --union all: link requester_id and accepter_id
 -- group by and count 
