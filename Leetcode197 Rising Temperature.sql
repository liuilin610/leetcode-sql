--leetcode 197 Rising Temperature
-- ----------------------------
-- Table structure for `weather`
-- ----------------------------
DROP TABLE IF EXISTS `weather`;
CREATE TABLE `weather` (
 `Id` int(11) DEFAULT NULL,
 `RecordDate` date DEFAULT NULL,
 `Temperature` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of weather
-- ----------------------------
INSERT INTO `weather` VALUES ('1','2015-01-01', '10');
INSERT INTO `weather` VALUES ('2','2015-01-02', '25');
INSERT INTO `weather` VALUES ('3','2015-01-03', '20');
INSERT INTO `weather` VALUES ('4','2015-01-04', '30');
--------------------- 

-- where 
select w1.Id from Weather w1, weather w2
where TO_DayS(w1.Date) = TO_DayS(w2.Date) +1 and w1.Temperature > w2.Temperature;

--inner join on
select w1.Id from Weather w1 inner join Weather w2
on TO_DAYS(w1.Date) = TO_DAYS(w2.Date) +1 and w1.Temperature > w2.Temperature