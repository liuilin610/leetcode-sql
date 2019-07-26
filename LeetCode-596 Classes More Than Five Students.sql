-- LeetCode 596 Classes More Than 5 Students
-- ----------------------------
-- Table structure for `courses`
-- ----------------------------
DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
 `student` varchar(255) DEFAULT NULL,
  `class`varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO `courses` VALUES ('A', 'Math');
INSERT INTO `courses` VALUES ('B', 'English');
INSERT INTO `courses` VALUES ('C', 'Math');
INSERT INTO `courses` VALUES ('D', 'Biology');
INSERT INTO `courses` VALUES ('E', 'Math');
INSERT INTO `courses` VALUES ('F', 'Computer');
INSERT INTO `courses` VALUES ('G', 'Math');
INSERT INTO `courses` VALUES ('H', 'Math');
INSERT INTO `courses` VALUES ('I', 'Math');
--------------------- 

select class from courses group by class having count(distinct student) > 5