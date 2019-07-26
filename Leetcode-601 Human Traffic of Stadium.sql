--LeetCode 601. Human Traffic of Stadium 

Create table If Not Exists stadium (id int,date DATE NULL, people int);
Truncate table stadium;
insert into stadium (id, date, people) values('1', '2017-01-01', '10');
insert into stadium (id, date, people) values('2', '2017-01-02', '109');
insert into stadium (id, date, people) values('3', '2017-01-03', '150');
insert into stadium (id, date, people) values('4', '2017-01-04', '99');
insert into stadium (id, date, people) values('5', '2017-01-05', '145');
insert into stadium (id, date, people) values('6', '2017-01-06', '1455');
insert into stadium (id, date, people) values('7', '2017-01-07', '199');
insert into stadium (id, date, people) values('8', '2017-01-08', '188'); 

-- how to count continuous three day info
-- s1.Id-s2.Id = 1, s2.Id -s3.Id =1
-- s3.Id-s2.Id = 1, s2.Id -s1.Id =1

select distinct s1.*from 
stadium as s1, stadium as s2, stadium s3
where s1.people >= 100 and s2.people > = 100 and s3.people > = 100
and (
    (s1.Id- s2.Id = 1 and s2.Id- s3.Id =1)
    or
    (s2.Id- s1.Id = 1 and s1.Id- s3.Id =1)
    or
    (s1.Id- s3.Id = 1 and s3.Id- s2.Id =1)
) order by s1.id;