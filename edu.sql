SET NAMES UTF8;
DROP DATABASE IF EXISTS edu;
CREATE DATABASE edu CHARSET=UTF8;
USE edu;


--
-- 表的结构 `edu_blog`
--

CREATE TABLE edu_blog (
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname varchar(32),
  title varchar(32),
  pic varchar(128),
  details varchar(128),
  post_time bigint(20)
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_cart`
--

CREATE TABLE edu_cart (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  lesson_id INT,
  teacher_id INT,
  count INT 
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_index_carousel`
--

CREATE TABLE edu_index_carousel (
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img varchar(128),
  title varchar(64),
  href varchar(128)
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_index_lesson`
--

CREATE TABLE edu_index_lesson (
  lid INT PRIMARY KEY AUTO_INCREMENT,
  title varchar(64),
  details varchar(128),
  pic varchar(128),
  price INT,
  href varchar(128)
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_lesson`
--

CREATE TABLE edu_lesson (
  lid INT PRIMARY KEY AUTO_INCREMENT,
  category INT,
  lname varchar(128),
  teacher_id INT,
  details varchar(1024),
  synopsis varchar(1024),
  price INT
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_order`
--

CREATE TABLE edu_order (
  oid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  status INT,
  order_time BIGINT,
  pay_time BIGINT
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_teacher`
--

CREATE TABLE edu_teacher (
  tid INT PRIMARY KEY AUTO_INCREMENT,
  tname varchar(32),
  lessons_id INT,
  tpic varchar(128),
  details varchar(1024)
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_user`
--

CREATE TABLE edu_user (
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname varchar(32),
  upwd varchar(32),
  email varchar(64),
  phone varchar(16),
  avatar varchar(128),
  gender int(11)
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_user_feedback`
--

CREATE TABLE edu_user_feedback (
  fid INT PRIMARY KEY AUTO_INCREMENT,
  uname varchar(32),
  email varchar(32),
  phone varchar(16),
  subject varchar(64),
  message varchar(128)
);

-- --------------------------------------------------------

--
-- 表的结构 `edu_user_lesson`
--

CREATE TABLE edu_user_lesson (
  uid INT,
  tid INT,
  lid INT,
  oid INT,
  ltime BIGINT,
  lname varchar(128)
);

/*******************/
/******数据导入******/
/*******************/
/**用户信息**/
INSERT INTO edu_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');

/****首页轮播广告****/
INSERT INTO edu_index_carousel VALUES
(NULL, 'img/index/banner1.png','轮播广告商品1','product_details.html?lid=28'),
(NULL, 'img/index/banner2.png','轮播广告商品2','product_details.html?lid=19'),
(NULL, 'img/index/banner3.png','轮播广告商品3','lookforward.html'),
(NULL, 'img/index/banner4.png','轮播广告商品4','lookforward.html');

/****首页商品课程****/
INSERT into edu_index_lesson VALUES
(NULL,'此处为首页课程标题','img/index_lesson/pic1.png','¥999','lookforward.html')
(NULL,'此处为首页课程标题','img/index_lesson/pic2.png','¥999','lookforward.html')
(NULL,'此处为首页课程标题','img/index_lesson/pic3.png','¥999','lookforward.html')
(NULL,'此处为首页课程标题','img/index_lesson/pic4.png','¥999','lookforward.html')
(NULL,'此处为首页课程标题','img/index_lesson/pic5.png','¥999','lookforward.html')

/****教师表****/
INSERT INTO edu_teacher VALUES
(NULL,'张三','123456','img/teacher/teacher1.png','这里是关于教师的详细介绍')
(NULL,'张三','123456','img/teacher/teacher1.png','这里是关于教师的详细介绍')
(NULL,'张三','123456','img/teacher/teacher1.png','这里是关于教师的详细介绍')
(NULL,'张三','123456','img/teacher/teacher1.png','这里是关于教师的详细介绍')
(NULL,'张三','123456','img/teacher/teacher1.png','这里是关于教师的详细介绍')

/**课程表**/
INSERT INTO edu_lesson VALUES
(NULL,'1','C++','123456','课程详细信息介绍','课程简介','课程价格')
(NULL,'1','C++','123456','课程详细信息介绍','课程简介','课程价格')
(NULL,'1','C++','123456','课程详细信息介绍','课程简介','课程价格')
(NULL,'1','C++','123456','课程详细信息介绍','课程简介','课程价格')
