--LeetCode 595 Big Countries


-- ----------------------------
-- Table structure for `world`
-- ----------------------------
DROP TABLE IF EXISTS `world`;
CREATE TABLE `world` (
  `name`varchar(255) DEFAULT NULL,
 `continent` varchar(255) DEFAULT NULL,
  `area`int(11) DEFAULT NULL,
 `population` int(11) DEFAULT NULL,
  `gdp`varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of world
-- ----------------------------
INSERT INTO `world` VALUES ('Afghanistan','Asia', '652230', '25500100', '20343000000');
INSERT INTO `world` VALUES ('Albania','Europe', '28748', '2831741', '12960000000');
INSERT INTO `world` VALUES ('Algeria','Africa', '2381741', '37100000', '188681000000');
INSERT INTO `world` VALUES ('Andorra','Europe', '468', '78115', '3712000000');
INSERT INTO `world` VALUES ('Angola', 'Africa','1246700', '20609294', '100990000000');

--
select name, population, area from world where area > 3000000 or population > 25000000;