-- leetcode 196. Delete Duplicate Emails


-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
 `Id` int(11) DEFAULT NULL,
 `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES ('1','john@example.com');
INSERT INTO `person` VALUES ('2','bob@example.com');
INSERT INTO `person` VALUES ('3','john@example.com');
--------------------- 

--I
Delete p1 from Person p1, Person p2
where p1.Email = p2.Email and p1.Id > p2.Id;

--II
Delete p1 from Person p1 inner join Person p2
where p1.Email = p2.Email and p1.Id > p2.Id;

--III
Delete from p1 using Person p1 inner join Person p2
where p1.Email = p2.Email and p1.Id > p2.Id;

--IV
Delete from Person where ID
not in (select * from( select min(Id) from Person p group by Email) mindata);
