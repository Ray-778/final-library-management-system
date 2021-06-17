CREATE DATABASE library;
USE library;

SET NAMES utf8;
START TRANSACTION;
CREATE TABLE `admin` ( `admin_id` BIGINT NOT NULL PRIMARY KEY, `password` VARCHAR ( 15 ) NOT NULL, `username` VARCHAR ( 15 ) DEFAULT NULL ) ENGINE = INNODB DEFAULT CHARSET = utf8;
INSERT INTO `admin`
VALUES
	( 123456, '123456', 'admin' );
CREATE TABLE `class_info` ( `class_id` INT NOT NULL PRIMARY KEY, `class_name` VARCHAR ( 15 ) NOT NULL ) ENGINE = INNODB DEFAULT CHARSET = utf8;
INSERT INTO `class_info`
VALUES
	( 1, '马克思主义' ),
	( 2, '哲学' ),
	( 3, '社会科学总论' ),
	( 4, '政治法律' ),
	( 5, '军事' ),
	( 6, '经济' ),
	( 7, '文化' ),
	( 8, '语言' ),
	( 9, '文学' ),
	( 10, '艺术' ),
	( 11, '历史地理' ),
	( 12, '自然科学总论' ),
	( 13, '数理科学和化学' ),
	( 14, '天文学、地球科学' ),
	( 15, '生物科学' ),
	( 16, '医药、卫生' ),
	( 17, '农业科学' ),
	( 18, '工业技术' ),
	( 19, '交通运输' ),
	( 20, '航空、航天' ),
	( 21, '环境科学' ),
	( 22, '综合' );
