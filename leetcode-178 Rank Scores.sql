--LeetCode 178. Rank Scores

Create table If Not Exists Scores (Id int,Score DECIMAL(3,2));
Truncate table Scores;
insert into Scores (Id, Score) values ('1','3.5');
insert into Scores (Id, Score) values ('2','3.65');
insert into Scores (Id, Score) values ('3','4.0');
insert into Scores (Id, Score) values ('4','3.85');
insert into Scores (Id, Score) values ('5','4.0');
insert into Scores (Id, Score) values ('6','3.65');


Select Score, (select count(distinct Score) from Score where Score >= s.Score) Rank
from Score s order by Score Desc;
-- Rank: the count of score larger than the current one

