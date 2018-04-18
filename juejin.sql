DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(64) NOT NULL DEFAULT '',
  `admin_pwd` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `follow_info`;
CREATE TABLE `follow_info` (
  `follow_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` int(11) NOT NULL DEFAULT '0',
  `followee_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`follow_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `section_info`;
CREATE TABLE `section_info` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(50) NOT NULL DEFAULT '',
  `section_desc` varchar(600) NOT NULL DEFAULT '',
  `section_parent_id` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `taginfo`;
CREATE TABLE `taginfo` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(50) NOT NULL DEFAULT '',
  `tag_desc` varchar(600) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tag_topic_info`;
CREATE TABLE `tag_topic_info` (
  `tag_topic_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_topic_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `tag_user_info`;
CREATE TABLE `tag_user_info` (
  `tag_user_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_user_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `topic_comment_info`;
CREATE TABLE `topic_comment_info` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_content` longtext NOT NULL,
  `comment_markdown_content` longtext NOT NULL,
  `comment_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `topic_id` int(11) NOT NULL DEFAULT '-1',
  `reply_comment_id` int(11) NOT NULL DEFAULT '-1',
  `user_id` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `topic_info`;
CREATE TABLE `topic_info` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(200) NOT NULL DEFAULT '',
  `topic_content` longtext NOT NULL,
  `topic_markdown_content` longtext NOT NULL,
  `topic_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `section_id` int(11) NOT NULL DEFAULT '-1',
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `love_num` int(11) NOT NULL DEFAULT '0',
  `comment_num` int(11) NOT NULL DEFAULT '0',
  `is_publish` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=797 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL DEFAULT '',
  `user_pwd` varchar(64) NOT NULL DEFAULT '',
  `user_phone` varchar(20) NOT NULL DEFAULT '',
  `user_avatar` varchar(200) NOT NULL DEFAULT '',
  `user_score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user_opt_logs`;
CREATE TABLE `user_opt_logs` (
  `user_opt_logs_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `opt_type_id` int(11) NOT NULL DEFAULT '0',
  `object_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_opt_logs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user_topic_love`;
CREATE TABLE `user_topic_love` (
  `user_topic_love_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_topic_love_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;