CREATE TABLE `book_info` (
	`book_id` BIGINT NOT NULL PRIMARY KEY,
	`name` VARCHAR ( 20 ) NOT NULL,
	`author` VARCHAR ( 15 ) NOT NULL,
	`publish` VARCHAR ( 20 ) NOT NULL,
	`ISBN` VARCHAR ( 15 ) NOT NULL,
	`introduction` text,
	`language` VARCHAR ( 4 ) NOT NULL,
	`price` DECIMAL ( 10, 2 ) NOT NULL,
	`pub_date` date NOT NULL,
	`class_name` VARCHAR (255)DEFAULT NULL,
	`number` INT DEFAULT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `book_info` MODIFY `book_id` BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1;
INSERT INTO `book_info`
VALUES
	( 1, '计算机制全息图', '金国藩 ', '科学出版社', '9787030647146', '本书系统介绍了计算全息的基础理论和关键技术, 主要内容可以分为三大部分, 先介绍了计算全息的基础理论, 包括全息术与计算全息的发展、采样理论、光波的数学描述以及标量衍射的计算等内容 ; 其次介绍了计算全息的编码方法, 着重讨论了将空间复数信号变换为计算全息图的波前调制函数的相关技术 ; 最后, 重点介绍了计算全息的三个典型应用领域: 干涉检测、三维显示及波前调控, 并对相关技术进行了详细的讨论。', '中文', '35.00', '2017-06-01', '计算机类', 10 ),
	( 2, 'Java EE框架整合开发入门到实践', '陈恒', '清华大学出版社', '9787302502968', '详细讲解了Java EE中Spring、Spring MVC和MyBatis三大框架（SSM）的基础知识和实际应用。为了更好地帮助读者学习SSM框架，本书以大量案例介绍了SSM框架的基本思想、方法和技术。', '中文', '69.80', '2018-09-01', '计算机类', 1 ),
	( 3, 'C++语言导学', '本贾尼·斯特劳斯特鲁普', '机械工业出版社', '9787111633280', '在本书中，作者通过介绍编程风格（例如面向对象编程和泛型编程）引出支持它们的C++特性。从基本特性开始，延伸到更宽范围的进阶主题，包括很多C++17新特性，例如移动语义、一致初始化、lambda表达式、改进的容器、随机数以及并发。本书非常全面，甚至包含一些为C++20提出的扩展，例如概念和模块。本书最后讨论了C++语言的设计和演化。', '中文', '23.00', '2018-04-01', '计算机类', 1 ),
	( 4, '计算机网络', '谢希仁', '电子工业出版社', '9787121302954', '本书的特点是概念准确、论述严谨、内容新颖、图文并茂、突出进本原理和基本概念的阐述，同时力图反应计算机网络的一些最新发展。本书可供电气信息类和计算机类专业大学本科生和研究生使用。', '中文', '49.00', '2017-07-03', '计算机类', 13 ),
	( 5, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357', '十万年前，地球上至少有六种不同的人\r\n但今日，世界舞台为什么只剩下了我们自己？\r\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\r\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\r\n从认知革命、农业革命，到科学革命、生物科技革命，\r\n我们如何登上世界舞台成为万物之灵的？\r\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\r\n从帝国主义、资本主义，到自由主义、消费主义，\r\n从兽欲，到物欲，从兽性、人性，到神性，\r\n我们了解自己吗？我们过得更快乐吗？\r\n我们究竟希望自己得到什么、变成什么？', '英文', '68.00', '2014-11-01', '文学类', 1 ),
	( 6, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087', '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。', '中文', '358.20', '2009-04-06', '历史类', 1 ),
	( 7, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768', '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。', '英文', '88.00', '2003-08-05', '经济类', 1 ),
	( 8, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265', '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。', '中文', '99.80', '2017-04-01', '文学类', 1 ),
	( 9, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608', '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。', '中文', '60.00', '2016-01-01', '文学类', 0 ),
	( 10, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859', '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...', '中文', '39.50', '2017-06-01', '文学类', 1 ),
	( 11, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745', '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。', '中文', '35.00', '2017-05-01', '文学类', 1 ),
	( 12, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777', '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。', '中文', '26.00', '2007-01-01', '文学类', 1 ),
	( 13, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734', '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。', '中文', '12.00', '2003-01-01', '文学类', 0 ),
	( 14, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585', '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！', '中文', '42.00', '2015-06-01', '文学类', 1 ),
	( 15, 'Java软件开发技术', '赖敏 ', '清华大学出版社 ', '9787302518990', '本书核心内容包括Java语言基础，Java数组与字符串，Java类与对象的所有知识点，继承的相关知识点，Java图形用户界面设计，Java异常处理机制，Java常用的类，Java输入输出及文件操作，Java集合框架，Java多线程，Java网络编程。', '中文', '42.00', '2015-06-01', '计算机类', 1 ),
	( 16, 'C/C++程序设计教程', '郑秋生', '电子工业出版社  ', '9787121330476', '	本书阐述了C++语言中面向对象程序设计的语言和思想，内容包括：类和对象、继承与派生、多态性、输入/输出流、异常处理、模板、标准模板库STL的介绍及应用等。', '中文', '42.00', '2015-06-01', '计算机类', 1 ),
	( 17, 'Java EE程序设计 ', '郝玉龙 ', '清华大学出版社   ', '9787302507352 ', '本书对JavaEE8程序设计技术进行了系统讲解。首先对JavaEE体系结构进行概述,介绍JavaEE产生的背景、JavaEE的定义、编程思想、技术框架等,然后指导读者基于Netbeans+GlassfishServer搭建JavaEE开发环境,随后以JavaEE企业应用的表现层、业务逻辑层和数据持久化层的程序设计任务为主线,由浅入深地讲解各个应用层次开发相关的组件技术、服务技术、通信技术和架构技术等,覆盖了对JavaEE8规范的最新功能特性,包括Servlet4.0、JSF2.3、EJB3.2、JPA2.2、CDI2.0、Websocket1.1、BeanValidation2.0、JAX-RS2.1、JSON-P1.1和JSON-B1.0等的讲解演示。', '中文', '42.00', '2015-06-01', '计算机类', 1 );

CREATE TABLE `reader_info` (
	`reader_id` BIGINT NOT NULL PRIMARY KEY,
	`name` VARCHAR ( 10 ) NOT NULL,
	`sex` VARCHAR ( 10 ) NOT NULL,
	`birth` date NOT NULL,
	`address` VARCHAR ( 50 ) NOT NULL,
	`phone` VARCHAR ( 15 ) NOT NULL
) ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `reader_info` MODIFY `reader_id` BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 10000;
INSERT INTO `reader_info` ( NAME, sex, birth, address, phone )
VALUES
	( '张华', '男', '1995-06-10', '天津市', '12345678900' ),
	( '王小伟', '男', '1996-02-01', '北京市', '12345678909' ),
	( '王莞尔', '女', '1995-04-15', '浙江省杭州市', '12345678908' ),
	( '张明华', '男', '1996-08-29', '陕西省西安市', '12345678907' ),
	( '李一琛', '男', '1996-01-01', '陕西省西安市', '15123659875' ),
	( '李二飞', '男', '1996-05-03', '山东省青岛市', '15369874123' );
CREATE TABLE `reader_card` ( `reader_id` BIGINT NOT NULL PRIMARY KEY, `username` VARCHAR ( 15 ) NOT NULL, `password` VARCHAR ( 15 ) NOT NULL ) ENGINE = INNODB DEFAULT CHARSET = utf8;
INSERT INTO `reader_card`
VALUES
	( 10000, '张华', '123456' ),
	( 10001, '王小伟', '123456' ),
	( 10002, '王莞尔', '123456' ),
	( 10003, '张明华', '123456' ),
	( 10004, '李一琛', '123456' ),
	( 10005, '李二飞', '123456' );
CREATE TABLE `lend_list` (
	`ser_num` BIGINT NOT NULL PRIMARY KEY,
	`book_id` BIGINT NOT NULL,
	`reader_id` BIGINT NOT NULL,
	`lend_date` datetime DEFAULT NULL,
	`back_date` datetime DEFAULT NULL,
	FOREIGN KEY (book_id) REFERENCES book_info(book_id),
	FOREIGN KEY (reader_id) REFERENCES reader_card(reader_id)
) ENGINE = INNODB DEFAULT CHARSET = utf8;
ALTER TABLE `lend_list` MODIFY `ser_num` BIGINT NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 1;
INSERT INTO `lend_list`
VALUES
	( 1, 1, 10000, '2017-03-15', '2017-06-16' ),
	( 2, 2, 10001, '2017-06-10', '2017-09-02' ),
	( 3, 3, 10003, '2017-06-12', '2017-09-02' ),
	( 4, 4, 10000, '2017-03-15', '2017-09-03' ),
	( 5, 5, 10002, '2017-06-15', NULL ),
	( 6, 6, 10000, '2017-06-15', NULL ),
	( 7, 1, 10001, '2017-09-02', '2017-09-02' );
COMMIT;