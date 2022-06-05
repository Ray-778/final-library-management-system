SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
                         `admin_id` bigint NOT NULL,
                         `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                         `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                         PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES (123456, '123456', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info` (
                             `book_id` bigint NOT NULL AUTO_INCREMENT,
                             `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `author` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `publish` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `ISBN` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci,
                             `language` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                             `price` decimal(10,2) NOT NULL,
                             `pub_date` date NOT NULL,
                             `class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                             `lend_num` int DEFAULT NULL,
                             `number` int DEFAULT NULL,
                             PRIMARY KEY (`book_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of book_info
-- ----------------------------
BEGIN;
INSERT INTO `book_info` VALUES (1, '计算机制全息图', '金国藩 ', '科学出版社', '9787030647146', '本书系统介绍了计算全息的基础理论和关键技术, 主要内容可以分为三大部分, 先介绍了计算全息的基础理论, 包括全息术与计算全息的发展、采样理论、光波的数学描述以及标量衍射的计算等内容 ; 其次介绍了计算全息的编码方法, 着重讨论了将空间复数信号变换为计算全息图的波前调制函数的相关技术 ; 最后, 重点介绍了计算全息的三个典型应用领域: 干涉检测、三维显示及波前调控, 并对相关技术进行了详细的讨论。', '中文', 35.00, '2019-02-04', '计算机类', 20, 10);
INSERT INTO `book_info` VALUES (2, 'Java EE框架整合开发入门到实践', '陈恒', '清华大学出版社', '9787302502968', '详细讲解了Java EE中Spring、Spring MVC和MyBatis三大框架（SSM）的基础知识和实际应用。为了更好地帮助读者学习SSM框架，本书以大量案例介绍了SSM框架的基本思想、方法和技术。', '中文', 69.80, '2018-09-01', '计算机类', 29, 1);
INSERT INTO `book_info` VALUES (3, 'C++语言导学', '本贾尼·斯特劳斯特鲁普', '机械工业出版社', '9787111633280', '在本书中，作者通过介绍编程风格（例如面向对象编程和泛型编程）引出支持它们的C++特性。从基本特性开始，延伸到更宽范围的进阶主题，包括很多C++17新特性，例如移动语义、一致初始化、lambda表达式、改进的容器、随机数以及并发。本书非常全面，甚至包含一些为C++20提出的扩展，例如概念和模块。本书最后讨论了C++语言的设计和演化。', '中文', 23.00, '2018-04-01', '计算机类', 29, 1);
INSERT INTO `book_info` VALUES (4, '计算机网络', '谢希仁', '电子工业出版社', '9787121302954', '本书的特点是概念准确、论述严谨、内容新颖、图文并茂、突出进本原理和基本概念的阐述，同时力图反应计算机网络的一些最新发展。本书可供电气信息类和计算机类专业大学本科生和研究生使用。', '中文', 49.00, '2017-07-03', '计算机类', 18, 12);
INSERT INTO `book_info` VALUES (5, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357', '十万年前，地球上至少有六种不同的人\r\n但今日，世界舞台为什么只剩下了我们自己？\r\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\r\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\r\n从认知革命、农业革命，到科学革命、生物科技革命，\r\n我们如何登上世界舞台成为万物之灵的？\r\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\r\n从帝国主义、资本主义，到自由主义、消费主义，\r\n从兽欲，到物欲，从兽性、人性，到神性，\r\n我们了解自己吗？我们过得更快乐吗？\r\n我们究竟希望自己得到什么、变成什么？', '英文', 68.00, '2014-11-01', '文学类', 29, 1);
INSERT INTO `book_info` VALUES (6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中文', 358.20, '2009-04-06', '历史类', 30, 0);
INSERT INTO `book_info` VALUES (7, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768', '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。', '英文', 88.00, '2003-08-05', '经济类', 29, 1);
INSERT INTO `book_info` VALUES (8, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265', '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。', '中文', 99.80, '2017-04-01', '文学类', 29, 1);
INSERT INTO `book_info` VALUES (9, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608', '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。', '中文', 60.00, '2016-01-01', '文学类', 30, 0);
INSERT INTO `book_info` VALUES (10, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中文', 39.50, '2017-06-01', '文学类', 29, 1);
INSERT INTO `book_info` VALUES (11, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745', '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。', '中文', 35.00, '2017-05-01', '文学类', 29, 1);
INSERT INTO `book_info` VALUES (12, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777', '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。', '中文', 26.00, '2007-01-01', '文学类', 29, 1);
INSERT INTO `book_info` VALUES (13, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734', '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', '中文', 12.00, '2003-01-01', '文学类', 30, 0);
INSERT INTO `book_info` VALUES (14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', '中文', 42.00, '2015-06-01', '文学类', 28, 2);
INSERT INTO `book_info` VALUES (15, 'Java软件开发技术', '赖敏 ', '清华大学出版社 ', '9787302518990', '本书核心内容包括Java语言基础，Java数组与字符串，Java类与对象的所有知识点，继承的相关知识点，Java图形用户界面设计，Java异常处理机制，Java常用的类，Java输入输出及文件操作，Java集合框架，Java多线程，Java网络编程。', '中文', 42.00, '2015-06-01', '计算机类', 28, 2);
INSERT INTO `book_info` VALUES (16, 'C/C++程序设计教程', '郑秋生', '电子工业出版社  ', '9787121330476', '	本书阐述了C++语言中面向对象程序设计的语言和思想，内容包括：类和对象、继承与派生、多态性、输入/输出流、异常处理、模板、标准模板库STL的介绍及应用等。', '中文', 42.00, '2015-06-01', '计算机类', 28, 2);
INSERT INTO `book_info` VALUES (17, 'Java EE程序设计 ', '郝玉龙 ', '清华大学出版社   ', '9787302507352 ', '本书对JavaEE8程序设计技术进行了系统讲解。首先对JavaEE体系结构进行概述,介绍JavaEE产生的背景、JavaEE的定义、编程思想、技术框架等,然后指导读者基于Netbeans+GlassfishServer搭建JavaEE开发环境,随后以JavaEE企业应用的表现层、业务逻辑层和数据持久化层的程序设计任务为主线,由浅入深地讲解各个应用层次开发相关的组件技术、服务技术、通信技术和架构技术等,覆盖了对JavaEE8规范的最新功能特性,包括Servlet4.0、JSF2.3、EJB3.2、JPA2.2、CDI2.0、Websocket1.1、BeanValidation2.0、JAX-RS2.1、JSON-P1.1和JSON-B1.0等的讲解演示。', '中文', 42.00, '2015-06-01', '计算机类', 29, 1);
INSERT INTO `book_info` VALUES (19, '计算机组成原理', '肖铁军 ', '清华大学出版社 ', '9787302394013 ', '本书系统介绍了计算机的基本组成、基本原理和基本分析方法。本书共分九章, 分别是信息表示、逻辑电路基础、计算机系统概述、运算方法与运算器、存储器与存储体系、指令系统、控制器与中央处理器、输入输出系统和系统总线, 讲述计算机从部件到整机的组织结构和工作原理。', '中文', 39.90, '2021-05-31', '计算机类', 30, 0);
INSERT INTO `book_info` VALUES (20, '计算机基础 ', '宋广军 ', '清华大学出版社 ', '9787302534518 ', '本书内容包括：信息与计算机的基础知识、Windows 7操作系统的基本操作和使用知识、Word 2010文字处理软件的基本知识、Excel 2010电子表格处理软件的基本知识、PowerPoint 2010文档演示软件的基本知识、计算机网络和Internet的基础知识以及网页制作的基本知识、Access 2010数据库管理软件的基本知识、微机的组装与维护基本知识。', '中文', 56.30, '2019-01-24', '计算机类', NULL, 29);
COMMIT;

-- ----------------------------
-- Table structure for lend_list
-- ----------------------------
DROP TABLE IF EXISTS `lend_list`;
CREATE TABLE `lend_list` (
                             `ser_num` bigint NOT NULL AUTO_INCREMENT,
                             `book_id` bigint NOT NULL,
                             `reader_id` bigint NOT NULL,
                             `lend_date` date DEFAULT NULL,
                             `due_date` date DEFAULT NULL,
                             `back_date` date DEFAULT NULL,
                             `djs` int DEFAULT NULL,
                             `fine` double DEFAULT NULL,
                             `back` int DEFAULT NULL,
                             PRIMARY KEY (`ser_num`) USING BTREE,
                             KEY `book_id` (`book_id`) USING BTREE,
                             KEY `reader_id` (`reader_id`) USING BTREE,
                             CONSTRAINT `lend_list_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book_info` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
                             CONSTRAINT `lend_list_ibfk_2` FOREIGN KEY (`reader_id`) REFERENCES `reader_card` (`reader_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lend_list
-- ----------------------------
BEGIN;
INSERT INTO `lend_list` VALUES (1, 1, 10000, '2017-03-15', '2017-04-15', '2017-03-29', 0, 0, 0);
INSERT INTO `lend_list` VALUES (2, 2, 10001, '2017-06-10', '2017-07-10', '2017-07-05', 0, 0, 0);
INSERT INTO `lend_list` VALUES (3, 3, 10003, '2017-06-12', '2017-07-12', '2017-07-01', 0, 0, 0);
INSERT INTO `lend_list` VALUES (4, 4, 10000, '2017-03-15', '2017-04-15', '2017-04-06', 0, 0, 0);
INSERT INTO `lend_list` VALUES (6, 6, 10000, '2017-06-15', '2017-07-15', '2021-06-18', 0, 0, 0);
INSERT INTO `lend_list` VALUES (7, 1, 10001, '2017-09-02', '2017-10-02', '2017-09-02', 0, 0, 0);
INSERT INTO `lend_list` VALUES (8, 4, 10000, '2021-06-18', '2021-07-18', '2021-06-18', 0, 0, 0);
INSERT INTO `lend_list` VALUES (9, 1, 10000, '2021-06-18', '2021-07-18', '2021-06-18', 0, 0, 0);
INSERT INTO `lend_list` VALUES (10, 1, 10000, '2021-06-19', '2021-07-19', '2021-06-21', 0, 0, 0);
INSERT INTO `lend_list` VALUES (11, 4, 10000, '2021-06-19', '2021-07-19', '2021-06-21', 0, 0, 0);
INSERT INTO `lend_list` VALUES (12, 2, 10000, '2021-06-19', '2021-07-19', '2021-06-21', 0, 0, 0);
INSERT INTO `lend_list` VALUES (13, 6, 10000, '2021-06-28', '2021-07-28', NULL, 13, 0, 0);
INSERT INTO `lend_list` VALUES (14, 6, 10000, '2021-06-17', '2021-07-17', NULL, 2, 0, 1);
INSERT INTO `lend_list` VALUES (15, 5, 10000, '2021-06-19', '2021-07-19', NULL, 4, 0, 0);
INSERT INTO `lend_list` VALUES (16, 14, 10000, '2021-04-16', '2021-05-16', '2021-06-19', 0, 1.7, 0);
INSERT INTO `lend_list` VALUES (17, 15, 10000, '2021-06-02', '2021-06-02', '2021-06-19', 0, 0.85, 0);
INSERT INTO `lend_list` VALUES (19, 17, 10000, '2021-06-08', '2021-07-08', '2021-06-21', 0, 0, 0);
INSERT INTO `lend_list` VALUES (20, 4, 10000, '2021-06-21', '2021-07-21', '2021-06-22', 0, 0, 0);
INSERT INTO `lend_list` VALUES (21, 4, 10000, '2021-06-19', '2021-07-19', NULL, 4, 0, 0);
INSERT INTO `lend_list` VALUES (22, 3, 10000, '2021-06-26', '2021-07-26', '2021-06-26', 0, NULL, 0);
INSERT INTO `lend_list` VALUES (23, 1, 10000, '2022-05-17', '2022-06-16', '2022-05-17', NULL, NULL, 0);
INSERT INTO `lend_list` VALUES (24, 1, 10000, '2022-05-17', '2022-06-16', '2022-05-17', NULL, NULL, 0);
INSERT INTO `lend_list` VALUES (25, 20, 10011, '2022-05-17', '2022-06-16', NULL, NULL, NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for reader_card
-- ----------------------------
DROP TABLE IF EXISTS `reader_card`;
CREATE TABLE `reader_card` (
                               `reader_id` bigint NOT NULL,
                               `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reader_card
-- ----------------------------
BEGIN;
INSERT INTO `reader_card` VALUES (10000, '张华', '123456');
INSERT INTO `reader_card` VALUES (10001, '王小伟', '123456');
INSERT INTO `reader_card` VALUES (10002, '王莞尔', '123456');
INSERT INTO `reader_card` VALUES (10003, '张明华', '123456');
INSERT INTO `reader_card` VALUES (10004, '李一琛', '123456');
INSERT INTO `reader_card` VALUES (10005, '李二飞', '123456');
INSERT INTO `reader_card` VALUES (10006, '安抚', '123456');
INSERT INTO `reader_card` VALUES (10007, 'avdsg', '123456');
INSERT INTO `reader_card` VALUES (10008, '芒果', '123456');
INSERT INTO `reader_card` VALUES (10009, '王宁', '123456');
INSERT INTO `reader_card` VALUES (10010, '高方', '123456');
INSERT INTO `reader_card` VALUES (10011, '二蛋', '123456');
COMMIT;

-- ----------------------------
-- Table structure for reader_info
-- ----------------------------
DROP TABLE IF EXISTS `reader_info`;
CREATE TABLE `reader_info` (
                               `reader_id` bigint unsigned NOT NULL AUTO_INCREMENT,
                               `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               `birth` date NOT NULL,
                               `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               `phone` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                               PRIMARY KEY (`reader_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10012 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reader_info
-- ----------------------------
BEGIN;
INSERT INTO `reader_info` VALUES (10000, '张华', '男', '1995-06-10', '天津市', '12345678900');
INSERT INTO `reader_info` VALUES (10001, '王小伟', '男', '1996-02-01', '北京市', '12345678909');
INSERT INTO `reader_info` VALUES (10002, '王莞尔', '女', '1995-04-15', '浙江省杭州市', '12345678908');
INSERT INTO `reader_info` VALUES (10003, '张明华', '男', '1996-08-29', '陕西省西安市', '12345678907');
INSERT INTO `reader_info` VALUES (10004, '李一琛', '男', '1996-01-01', '陕西省西安市', '15123659875');
INSERT INTO `reader_info` VALUES (10005, '李二飞', '男', '2021-06-21', '山东省青岛市', '15369874186');
INSERT INTO `reader_info` VALUES (10006, '安抚', '女', '2021-06-21', '河南省郑州市', '15978578486');
INSERT INTO `reader_info` VALUES (10007, 'avdsg', '女', '2021-06-03', '河南省郑州市', '19845896585');
INSERT INTO `reader_info` VALUES (10008, '芒果', '女', '2021-06-03', '河南省郑州市', '13589545896');
INSERT INTO `reader_info` VALUES (10009, '王宁', '女', '2000-02-23', '河南省郑州市', '16985725896');
INSERT INTO `reader_info` VALUES (10010, '高方', '男', '2001-01-01', '河南省郑州市', '15898758545');
INSERT INTO `reader_info` VALUES (10011, '二蛋', '男', '2022-05-03', 'd我大大', '13625928667');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                        `user_id` bigint NOT NULL,
                        `password` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
                        `username` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
                        PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
