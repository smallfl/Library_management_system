/*
 Navicat Premium Data Transfer

 Source Server         : 01
 Source Server Type    : MySQL
 Source Server Version : 80400
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80400
 File Encoding         : 65001

 Date: 27/05/2024 14:53:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `admin_id` bigint NOT NULL,
  `password` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `username` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `power` int NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (123456, '123456', 'admin', 0);

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `book_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `author` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `publish` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `ISBN` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `introduction` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `language` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` double(10, 2) NOT NULL,
  `pub_date` date NOT NULL,
  `class_id` int NULL DEFAULT NULL,
  `number` int NULL DEFAULT NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (2, '三生三世 十里桃花', '唐七公子 ', '沈阳出版社', '9787544138000', '三生三世，她和他，是否注定背负一段纠缠的姻缘？三生三世，她和他，是否终能互许一个生生世世的承诺？', '中文', 26.80, '2024-05-10', 7, 11);
INSERT INTO `book_info` VALUES (3, '何以笙箫默', '顾漫 ', '朝华出版社', '9787505414709', '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表达的他终于使她在一次伤心之下远走他乡……', '中文', 15.00, '2007-04-03', 7, 3);
INSERT INTO `book_info` VALUES (4, '11处特工皇妃', '潇湘冬儿', '江苏文艺出版社', '9787539943893', '《11处特工皇妃(套装上中下册)》内容简介：她是国安局军情十一处惊才绝艳的王牌军师——收集情报、策划部署、进不友好国家布置暗杀任务……她运筹帷幄之中，决胜于千里之外，堪称军情局大厦的定海神针。', '中文', 74.80, '2011-05-05', 7, 7);
INSERT INTO `book_info` VALUES (6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中文', 358.20, '2009-04-06', 11, 1);
INSERT INTO `book_info` VALUES (7, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768', '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。', '英文', 88.00, '2003-08-05', 6, 12);
INSERT INTO `book_info` VALUES (8, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265', '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。', '中文', 99.80, '2024-05-15', 9, 7);
INSERT INTO `book_info` VALUES (9, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608', '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。', '中文', 60.00, '2016-01-01', 9, 6);
INSERT INTO `book_info` VALUES (10, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中文', 39.50, '2017-06-01', 9, 9);
INSERT INTO `book_info` VALUES (11, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745', '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。', '中文', 35.00, '2017-05-01', 9, 7);
INSERT INTO `book_info` VALUES (12, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777', '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。', '中文', 26.00, '2007-01-01', 9, 7);

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info`  (
  `class_id` int NOT NULL,
  `class_name` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES (1, '马克思主义');
INSERT INTO `class_info` VALUES (2, '哲学');
INSERT INTO `class_info` VALUES (3, '社会科学总论');
INSERT INTO `class_info` VALUES (4, '政治法律');
INSERT INTO `class_info` VALUES (5, '军事');
INSERT INTO `class_info` VALUES (6, '经济');
INSERT INTO `class_info` VALUES (7, '文化');
INSERT INTO `class_info` VALUES (8, '语言');
INSERT INTO `class_info` VALUES (9, '文学');
INSERT INTO `class_info` VALUES (10, '艺术');
INSERT INTO `class_info` VALUES (11, '历史地理');
INSERT INTO `class_info` VALUES (12, '自然科学总论');
INSERT INTO `class_info` VALUES (13, ' 数理科学和化学');
INSERT INTO `class_info` VALUES (14, '天文学、地球科学');
INSERT INTO `class_info` VALUES (15, '生物科学');
INSERT INTO `class_info` VALUES (16, '医药、卫生');
INSERT INTO `class_info` VALUES (17, '农业科学');
INSERT INTO `class_info` VALUES (18, '工业技术');
INSERT INTO `class_info` VALUES (19, '交通运输');
INSERT INTO `class_info` VALUES (20, '航空、航天');
INSERT INTO `class_info` VALUES (21, '环境科学');
INSERT INTO `class_info` VALUES (22, '综合');

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list`  (
  `ser_num` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `reader_id` bigint NOT NULL,
  `lend_date` date NULL DEFAULT NULL,
  `back_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`ser_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
INSERT INTO `lend_list` VALUES (1, 1, 10000, '2017-03-15', '2017-06-16');
INSERT INTO `lend_list` VALUES (2, 2, 10001, '2017-06-10', '2017-09-02');
INSERT INTO `lend_list` VALUES (3, 3, 10003, '2017-06-12', '2017-09-02');
INSERT INTO `lend_list` VALUES (4, 4, 10000, '2017-03-15', '2017-09-03');
INSERT INTO `lend_list` VALUES (5, 5, 10002, '2017-06-15', '2024-05-22');
INSERT INTO `lend_list` VALUES (6, 6, 10000, '2017-06-15', '2024-05-13');
INSERT INTO `lend_list` VALUES (8, 7, 10000, '2024-05-23', '2024-05-23');
INSERT INTO `lend_list` VALUES (9, 9, 10000, '2024-05-23', NULL);

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card`  (
  `reader_id` bigint NOT NULL,
  `username` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `power` int NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
INSERT INTO `reader_card` VALUES (10000, '张华', '123456', 1);
INSERT INTO `reader_card` VALUES (10001, '王小伟', '123456', 1);
INSERT INTO `reader_card` VALUES (10002, '王莞尔', '123456', 1);
INSERT INTO `reader_card` VALUES (10003, '张明华', '123456', 1);
INSERT INTO `reader_card` VALUES (10004, '李一琛', '123456', 1);
INSERT INTO `reader_card` VALUES (10005, '李二飞', '123456', 1);

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info`  (
  `reader_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `birth` date NOT NULL,
  `address` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10005 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
INSERT INTO `reader_info` VALUES (10000, '张华三', '男', '2024-05-20', '北京市', '12345678911');
INSERT INTO `reader_info` VALUES (10001, '张华三', '男', '2024-05-20', '北京市', '12345678911');
INSERT INTO `reader_info` VALUES (10002, '张华三', '男', '2024-05-20', '北京市', '12345678911');
INSERT INTO `reader_info` VALUES (10003, '张华三', '男', '2024-05-20', '北京市', '12345678911');
INSERT INTO `reader_info` VALUES (10004, '张华三', '男', '2024-05-20', '北京市', '12345678911');
INSERT INTO `reader_info` VALUES (10005, '张华三', '男', '2024-05-20', '北京市', '12345678911');

SET FOREIGN_KEY_CHECKS = 1;
