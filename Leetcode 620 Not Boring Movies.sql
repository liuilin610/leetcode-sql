-- Leetcode 620 Not Boring Movies

-- ----------------------------
-- Table structure for `cinema`
-- ----------------------------
DROP TABLE IF EXISTS `cinema`;
CREATE TABLE `cinema` (
  `id`int(11) NOT NULL,
  `movie`varchar(255) DEFAULT NULL,
 `description` varchar(255) DEFAULT NULL,
 `rating` float(2,1) DEFAULT NULL,
  PRIMARYKEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of cinema
-- ----------------------------
INSERT INTO `cinema` VALUES ('1', 'War', 'great3D', '8.9');
INSERT INTO `cinema` VALUES ('2', 'Science','fiction', '8.5');
INSERT INTO `cinema` VALUES ('3', 'irish','boring', '6.2');
INSERT INTO `cinema` VALUES ('4', 'Ice song','Fantacy', '8.6');
INSERT INTO `cinema` VALUES ('5', 'House card','Interesting', '9.1')
--------------------- 

select * from cinema where (description != 'boring') and (Id% 2 =1) 
order by rating desc;