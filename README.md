Library Management System
使用Java开发的图书管理系统

#### 部署说明
基础环境：JDK8，Tomcat 9.0.45，MySQL 8.0.21，maven的jetty


#### 介绍
分为管理员，读者和图书模块。管理员：登录，对读者的增删改查，对图书的增删改查；
读者：登录，注册，查询图书，模拟读者对书籍的借阅和还书，读者借阅日期和还书日期

#### 数据库逻辑设计
共6张表

1.  管理员登录 admin

| 名       | 类型    | 长度 | 小数点 | NULL | 用途   | 键   |
| :------- | :------ | ---- | ------ | ---- | ------ | ---- |
| admin_id | bigint  | 20   | 0      | 否   | 账号   | ✔    |
| password | varchar | 15   | 0      | 否   | 密码   |      |
| username | varchar | 15   | 0      | 是   | 用户名 |      |

2.  图书书籍表 book_info

| 名           | 类型    | 长度 | 小数点 | NULL | 用途     | 键   |
| :----------- | :------ | ---- | ------ | ---- | -------- | ---- |
| book_id      | bigint  | 20   | 0      | 否   | 图书号   | ✔    |
| name         | varchar | 20   | 0      | 否   | 书名     |      |
| author       | varchar | 15   | 0      | 否   | 作者     |      |
| publish      | varchar | 20   | 0      | 否   | 出版社   |      |
| ISBN         | varchar | 15   | 0      | 否   | 标准书号 |      |
| introduction | text    | 20   | 0      | 是   | 简介     |      |
| language     | varchar | 4    | 0      | 否   | 语言     |      |
| price        | decimal | 10   | 2      | 否   | 价格     |      |
| pub_date     | date    | 20   | 0      | 否   | 出版时间 |      |
| class_name   | vechar  | 11   | 0      | 是   | 分类名   |      |
| number       | int     | 11   | 0      | 是   | 剩余数量 |      |

3.  图书分类表 class_info

| 名         | 类型    | 长度 | 小数点 | NULL | 用途   | 键   |
| :--------- | :------ | ---- | ------ | ---- | ------ | ---- |
| class_id   | int     | 11   | 0      |否   | 类别号 | ✔    |
| class_name | varchar | 15   | 0      | 否   | 类别名 |      |

4.  借阅信息表 lend_list

| 名        | 类型   | 长度 | 小数点 | NULL | 用途     | 键   |
| :-------- | :----- | ---- | ------ | ---- | -------- | ---- |
| ser_num   | bigint | 20   | 0      | 否   | 流水号   | ✔    |
| book_id   | bigint | 20   | 0      | 否   | 图书号   |      |
| reader_id | bigint | 20   | 0      | 否   | 读者证号 |      |
| lend_date | date   | 20   | 0      | 是   | 借出日期 |      |
| back_date | date   | 20   | 0      | 是   | 归还日期 |      |

5.  借阅卡信息表 reader_card

| 名        | 类型    | 长度 | 小数点 | NULL | 用途     | 键   |
| :-------- | :------ | ---- | ------ | ---- | -------- | ---- |
| reader_id | bigint  | 20   | 0      | 否   | 读者证号 | ✔    |
| password  | varchar | 15   | 0      | 否   | 密码     |      |
| username  | varchar | 15   | 0      | 是   | 用户名   |      |

6.  读者信息表 reader_info

| 名        | 类型    | 长度 | 小数点 | NULL | 用途     | 键   |
| :-------- | :------ | ---- | ------ | ---- | -------- | ---- |
| reader_id | bigint  | 20   | 0      | 否   | 读者证号 | ✔    |
| name      | varchar | 10   | 0      | 否   | 姓名     |      |
| sex       | varchar | 2    | 0      | 否   | 性别     |      |
| birth     | date    | 10   | 0      | 否   | 生日     |      |
| address   | varchar | 50   | 0      | 否   | 地址     |      |
| phone     | varchar | 15   | 0      | 否   | 电话     |      |


#### 基本操作页面

管理员
1.  登录
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135659.png)

2.  管理员首页
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135714.png)

3.  显示全部图书
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135718.png)

4.  对书籍操作
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135727.png)

5.  图书信息的添加
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135739.png)

7.  显示全部读者
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135744.png)

8.  编辑读者信息
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135749.png)

9.  添加读者
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135710.png)

10.  借还日志
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135744.png)

读者：
1. 读者首页
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135752.png)

2.  首页和注册页面与管理员一样
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135659.png)

3.  显示图书的信息
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135807.png)

4.  查询后显示图书信息
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135810.png)

5.  读者信息
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135813.png)

6.  读者信息修改
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135817.png)

7.  读者借还信息
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135821.png)

8.  读者的密码修改
![Image text](https://gitee.com/jk-14/library-management-system/raw/master/view/QQ%E5%9B%BE%E7%89%8720210617135825.png)


#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 特技

1.  使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2.  Gitee 官方博客 [blog.gitee.com](https://blog.gitee.com)
3.  你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解 Gitee 上的优秀开源项目
4.  [GVP](https://gitee.com/gvp) 全称是 Gitee 最有价值开源项目，是综合评定出的优秀开源项目
5.  Gitee 官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6.  Gitee 封面人物是一档用来展示 Gitee 会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
