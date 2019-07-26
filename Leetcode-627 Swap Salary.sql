-- Leetcode 627 Swap Salary

-- ----------------------------
-- Table structure for `salary`
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary` (
  `id`int(11) NOT NULL,
  `name`varchar(10) NOT NULL,
  `sex`varchar(10) NOT NULL,
 `salary` int(11) NOT NULL,
  PRIMARYKEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('1', 'A', 'm','2500');
INSERT INTO `salary` VALUES ('2', 'B', 'f','1500');
INSERT INTO `salary` VALUES ('3', 'C', 'm','5500');
INSERT INTO `salary` VALUES ('4', 'D', 'f','500');
--------------------- 

--if 
Update Salary set sex = if (sex = 'm', 'f', 'm');

--case when then else end
Update salary set sex = (case when sex = 'm' then 'f' else 'm' end)