/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : FIFA

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 12/08/2020 01:42:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `auth_token` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `encrypted_password` varchar(128) DEFAULT NULL,
  `phone` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_admins_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
BEGIN;
INSERT INTO `admins` VALUES (1, '2020-08-01 01:09:10', '2020-08-11 15:40:26', NULL, '18717711819', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IjE4NzE3NzExODE5IiwiZXhwIjoxNTk3MjQ2ODI2LCJpc3MiOiJXb3JsZEN1cCJ9.8zbzGAOWxKgeey8ewFpn3oyNX_m22rn8-4fNdW08JJI', '$2a$04$5Wu7npoNeok1xtCHXTLDk.XgNqGjZkzxhcsiOaNmBPIioxQ3LaqQS', '18717711819', 'admin');
INSERT INTO `admins` VALUES (2, '2020-08-01 01:10:59', '2020-08-01 01:10:59', NULL, 'xieweiwei', 'af3e134a94bc491853739baab275af6ee41d8388', '$2a$04$Oj4riiVjTMt3xolPK0pzieYRrxww4KpVJvytOKBfMVmwEqY5zz0je', '187277272727', 'admin');
INSERT INTO `admins` VALUES (3, '2020-08-03 08:08:54', '2020-08-03 08:08:54', NULL, '18892207018', '30151212478647c41d0db6f40eefe5f42987df85', '$2a$04$k73CaVzOWYHcL7ZzRRm.MuSAjX.wru0R3C10vthw7ux8EMkJyfG4S', '18892207018', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for awards
-- ----------------------------
DROP TABLE IF EXISTS `awards`;
CREATE TABLE `awards` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `award_name` varchar(64) NOT NULL,
  `url` varchar(128) NOT NULL,
  `info` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of awards
-- ----------------------------
BEGIN;
INSERT INTO `awards` VALUES (1, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '2018: Harry Kane (England) 6 goals');
INSERT INTO `awards` VALUES (2, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '2014: James Rodríguez (Colombia) 6 Goals');
INSERT INTO `awards` VALUES (3, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '2010: Thomas Muller (Germany ) 5 Goals');
INSERT INTO `awards` VALUES (4, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '2006: Miroslav Klose (Germany) 5 Goals');
INSERT INTO `awards` VALUES (5, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '2002: Ronaldo (Brazil) 8 Goals');
INSERT INTO `awards` VALUES (6, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1998: Davor Suker (Croatia) 6 Goals');
INSERT INTO `awards` VALUES (7, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1994: Hristo Stoichkov (Bulgaria) Oleg Salenko (Russia) 6 Goals');
INSERT INTO `awards` VALUES (8, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1990: Salvatore Schillaci (Italy) 6 Goals');
INSERT INTO `awards` VALUES (9, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1986: Gary Lineker (England) 6 Goals');
INSERT INTO `awards` VALUES (10, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1982: Paolo Rossi (Italy) 6 Goals');
INSERT INTO `awards` VALUES (11, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1978: Mario Kempes (Argentina) 6 Goals');
INSERT INTO `awards` VALUES (12, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1974: Grzegorz Lato (Poland) 7 Goals');
INSERT INTO `awards` VALUES (13, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1970: Gerd Muller (Germany) 10 Goals');
INSERT INTO `awards` VALUES (14, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1966: Eusebio (Portugal) 9 Goals');
INSERT INTO `awards` VALUES (15, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1958: Just Fontaine (France) 13 Goals');
INSERT INTO `awards` VALUES (16, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1954: Sandor Kocsis (Hungary) 11 Goals');
INSERT INTO `awards` VALUES (17, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1950: Ademir (Brazil) 9 Goals');
INSERT INTO `awards` VALUES (18, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1938: Leonidas (Brazil) 8 Goals');
INSERT INTO `awards` VALUES (19, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1934: Oldrich Nejedly (Czechoslovakia) 5 Goals');
INSERT INTO `awards` VALUES (20, 'adidas Golden Boot Award', 'https://www.fifa.com/worldcup/awards/golden-boot/', '1930: Guillermo Stabile (Argentina) 8 Goals');
INSERT INTO `awards` VALUES (21, 'adidas Golden Glove Award', 'https://www.fifa.com/worldcup/awards/golden-glove/', '2010: Iker Casillas (Spain)');
INSERT INTO `awards` VALUES (22, 'adidas Golden Glove Award', 'https://www.fifa.com/worldcup/awards/golden-glove/', '2006: Gianluigi Buffon (ITA) *');
INSERT INTO `awards` VALUES (23, 'adidas Golden Glove Award', 'https://www.fifa.com/worldcup/awards/golden-glove/', '2002: Oliver Kahn (GER) *');
INSERT INTO `awards` VALUES (24, 'adidas Golden Glove Award', 'https://www.fifa.com/worldcup/awards/golden-glove/', '1998: Fabien Barthez (FRA) *');
INSERT INTO `awards` VALUES (25, 'adidas Golden Glove Award', 'https://www.fifa.com/worldcup/awards/golden-glove/', '1994: Michel Preud’homme (BEL) *');
INSERT INTO `awards` VALUES (26, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '2014: Lionel Messi (Argentina)');
INSERT INTO `awards` VALUES (27, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '2010: Diego Forlan (Uruguay)');
INSERT INTO `awards` VALUES (28, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '2006: Zinedine Zidane (France)');
INSERT INTO `awards` VALUES (29, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '2002: Oliver Kahn (Germany)');
INSERT INTO `awards` VALUES (30, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '1998: Ronaldo (Brazil)');
INSERT INTO `awards` VALUES (31, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '1994: Romario (Brazil)');
INSERT INTO `awards` VALUES (32, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '1990: Salvatore Schillaci (Italy)');
INSERT INTO `awards` VALUES (33, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '1986: Diego Maradona (Argentina)');
INSERT INTO `awards` VALUES (34, 'adidas Golden Ball Award', 'https://www.fifa.com/worldcup/awards/golden-ball/', '1982: Paolo Rossi (Italy)');
COMMIT;

-- ----------------------------
-- Table structure for coaches
-- ----------------------------
DROP TABLE IF EXISTS `coaches`;
CREATE TABLE `coaches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `country_name` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image_address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_coaches_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coaches
-- ----------------------------
BEGIN;
INSERT INTO `coaches` VALUES (1, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Poland', 'Adam NAWALKA', 'https://api.fifa.com/api/v1/picture/players/2018fwc/54986_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (2, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Denmark', 'Age HAREIDE', 'https://api.fifa.com/api/v1/picture/players/2018fwc/50605_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (3, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Japan', 'Akira NISHINO', 'https://api.fifa.com/api/v1/picture/players/2018fwc/55195_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (4, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Senegal', 'Aliou CISSE', 'https://api.fifa.com/api/v1/picture/players/2018fwc/177583_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (5, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Australia', 'Bert VAN MARWIJK', 'https://api.fifa.com/api/v1/picture/players/2018fwc/296143_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (6, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'IR Iran', 'Carlos QUEIROZ', 'https://api.fifa.com/api/v1/picture/players/2018fwc/34969_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (7, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'France', 'Didier DESCHAMPS', 'https://api.fifa.com/api/v1/picture/players/2018fwc/48455_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (8, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Spain', 'Fernando HIERRO', 'https://api.fifa.com/api/v1/picture/players/2018fwc/174605_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (9, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Portugal', 'Fernando SANTOS', 'https://api.fifa.com/api/v1/picture/players/2018fwc/325536_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (10, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'England', 'Gareth SOUTHGATE', 'https://api.fifa.com/api/v1/picture/players/2018fwc/155121_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (11, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Nigeria', 'Gernot ROHR', 'https://api.fifa.com/api/v1/picture/players/2018fwc/321621_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (12, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Egypt', 'Hector CUPER', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299443_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (13, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Iceland', 'Heimir HALLGRIMSSON', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375569_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (14, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Panama', 'Hernan GOMEZ', 'https://api.fifa.com/api/v1/picture/players/2018fwc/170782_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (15, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Morocco', 'Herve RENARD', 'https://api.fifa.com/api/v1/picture/players/2018fwc/296787_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (16, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Sweden', 'Janne ANDERSSON', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398564_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (17, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Germany', 'Joachim LOEW', 'https://api.fifa.com/api/v1/picture/players/2018fwc/232917_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (18, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Argentina', 'Jorge SAMPAOLI', 'https://api.fifa.com/api/v1/picture/players/2018fwc/364182_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (19, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Colombia', 'Jose PEKERMAN', 'https://api.fifa.com/api/v1/picture/players/2018fwc/40510_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (20, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Saudi Arabia', 'Juan Antonio PIZZI', 'https://api.fifa.com/api/v1/picture/players/2018fwc/155147_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (21, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Mexico', 'Juan Carlos OSORIO', 'https://api.fifa.com/api/v1/picture/players/2018fwc/331044_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (22, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Serbia', 'Mladen KRSTAJIC', 'https://api.fifa.com/api/v1/picture/players/2018fwc/182757_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (23, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Tunisia', 'Nabil MAALOUL', 'https://api.fifa.com/api/v1/picture/players/2018fwc/199561_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (24, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Costa Rica', 'Oscar RAMIREZ', 'https://api.fifa.com/api/v1/picture/players/2018fwc/44547_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (25, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Uruguay', 'Oscar TABAREZ', 'https://api.fifa.com/api/v1/picture/players/2018fwc/61566_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (26, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Peru', 'Ricardo GARECA', 'https://api.fifa.com/api/v1/picture/players/2018fwc/49791_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (27, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Belgium', 'Roberto MARTINEZ', 'https://api.fifa.com/api/v1/picture/players/2018fwc/396423_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (28, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Korea Republic', 'SHIN Taeyong', 'https://api.fifa.com/api/v1/picture/players/2018fwc/194551_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (29, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Russia', 'Stanislav CHERCHESOV', 'https://api.fifa.com/api/v1/picture/players/2018fwc/77514_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (30, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Brazil', 'TITE', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404828_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (31, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Switzerland', 'Vladimir PETKOVIC', 'https://api.fifa.com/api/v1/picture/players/2018fwc/377066_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `coaches` VALUES (32, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Croatia', 'Zlatko DALIC', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400769_sq-300_jpg?allowDefaultPicture=true');
COMMIT;

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `group_name` varchar(64) NOT NULL,
  `team_name` varchar(64) NOT NULL,
  `match_played` int NOT NULL,
  `win_number` int NOT NULL,
  `draw_number` int NOT NULL,
  `lost_number` int NOT NULL,
  `goal_number` int NOT NULL,
  `goal_against` int NOT NULL,
  `diff_goal` int NOT NULL,
  `points` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_groups_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
BEGIN;
INSERT INTO `groups` VALUES (1, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group A', 'Uruguay', 3, 3, 0, 0, 5, 0, 0, 9);
INSERT INTO `groups` VALUES (2, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group A', 'Russia', 3, 2, 0, 1, 8, 0, 0, 6);
INSERT INTO `groups` VALUES (3, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group A', 'Saudi Arabia', 3, 1, 0, 2, 2, 0, 0, 3);
INSERT INTO `groups` VALUES (4, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group A', 'Egypt', 3, 0, 0, 3, 2, 0, 0, 0);
INSERT INTO `groups` VALUES (5, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group B', 'Spain', 3, 1, 2, 0, 6, 0, 0, 5);
INSERT INTO `groups` VALUES (6, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group B', 'Portugal', 3, 1, 2, 0, 5, 0, 0, 5);
INSERT INTO `groups` VALUES (7, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group B', 'IR Iran', 3, 1, 1, 1, 2, 0, 0, 4);
INSERT INTO `groups` VALUES (8, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group B', 'Morocco', 3, 0, 1, 2, 2, 0, 0, 1);
INSERT INTO `groups` VALUES (9, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group C', 'France', 3, 2, 1, 0, 3, 0, 0, 7);
INSERT INTO `groups` VALUES (10, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group C', 'Denmark', 3, 1, 2, 0, 2, 0, 0, 5);
INSERT INTO `groups` VALUES (11, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group C', 'Peru', 3, 1, 0, 2, 2, 0, 0, 3);
INSERT INTO `groups` VALUES (12, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group C', 'Australia', 3, 0, 1, 2, 2, 0, 0, 1);
INSERT INTO `groups` VALUES (13, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group D', 'Croatia', 3, 3, 0, 0, 7, 0, 0, 9);
INSERT INTO `groups` VALUES (14, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group D', 'Argentina', 3, 1, 1, 1, 3, 0, 0, 4);
INSERT INTO `groups` VALUES (15, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group D', 'Nigeria', 3, 1, 0, 2, 3, 0, 0, 3);
INSERT INTO `groups` VALUES (16, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group D', 'Iceland', 3, 0, 1, 2, 2, 0, 0, 1);
INSERT INTO `groups` VALUES (17, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group E', 'Brazil', 3, 2, 1, 0, 5, 0, 0, 7);
INSERT INTO `groups` VALUES (18, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group E', 'Switzerland', 3, 1, 2, 0, 5, 0, 0, 5);
INSERT INTO `groups` VALUES (19, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group E', 'Serbia', 3, 1, 0, 2, 2, 0, 0, 3);
INSERT INTO `groups` VALUES (20, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group E', 'Costa Rica', 3, 0, 1, 2, 2, 0, 0, 1);
INSERT INTO `groups` VALUES (21, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group F', 'Sweden', 3, 2, 0, 1, 5, 0, 0, 6);
INSERT INTO `groups` VALUES (22, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group F', 'Mexico', 3, 2, 0, 1, 3, 0, 0, 6);
INSERT INTO `groups` VALUES (23, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group F', 'Korea Republic', 3, 1, 0, 2, 3, 0, 0, 3);
INSERT INTO `groups` VALUES (24, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group F', 'Germany', 3, 1, 0, 2, 2, 0, 0, 3);
INSERT INTO `groups` VALUES (25, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group G', 'Belgium', 3, 3, 0, 0, 9, 0, 0, 9);
INSERT INTO `groups` VALUES (26, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group G', 'England', 3, 2, 0, 1, 8, 0, 0, 6);
INSERT INTO `groups` VALUES (27, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group G', 'Tunisia', 3, 1, 0, 2, 5, 0, 0, 3);
INSERT INTO `groups` VALUES (28, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group G', 'Panama', 3, 0, 0, 3, 2, 0, 0, 0);
INSERT INTO `groups` VALUES (29, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group H', 'Colombia', 3, 2, 0, 1, 5, 0, 0, 6);
INSERT INTO `groups` VALUES (30, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group H', 'Japan', 3, 1, 1, 1, 4, 0, 0, 4);
INSERT INTO `groups` VALUES (31, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group H', 'Senegal', 3, 1, 1, 1, 4, 0, 0, 4);
INSERT INTO `groups` VALUES (32, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 'Group H', 'Poland', 3, 1, 0, 2, 2, 0, 0, 3);
COMMIT;

-- ----------------------------
-- Table structure for matches
-- ----------------------------
DROP TABLE IF EXISTS `matches`;
CREATE TABLE `matches` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `date` varchar(64) NOT NULL,
  `group_name` varchar(64) NOT NULL,
  `location` varchar(64) NOT NULL,
  `country_left` varchar(64) NOT NULL,
  `country_right` varchar(64) NOT NULL,
  `score` varchar(64) NOT NULL,
  `match_number` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_matches_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matches
-- ----------------------------
BEGIN;
INSERT INTO `matches` VALUES (1, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, '14 Jun 2018 - 18:00      Local time', 'Group A', 'Luzhniki Stadium      Moscow', 'Russia      RUS', 'Saudi Arabia      KSA', '5-0', 1);
INSERT INTO `matches` VALUES (2, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '15 Jun 2018 - 17:00      Local time', 'Group A', 'Ekaterinburg Arena      Ekaterinburg', 'Egypt      EGY', 'Uruguay      URU', '0-1', 2);
INSERT INTO `matches` VALUES (3, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '15 Jun 2018 - 18:00      Local time', 'Group B', 'Saint Petersburg Stadium      St. Petersburg', 'Morocco      MAR', 'IR Iran      IRN', '0-1', 4);
INSERT INTO `matches` VALUES (4, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '15 Jun 2018 - 21:00      Local time', 'Group B', 'Fisht Stadium      Sochi', 'Portugal      POR', 'Spain      ESP', '5-0', 3);
INSERT INTO `matches` VALUES (5, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '16 Jun 2018 - 13:00      Local time', 'Group C', 'Kazan Arena      Kazan', 'France      FRA', 'Australia      AUS', '5-0', 5);
INSERT INTO `matches` VALUES (6, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '16 Jun 2018 - 16:00      Local time', 'Group D', 'Spartak Stadium      Moscow', 'Argentina      ARG', 'Iceland      ISL', '5-0', 7);
INSERT INTO `matches` VALUES (7, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '16 Jun 2018 - 19:00      Local time', 'Group C', 'Mordovia Arena      Saransk', 'Peru      PER', 'Denmark      DEN', '0-1', 6);
INSERT INTO `matches` VALUES (8, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '16 Jun 2018 - 21:00      Local time', 'Group D', 'Kaliningrad Stadium      Kaliningrad', 'Croatia      CRO', 'Nigeria      NGA', '2-0', 8);
INSERT INTO `matches` VALUES (9, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '17 Jun 2018 - 16:00      Local time', 'Group E', 'Samara Arena      Samara', 'Costa Rica      CRC', 'Serbia      SRB', '0-1', 10);
INSERT INTO `matches` VALUES (10, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '17 Jun 2018 - 18:00      Local time', 'Group F', 'Luzhniki Stadium      Moscow', 'Germany      GER', 'Mexico      MEX', '0-1', 11);
INSERT INTO `matches` VALUES (11, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '17 Jun 2018 - 21:00      Local time', 'Group E', 'Rostov Arena      Rostov-On-Don', 'Brazil      BRA', 'Switzerland      SUI', '5-0', 9);
INSERT INTO `matches` VALUES (12, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '18 Jun 2018 - 15:00      Local time', 'Group F', 'Nizhny Novgorod Stadium      Nizhny Novgorod', 'Sweden      SWE', 'Korea Republic      KOR', '1-0', 12);
INSERT INTO `matches` VALUES (13, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '18 Jun 2018 - 18:00      Local time', 'Group G', 'Fisht Stadium      Sochi', 'Belgium      BEL', 'Panama      PAN', '3-0', 13);
INSERT INTO `matches` VALUES (14, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '18 Jun 2018 - 21:00      Local time', 'Group G', 'Volgograd Arena      Volgograd', 'Tunisia      TUN', 'England      ENG', '5-0', 14);
INSERT INTO `matches` VALUES (15, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '19 Jun 2018 - 15:00      Local time', 'Group H', 'Mordovia Arena      Saransk', 'Colombia      COL', 'Japan      JPN', '5-0', 16);
INSERT INTO `matches` VALUES (16, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '19 Jun 2018 - 18:00      Local time', 'Group H', 'Spartak Stadium      Moscow', 'Poland      POL', 'Senegal      SEN', '5-0', 15);
INSERT INTO `matches` VALUES (17, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '19 Jun 2018 - 21:00      Local time', 'Group A', 'Saint Petersburg Stadium      St. Petersburg', 'Russia      RUS', 'Egypt      EGY', '5-0', 17);
INSERT INTO `matches` VALUES (18, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '20 Jun 2018 - 15:00      Local time', 'Group B', 'Luzhniki Stadium      Moscow', 'Portugal      POR', 'Morocco      MAR', '1-0', 19);
INSERT INTO `matches` VALUES (19, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '20 Jun 2018 - 18:00      Local time', 'Group A', 'Rostov Arena      Rostov-On-Don', 'Uruguay      URU', 'Saudi Arabia      KSA', '1-0', 18);
INSERT INTO `matches` VALUES (20, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '20 Jun 2018 - 21:00      Local time', 'Group B', 'Kazan Arena      Kazan', 'IR Iran      IRN', 'Spain      ESP', '0-1', 20);
INSERT INTO `matches` VALUES (21, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '21 Jun 2018 - 16:00      Local time', 'Group C', 'Samara Arena      Samara', 'Denmark      DEN', 'Australia      AUS', '1-0', 22);
INSERT INTO `matches` VALUES (22, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '21 Jun 2018 - 20:00      Local time', 'Group C', 'Ekaterinburg Arena      Ekaterinburg', 'France      FRA', 'Peru      PER', '1-0', 21);
INSERT INTO `matches` VALUES (23, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '21 Jun 2018 - 21:00      Local time', 'Group D', 'Nizhny Novgorod Stadium      Nizhny Novgorod', 'Argentina      ARG', 'Croatia      CRO', '0-3', 23);
INSERT INTO `matches` VALUES (24, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '22 Jun 2018 - 15:00      Local time', 'Group E', 'Saint Petersburg Stadium      St. Petersburg', 'Brazil      BRA', 'Costa Rica      CRC', '2-0', 25);
INSERT INTO `matches` VALUES (25, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '22 Jun 2018 - 18:00      Local time', 'Group D', 'Volgograd Arena      Volgograd', 'Nigeria      NGA', 'Iceland      ISL', '2-0', 24);
INSERT INTO `matches` VALUES (26, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '22 Jun 2018 - 20:00      Local time', 'Group E', 'Kaliningrad Stadium      Kaliningrad', 'Serbia      SRB', 'Switzerland      SUI', '1-0', 26);
INSERT INTO `matches` VALUES (27, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '23 Jun 2018 - 15:00      Local time', 'Group G', 'Spartak Stadium      Moscow', 'Belgium      BEL', 'Tunisia      TUN', '1-0', 29);
INSERT INTO `matches` VALUES (28, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '23 Jun 2018 - 18:00      Local time', 'Group F', 'Rostov Arena      Rostov-On-Don', 'Korea Republic      KOR', 'Mexico      MEX', '1-0', 28);
INSERT INTO `matches` VALUES (29, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '23 Jun 2018 - 21:00      Local time', 'Group F', 'Fisht Stadium      Sochi', 'Germany      GER', 'Sweden      SWE', '1-0', 27);
INSERT INTO `matches` VALUES (30, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '24 Jun 2018 - 15:00      Local time', 'Group G', 'Nizhny Novgorod Stadium      Nizhny Novgorod', 'England      ENG', 'Panama      PAN', '1-0', 30);
INSERT INTO `matches` VALUES (31, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '24 Jun 2018 - 20:00      Local time', 'Group H', 'Ekaterinburg Arena      Ekaterinburg', 'Japan      JPN', 'Senegal      SEN', '1-0', 32);
INSERT INTO `matches` VALUES (32, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '24 Jun 2018 - 21:00      Local time', 'Group H', 'Kazan Arena      Kazan', 'Poland      POL', 'Colombia      COL', '0-3', 31);
INSERT INTO `matches` VALUES (33, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '25 Jun 2018 - 18:00      Local time', 'Group A', 'Samara Arena      Samara', 'Uruguay      URU', 'Russia      RUS', '3-0', 33);
INSERT INTO `matches` VALUES (34, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '25 Jun 2018 - 17:00      Local time', 'Group A', 'Volgograd Arena      Volgograd', 'Saudi Arabia      KSA', 'Egypt      EGY', '1-0', 34);
INSERT INTO `matches` VALUES (35, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '25 Jun 2018 - 20:00      Local time', 'Group B', 'Kaliningrad Stadium      Kaliningrad', 'Spain      ESP', 'Morocco      MAR', '1-0', 36);
INSERT INTO `matches` VALUES (36, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '25 Jun 2018 - 21:00      Local time', 'Group B', 'Mordovia Arena      Saransk', 'IR Iran      IRN', 'Portugal      POR', '1-0', 35);
INSERT INTO `matches` VALUES (37, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '26 Jun 2018 - 17:00      Local time', 'Group C', 'Fisht Stadium      Sochi', 'Australia      AUS', 'Peru      PER', '0-2', 38);
INSERT INTO `matches` VALUES (38, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '26 Jun 2018 - 17:00      Local time', 'Group C', 'Luzhniki Stadium      Moscow', 'Denmark      DEN', 'France      FRA', '0-0', 37);
INSERT INTO `matches` VALUES (39, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '26 Jun 2018 - 21:00      Local time', 'Group D', 'Saint Petersburg Stadium      St. Petersburg', 'Nigeria      NGA', 'Argentina      ARG', '1-0', 39);
INSERT INTO `matches` VALUES (40, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '26 Jun 2018 - 21:00      Local time', 'Group D', 'Rostov Arena      Rostov-On-Don', 'Iceland      ISL', 'Croatia      CRO', '1-0', 40);
INSERT INTO `matches` VALUES (41, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '27 Jun 2018 - 17:00      Local time', 'Group F', 'Kazan Arena      Kazan', 'Korea Republic      KOR', 'Germany      GER', '2-0', 43);
INSERT INTO `matches` VALUES (42, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '27 Jun 2018 - 19:00      Local time', 'Group F', 'Ekaterinburg Arena      Ekaterinburg', 'Mexico      MEX', 'Sweden      SWE', '0-3', 44);
INSERT INTO `matches` VALUES (43, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '27 Jun 2018 - 21:00      Local time', 'Group E', 'Spartak Stadium      Moscow', 'Serbia      SRB', 'Brazil      BRA', '0-2', 41);
INSERT INTO `matches` VALUES (44, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '27 Jun 2018 - 21:00      Local time', 'Group E', 'Nizhny Novgorod Stadium      Nizhny Novgorod', 'Switzerland      SUI', 'Costa Rica      CRC', '1-0', 42);
INSERT INTO `matches` VALUES (45, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '28 Jun 2018 - 17:00      Local time', 'Group H', 'Volgograd Arena      Volgograd', 'Japan      JPN', 'Poland      POL', '0-1', 47);
INSERT INTO `matches` VALUES (46, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '28 Jun 2018 - 18:00      Local time', 'Group H', 'Samara Arena      Samara', 'Senegal      SEN', 'Colombia      COL', '0-1', 48);
INSERT INTO `matches` VALUES (47, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '28 Jun 2018 - 21:00      Local time', 'Group G', 'Mordovia Arena      Saransk', 'Panama      PAN', 'Tunisia      TUN', '1-0', 46);
INSERT INTO `matches` VALUES (48, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '28 Jun 2018 - 20:00      Local time', 'Group G', 'Kaliningrad Stadium      Kaliningrad', 'England      ENG', 'Belgium      BEL', '0-1', 45);
INSERT INTO `matches` VALUES (49, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '30 Jun 2018 - 17:00      Local time', 'Round of 16', 'Kazan Arena      Kazan', 'France      FRA', 'Argentina      ARG', '1-0', 50);
INSERT INTO `matches` VALUES (50, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '30 Jun 2018 - 21:00      Local time', 'Round of 16', 'Fisht Stadium      Sochi', 'Uruguay      URU', 'Portugal      POR', '1-0', 49);
INSERT INTO `matches` VALUES (51, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '01 Jul 2018 - 17:00      Local time', 'Round of 16', 'Luzhniki Stadium      Moscow', 'Spain      ESP', 'Russia      RUS', '1-0', 51);
INSERT INTO `matches` VALUES (52, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '01 Jul 2018 - 21:00      Local time', 'Round of 16', 'Nizhny Novgorod Stadium      Nizhny Novgorod', 'Croatia      CRO', 'Denmark      DEN', '1-0', 52);
INSERT INTO `matches` VALUES (53, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '02 Jul 2018 - 18:00      Local time', 'Round of 16', 'Samara Arena      Samara', 'Brazil      BRA', 'Mexico      MEX', '2-0', 53);
INSERT INTO `matches` VALUES (54, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '02 Jul 2018 - 21:00      Local time', 'Round of 16', 'Rostov Arena      Rostov-On-Don', 'Belgium      BEL', 'Japan      JPN', '1-0', 54);
INSERT INTO `matches` VALUES (55, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '03 Jul 2018 - 17:00      Local time', 'Round of 16', 'Saint Petersburg Stadium      St. Petersburg', 'Sweden      SWE', 'Switzerland      SUI', '1-0', 55);
INSERT INTO `matches` VALUES (56, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '03 Jul 2018 - 21:00      Local time', 'Round of 16', 'Spartak Stadium      Moscow', 'Colombia      COL', 'England      ENG', '1-0', 56);
INSERT INTO `matches` VALUES (57, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '06 Jul 2018 - 17:00      Local time', 'Quarter-finals', 'Nizhny Novgorod Stadium      Nizhny Novgorod', 'Uruguay      URU', 'France      FRA', '0-2', 57);
INSERT INTO `matches` VALUES (58, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '06 Jul 2018 - 21:00      Local time', 'Quarter-finals', 'Kazan Arena      Kazan', 'Brazil      BRA', 'Belgium      BEL', '1-0', 58);
INSERT INTO `matches` VALUES (59, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '07 Jul 2018 - 18:00      Local time', 'Quarter-finals', 'Samara Arena      Samara', 'Sweden      SWE', 'England      ENG', '0-2', 60);
INSERT INTO `matches` VALUES (60, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '07 Jul 2018 - 21:00      Local time', 'Quarter-finals', 'Fisht Stadium      Sochi', 'Russia      RUS', 'Croatia      CRO', '1-0', 59);
INSERT INTO `matches` VALUES (61, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '10 Jul 2018 - 21:00      Local time', 'Semi-finals', 'Saint Petersburg Stadium      St. Petersburg', 'France      FRA', 'Belgium      BEL', '1-0', 61);
INSERT INTO `matches` VALUES (62, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '11 Jul 2018 - 21:00      Local time', 'Semi-finals', 'Luzhniki Stadium      Moscow', 'Croatia      CRO', 'England      ENG', '1-0', 62);
INSERT INTO `matches` VALUES (63, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '14 Jul 2018 - 17:00      Local time', 'Play-off for third place', 'Saint Petersburg Stadium      St. Petersburg', 'Belgium      BEL', 'England      ENG', '2-0', 63);
INSERT INTO `matches` VALUES (64, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, '15 Jul 2018 - 18:00      Local time', 'Final', 'Luzhniki Stadium      Moscow', 'France      FRA', 'Croatia      CRO', '1-0', 64);
COMMIT;

-- ----------------------------
-- Table structure for players
-- ----------------------------
DROP TABLE IF EXISTS `players`;
CREATE TABLE `players` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `number` int NOT NULL,
  `name` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `role` varchar(64) NOT NULL,
  `image_address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_players_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players
-- ----------------------------
BEGIN;
INSERT INTO `players` VALUES (1, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Aaron MOOY', 'Australia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/312252_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (2, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'ABDALLA SAID', 'Egypt', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/230099_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (3, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Abdiel ARROYO', 'Panama', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/337225_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (4, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Abdoulaye DIALLO', 'Senegal', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395924_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (5, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'ABDULLAH ALKHAIBARI', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411624_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (6, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'ABDULLAH ALMUAIOUF', 'Saudi Arabia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404372_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (7, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'ABDULLAH OTAYF', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339474_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (8, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Abdullahi SHEHU', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369428_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (9, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'ABDULMALEK ALKHAIBRI', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/295184_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (10, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Abel AGUILAR', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/198243_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (11, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Achraf HAKIMI', 'Morocco', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400721_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (12, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Adama MBENGUE', 'Senegal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/408938_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (13, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Adem LJAJIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/319554_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (14, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Adil RAMI', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299876_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (15, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Adnan JANUZAJ', 'Belgium', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379910_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (16, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Adolfo MACHADO', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/295901_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (17, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'ADRIEN SILVA', 'Portugal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/319491_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (18, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'AHMED ELMOHAMADY', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/256311_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (19, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'AHMED FATHI', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/303682_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (20, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'AHMED HEGAZY', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/344640_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (21, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Ahmed KHALIL', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411655_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (22, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Ahmed MUSA', 'Nigeria', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/344714_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (23, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Ahmed TAGNAOUTI', 'Morocco', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371553_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (24, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Alan DZAGOEV', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/302539_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (25, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Albert GUDMUNDSSON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411384_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (26, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Alberto RODRIGUEZ', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/202638_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (27, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Albin EKDAL', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/360340_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (28, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Aldo CORZO', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/306194_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (29, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Aleksandar KOLAROV', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/291438_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (30, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Aleksandar MITROVIC', 'Serbia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/370456_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (31, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Aleksandar PRIJOVIC', 'Serbia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/294103_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (32, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Aleksandr EROKHIN', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404421_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (33, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Aleksandr GOLOVIN', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371639_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (34, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Alex IWOBI', 'Nigeria', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395533_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (35, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Alex RODRIGUEZ', 'Panama', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/357006_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (36, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Alexander SAMEDOV', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216435_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (37, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Alexey MIRANCHUK', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371765_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (38, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Alfred FINNBOGASON', 'Iceland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/359847_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (39, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Alfred GOMIS', 'Senegal', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/408940_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (40, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Alfred NDIAYE', 'Senegal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/274154_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (41, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Alfredo TALAVERA', 'Mexico', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/175546_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (42, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'ALI ALBULAYHI', 'Saudi Arabia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407983_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (43, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'Ali BEIRANVAND', 'IR Iran', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/380007_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (44, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'ALI GABR', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401838_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (45, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Ali MAALOUL', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/332643_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (46, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Alireza JAHANBAKHSH', 'IR Iran', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379886_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (47, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'ALISSON', 'Brazil', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/308370_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (48, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Alphonse AREOLA', 'France', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368840_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (49, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Alvaro ODRIOZOLA', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407625_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (50, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Amine HARIT', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372114_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (51, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Amir ABEDZADEH', 'IR Iran', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411643_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (52, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'AMR WARDA', 'Egypt', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/363867_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (53, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Anderson SANTAMARIA', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398457_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (54, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Andre CARRILLO', 'Peru', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349696_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (55, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'ANDRE SILVA', 'Portugal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384756_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (56, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Andreas CHRISTENSEN', 'Denmark', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401281_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (57, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Andreas CORNELIUS', 'Denmark', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/360188_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (58, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Andreas GRANQVIST', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/214667_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (59, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Andrei LUNEV', 'Russia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411573_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (60, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Andrej KRAMARIC', 'Croatia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336472_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (61, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Andres GUARDADO', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/251352_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (62, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Andres INIESTA', 'Spain', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/183857_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (63, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Andrew NABBOUT', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411241_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (64, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Andrey SEMENOV', 'Russia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379985_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (65, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Andrija ZIVKOVIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375538_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (66, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Andy POLO', 'Peru', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/394981_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (67, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Angel DI MARIA', 'Argentina', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/266800_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (68, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Anibal GODOY', 'Panama', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269514_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (69, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Anice BADRI', 'Tunisia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407145_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (70, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Ante REBIC', 'Croatia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369058_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (71, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'ANTHONY LOPES', 'Portugal', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/373077_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (72, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Antoine GRIEZMANN', 'France', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336435_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (73, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Anton MIRANCHUK', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411574_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (74, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Antonio RUEDIGER', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379955_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (75, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Antonio RUKAVINA', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/291447_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (76, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Ari SKULASON', 'Iceland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300371_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (77, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Arkadiusz MILIK', 'Poland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/362823_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (78, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Armando COOPER', 'Panama', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/267700_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (79, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Arnor TRAUSTASON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401147_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (80, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Aron GUNNARSSON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300382_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (81, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Artem DZYUBA', 'Russia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358889_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (82, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Artur JEDRZEJCZYK', 'Poland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270895_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (83, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Ashkan DEJAGAH', 'IR Iran', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/196812_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (84, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Ashley  YOUNG', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299962_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (85, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Axel WITSEL', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/290821_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (86, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'AYMAN ASHRAF', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/306460_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (87, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Aymen MATHLOUTHI', 'Tunisia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/212413_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (88, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Ayoub EL KAABI', 'Morocco', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411678_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (89, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Aziz BEHICH', 'Australia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349342_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (90, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Aziz BOUHADDOUZ', 'Morocco', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407125_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (91, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Bartosz BERESZYNSKI', 'Poland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/370435_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (92, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Bartosz BIALKOWSKI', 'Poland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270890_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (93, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Bassem SRARFI', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407144_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (94, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Benjamin MENDY', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/335995_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (95, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Benjamin PAVARD', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411471_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (96, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'BERNARDO SILVA', 'Portugal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395205_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (97, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'BETO', 'Portugal', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/214404_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (98, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Birkir BJARNASON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300376_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (99, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Birkir SAEVARSSON', 'Iceland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300344_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (100, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Bjorn SIGURDARSON', 'Iceland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/359845_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (101, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Blaise MATUIDI', 'France', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358014_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (102, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Blas PEREZ', 'Panama', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/202039_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (103, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Blerim DZEMAILI', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216646_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (104, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Brad JONES', 'Australia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/181467_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (105, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Branislav IVANOVIC', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/214388_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (106, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Breel EMBOLO', 'Switzerland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/393480_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (107, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'BRUNO ALVES', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/210213_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (108, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'BRUNO FERNANDES', 'Portugal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395206_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (109, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Bryan IDOWU', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411700_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (110, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Bryan OVIEDO', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270149_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (111, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Bryan RUIZ', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/214876_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (112, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Camilo VARGAS', 'Colombia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/360642_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (113, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Carlos BACCA', 'Colombia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349512_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (114, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Carlos CACEDA', 'Peru', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/275431_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (115, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Carlos SALCEDO', 'Mexico', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395518_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (116, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Carlos SANCHEZ', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/280487_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (117, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Carlos SANCHEZ', 'Uruguay', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/392673_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (118, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Carlos VELA', 'Mexico', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/234552_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (119, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'CASEMIRO', 'Brazil', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/308386_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (120, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'CASSIO', 'Brazil', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/266773_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (121, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'CEDRIC', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336491_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (122, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Celso BORGES', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/236530_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (123, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Cesar AZPILICUETA', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270948_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (124, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Cheikh NDOYE', 'Senegal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395925_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (125, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Cheikhou KOUYATE', 'Senegal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/353765_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (126, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Chidozie AWAZIEM', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407163_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (127, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Christian BOLANOS', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/183796_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (128, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Christian CUEVA', 'Peru', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349700_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (129, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Christian ERIKSEN', 'Denmark', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/321716_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (130, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Christian RAMOS', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/228728_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (131, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Corentin TOLISSO', 'France', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404566_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (132, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Cristhian STUANI', 'Uruguay', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/229506_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (133, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Cristian ANSALDI', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/298593_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (134, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Cristian GAMBOA', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/307026_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (135, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Cristian PAVON', 'Argentina', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371828_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (136, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Cristian RODRIGUEZ', 'Uruguay', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216567_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (137, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Cristian ZAPATA', 'Colombia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/200209_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (138, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'CRISTIANO RONALDO', 'Portugal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/201200_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (139, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Daler KUZIAEV', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411572_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (140, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Dani CARVAJAL', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/380048_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (141, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Daniel AKPEYI', 'Nigeria', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/230229_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (142, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Daniel ARZANI', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/389503_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (143, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Daniel COLINDRES', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/361029_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (144, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Danijel SUBASIC', 'Croatia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299887_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (145, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'DANILO', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/335656_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (146, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Danny ROSE', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/274036_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (147, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Danny VUKOVIC', 'Australia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/197419_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (148, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Danny WELBECK', 'England', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/274034_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (149, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'David DE GEA', 'Spain', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269859_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (150, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'David GUZMAN', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270143_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (151, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'David OSPINA', 'Colombia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/228686_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (152, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'David SILVA', 'Spain', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/200176_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (153, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Davinson SANCHEZ', 'Colombia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386013_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (154, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Dawid KOWNACKI', 'Poland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411482_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (155, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Dedryck BOYATA', 'Belgium', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358118_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (156, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Dejan LOVREN', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/312432_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (157, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Dele ALLI', 'England', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401298_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (158, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Denis CHERYSHEV', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358883_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (159, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Denis ZAKARIA', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401448_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (160, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Diafra SAKHO', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/408939_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (161, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Diego COSTA', 'Spain', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/367920_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (162, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Diego GODIN', 'Uruguay', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/229499_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (163, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Diego LAXALT', 'Uruguay', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368657_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (164, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Dimitrios PETRATOS', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/333076_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (165, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Djibril SIDIBE', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398682_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (166, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Domagoj VIDA', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299896_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (167, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'Dominik LIVAKOVIC', 'Croatia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369029_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (168, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'DOUGLAS COSTA', 'Brazil', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/305070_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (169, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Dries MERTENS', 'Belgium', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358114_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (170, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Duje CALETA-CAR', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372424_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (171, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Dusan TADIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/298698_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (172, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Dusko TOSIC', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/212308_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (173, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Dylan BRONN', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411653_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (174, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Eden HAZARD', 'Belgium', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/273996_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (175, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'EDERSON', 'Brazil', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395427_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (176, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Edgar BARCENAS', 'Panama', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400416_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (177, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Edinson CAVANI', 'Uruguay', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/267834_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (178, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Edison FLORES', 'Peru', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/394797_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (179, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Edson ALVAREZ', 'Mexico', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400634_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (180, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Eduardo SALVIO', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/268992_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (181, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Ehsan HAJI SAFI', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/288961_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (182, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'Eiji KAWASHIMA', 'Japan', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/198117_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (183, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Elderson ECHIEJILE', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/267647_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (184, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Ellyes SKHIRI', 'Tunisia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411658_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (185, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Emil FORSBERG', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398550_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (186, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Emil HALLFREDSSON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300348_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (187, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Emil KRAFTH', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398561_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (188, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Enzo PEREZ', 'Argentina', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/316997_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (189, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Eric  DIER', 'England', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369400_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (190, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Eric DAVIS', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/337232_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (191, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Erick GUTIERREZ', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386332_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (192, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'ESSAM ELHADARY', 'Egypt', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/155050_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (193, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Ever BANEGA', 'Argentina', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/266790_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (194, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Fabian DELPH', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/306520_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (195, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Fabian SCHAER', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356411_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (196, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'FAGNER', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/266774_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (197, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'FAHAD ALMUWALLAD', 'Saudi Arabia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339470_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (198, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Fakhreddine BEN YOUSSEF', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/364668_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (199, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Farid DIAZ', 'Colombia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/394417_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (200, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Farouk BEN MUSTAPHA', 'Tunisia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/320518_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (201, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Faycal FAJR', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395756_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (202, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Federico FAZIO', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/266784_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (203, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Fedor KUDRIASHOV', 'Russia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404424_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (204, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Fedor SMOLOV', 'Russia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358871_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (205, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Felipe BALOY', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/201720_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (206, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Ferjani SASSI', 'Tunisia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/370575_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (207, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'FERNANDINHO', 'Brazil', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/208016_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (208, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Fernando MUSLERA', 'Uruguay', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/229498_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (209, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Fidel ESCOBAR', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385030_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (210, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Filip BRADARIC', 'Croatia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402149_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (211, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Filip HELANDER', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395270_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (212, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Filip KOSTIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401178_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (213, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'FILIPE LUIS', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/217161_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (214, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Florian THAUVIN', 'France', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368965_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (215, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Francis UZOHO', 'Nigeria', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372607_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (216, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Francisco CALVO', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339797_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (217, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Franco ARMANI', 'Argentina', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398422_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (218, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Francois MOUBANDJE', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398508_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (219, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'FRED', 'Brazil', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/394018_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (220, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Frederik RONNOW', 'Denmark', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401283_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (221, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Frederik SCHRAM', 'Iceland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411385_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (222, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Gabriel GOMEZ', 'Panama', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/197912_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (223, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'GABRIEL JESUS', 'Brazil', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386559_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (224, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Gabriel MERCADO', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/266796_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (225, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Gabriel TORRES', 'Panama', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/239360_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (226, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Gaku SHIBASAKI', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/307719_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (227, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Gary CAHILL', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/305764_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (228, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Gaston SILVA', 'Uruguay', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/332883_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (229, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Gelson FERNANDES', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216650_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (230, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'GELSON MARTINS', 'Portugal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384766_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (231, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Gen SHOJI', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384847_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (232, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Genki HARAGUCHI', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/347718_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (233, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Gerard PIQUE', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216973_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (234, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Ghanem SAISS', 'Morocco', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398599_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (235, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Ghaylen CHAALELI', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407141_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (236, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Giancarlo GONZALEZ', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/268821_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (237, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Giorgian DE ARRASCAETA', 'Uruguay', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368652_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (238, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Giovani DOS SANTOS', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/234551_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (239, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Giovani LO CELSO', 'Argentina', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395414_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (240, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'GO Yohan', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375627_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (241, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'GONCALO GUEDES', 'Portugal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384751_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (242, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Gonzalo HIGUAIN', 'Argentina', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/271550_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (243, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Gotoku SAKAI', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/321736_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (244, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Granit XHAKA', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/311558_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (245, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Grzegorz KRYCHOWIAK', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269735_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (246, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Guillermo OCHOA', 'Mexico', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/215285_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (247, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Guillermo VARELA', 'Uruguay', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368660_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (248, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Gustav SVENSSON', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/406882_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (249, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Gylfi SIGURDSSON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300377_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (250, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Hakim ZIYACH', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395759_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (251, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Hamdi NAGUEZ', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401797_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (252, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Hamza MENDYL', 'Morocco', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401882_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (253, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Hannes HALLDORSSON', 'Iceland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/359843_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (254, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Haris SEFEROVIC', 'Switzerland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/311554_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (255, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Harold CUMMINGS', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/337231_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (256, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Harry KANE', 'England', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369419_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (257, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Harry MAGUIRE', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407498_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (258, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'HATAN BAHBRI', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339485_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (259, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Hector HERRERA', 'Mexico', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/329092_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (260, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Hector MORENO', 'Mexico', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/238112_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (261, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Henrik DALSGAARD', 'Denmark', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/318477_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (262, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Hiroki SAKAI', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/350003_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (263, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Hirving  LOZANO', 'Mexico', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386337_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (264, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Holmar EYJOLFSSON', 'Iceland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300369_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (265, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'HONG Chul', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/329912_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (266, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Hordur MAGNUSSON', 'Iceland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401146_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (267, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Hotaru YAMAGUCHI', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356466_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (268, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Hugo AYALA', 'Mexico', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/309592_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (269, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Hugo LLORIS', 'France', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/297105_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (270, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'HUSSAIN ALMOQAHWI', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/390000_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (271, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'HWANG Heechan', 'Korea Republic', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395083_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (272, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Iago ASPAS', 'Spain', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402138_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (273, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Ian SMITH', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/389725_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (274, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Idrissa Gana GUEYE', 'Senegal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/332314_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (275, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Igor AKINFEEV', 'Russia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/215017_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (276, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Igor SMOLNIKOV', 'Russia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375357_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (277, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Ikechukwu EZENWA', 'Nigeria', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/273287_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (278, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Ilkay GUENDOGAN', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358690_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (279, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Ilya KUTEPOV', 'Russia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404425_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (280, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Isaac Kiese THELIN', 'Sweden', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395273_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (281, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'ISCO', 'Spain', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/313374_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (282, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Ismael DIAZ', 'Panama', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372342_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (283, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Ismaila SARR', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401889_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (284, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Iury GAZINSKY', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379988_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (285, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Ivan PERISIC', 'Croatia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/359381_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (286, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Ivan RAKITIC', 'Croatia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/296633_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (287, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Ivan STRINIC', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/357988_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (288, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Jacek GORALSKI', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402079_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (289, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Jack BUTLAND', 'England', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/344536_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (290, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Jackson IRVINE', 'Australia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/355775_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (291, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Jaime PENEDO', 'Panama', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/213770_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (292, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Jakub BLASZCZYKOWSKI', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216944_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (293, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'James MEREDITH', 'Australia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/397636_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (294, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'James RODRIGUEZ', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269058_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (295, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Jamie MacLAREN', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368899_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (296, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Jamie VARDY', 'England', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400820_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (297, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Jan BEDNAREK', 'Poland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/406995_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (298, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Jan VERTONGHEN', 'Belgium', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/290904_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (299, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'JANG Hyunsoo', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336682_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (300, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Jannik VESTERGAARD', 'Denmark', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358302_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (301, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Javier AQUINO', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/350124_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (302, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Javier HERNANDEZ', 'Mexico', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/228599_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (303, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Javier MASCHERANO', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/182372_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (304, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Jefferson  LERMA', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395550_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (305, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Jefferson FARFAN', 'Peru', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/201748_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (306, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Jens Stryger LARSEN', 'Denmark', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395455_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (307, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Jerome BOATENG', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299442_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (308, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Jesse  LINGARD', 'England', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398743_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (309, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Jesus CORONA', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/314918_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (310, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Jesus GALLARDO', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402772_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (311, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Jimmy DURMAZ', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/365630_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (312, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'JO Hyeonwoo', 'Korea Republic', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/397753_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (313, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'JOAO MARIO', 'Portugal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368700_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (314, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'JOAO MOUTINHO', 'Portugal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/200199_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (315, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Joel CAMPBELL', 'Costa Rica', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/307529_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (316, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Joel OBI', 'Nigeria', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/329076_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (317, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Johan DJOUROU', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216645_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (318, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Johan MOJICA', 'Colombia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/394500_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (319, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Johan VENEGAS', 'Costa Rica', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395354_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (320, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Johann GUDMUNDSSON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300351_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (321, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'John GUIDETTI', 'Sweden', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398551_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (322, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'John Obi MIKEL', 'Nigeria', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/234463_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (323, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'John OGU', 'Nigeria', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/367504_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (324, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'John STONES', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369434_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (325, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Johnny ACOSTA', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339447_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (326, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Jon BODVARSSON', 'Iceland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401145_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (327, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Jonas HECTOR', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401377_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (328, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Jonas KNUDSEN', 'Denmark', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/365738_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (329, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Jonas LOSSL', 'Denmark', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/318462_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (330, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Jonathan DOS SANTOS', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/318612_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (331, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Jonathan URRETAVISCAYA', 'Uruguay', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/305384_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (332, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Jordan HENDERSON', 'England', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356189_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (333, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Jordan PICKFORD', 'England', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336022_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (334, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Jordi ALBA', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/306954_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (335, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Jose CALDERON', 'Panama', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/198478_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (336, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Jose CARVALLO', 'Peru', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/229480_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (337, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Jose CORONA', 'Mexico', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/195231_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (338, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Jose CUADRADO', 'Colombia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411340_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (339, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'JOSE FONTE', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398511_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (340, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Jose GIMENEZ', 'Uruguay', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368655_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (341, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Jose IZQUIERDO', 'Colombia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411341_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (342, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Jose Luis RODRIGUEZ', 'Panama', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411176_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (343, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Joshua KIMMICH', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386413_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (344, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Joshua RISDON', 'Australia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/397717_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (345, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Josip DRMIC', 'Switzerland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356399_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (346, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Josip PIVARIC', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375261_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (347, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'JU Sejong', 'Korea Republic', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/390529_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (348, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Juan CUADRADO', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/309714_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (349, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Juan QUINTERO', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356704_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (350, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Julian BRANDT', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385947_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (351, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Julian DRAXLER', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358692_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (352, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'JUNG Seunghyun', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395087_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (353, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'JUNG Wooyoung', 'Korea Republic', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356534_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (354, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'KAHRABA', 'Egypt', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369215_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (355, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Kalidou KOULIBALY', 'Senegal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339820_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (356, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Kamil GLIK', 'Poland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269695_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (357, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Kamil GROSICKI', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269706_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (358, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Kara MBODJI', 'Senegal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/353758_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (359, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Kari ARNASON', 'Iceland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/231598_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (360, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Karim ANSARIFARD', 'IR Iran', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/330659_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (361, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Karim EL AHMADI', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/232674_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (362, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Karl-Johan JOHNSSON', 'Sweden', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398556_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (363, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Karol LINETTY', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401277_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (364, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Kasper  SCHMEICHEL', 'Denmark', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/278388_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (365, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Kasper DOLBERG', 'Denmark', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402096_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (366, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Keisuke HONDA', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/233500_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (367, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Keita BALDE', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401888_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (368, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Kelechi IHEANACHO', 'Nigeria', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372542_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (369, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Kendall WASTON', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/236536_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (370, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Kenner GUTIERREZ', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/307016_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (371, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Kenneth OMERUO', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/315424_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (372, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Kepa ARRIZABALAGA', 'Spain', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369110_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (373, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Kevin DE BRUYNE', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358120_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (374, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Kevin TRAPP', 'Germany', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/274179_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (375, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'Keylor NAVAS', 'Costa Rica', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/199175_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (376, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Khadim NDIAYE', 'Senegal', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/353111_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (377, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Khalid BOUTAIB', 'Morocco', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401884_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (378, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'KI Sungyueng', 'Korea Republic', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/268406_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (379, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Kieran TRIPPIER', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/306504_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (380, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'KIM Jinhyeon', 'Korea Republic', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/268426_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (381, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'KIM Minwoo', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/274285_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (382, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'KIM Seunggyu', 'Korea Republic', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/274281_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (383, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'KIM Shinwook', 'Korea Republic', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/321745_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (384, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'KIM Younggwon', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375754_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (385, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Koen CASTEELS', 'Belgium', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/373315_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (386, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'KOKE', 'Spain', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/313410_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (387, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'KOO Jacheol', 'Korea Republic', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/291393_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (388, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Kosuke NAKAMURA', 'Japan', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/331184_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (389, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Kristoffer NORDFELDT', 'Sweden', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/360496_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (390, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Kyle WALKER', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356750_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (391, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Kylian MBAPPE', 'France', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/389867_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (392, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Lamine GASSAMA', 'Senegal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/319348_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (393, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Lasse SCHONE', 'Denmark', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/313907_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (394, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Leander DENDONCKER', 'Belgium', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402015_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (395, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'LEE Jaesung', 'Korea Republic', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/390525_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (396, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'LEE Seungwoo', 'Korea Republic', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/390081_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (397, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'LEE Yong', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/363578_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (398, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Leon BALOGUN', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402251_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (399, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Leon GORETZKA', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379953_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (400, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Leonel MOREIRA', 'Costa Rica', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270136_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (401, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Lionel MESSI', 'Argentina', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/229397_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (402, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Lovre KALINIC', 'Croatia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/376287_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (403, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Lucas BIGLIA', 'Argentina', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/200133_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (404, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Lucas HERNANDEZ', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411470_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (405, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Lucas TORREIRA', 'Uruguay', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371670_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (406, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Lucas VAZQUEZ', 'Spain', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400713_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (407, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Ludwig AUGUSTINSSON', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395264_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (408, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Luis ADVINCULA', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349697_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (409, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Luis MURIEL', 'Colombia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339731_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (410, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Luis OVALLE', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/267688_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (411, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Luis SUAREZ', 'Uruguay', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270775_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (412, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Luis TEJADA', 'Panama', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/213780_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (413, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Luka JOVIC', 'Serbia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385536_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (414, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Luka MILIVOJEVIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/365641_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (415, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Luka MODRIC', 'Croatia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/241559_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (416, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Lukas LERAGER', 'Denmark', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/405205_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (417, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Lukasz FABIANSKI', 'Poland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216931_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (418, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Lukasz PISZCZEK', 'Poland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216955_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (419, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Lukasz TEODORCZYK', 'Poland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/367469_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (420, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Maciej RYBUS', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299687_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (421, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Mahdi TORABI', 'IR Iran', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/390535_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (422, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'MAHMOUD HAMDY', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411607_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (423, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Majid HOSSEINI', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371735_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (424, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Makoto HASEBE', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/289027_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (425, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Mame DIOUF', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/330687_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (426, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'MANSOUR ALHARBI', 'Saudi Arabia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/347316_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (427, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Manuel AKANJI', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/405178_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (428, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Manuel DA COSTA', 'Morocco', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299073_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (429, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'MANUEL FERNANDES', 'Portugal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/201099_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (430, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'Manuel NEUER', 'Germany', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/228912_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (431, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Marc-Andre TER STEGEN', 'Germany', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/309302_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (432, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'MARCELO', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/218284_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (433, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Marcelo BROZOVIC', 'Croatia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/380000_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (434, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Marco ASENSIO', 'Spain', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400715_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (435, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Marco FABIAN', 'Mexico', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/319311_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (436, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Marco REUS', 'Germany', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/352394_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (437, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Marcos ACUNA', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401204_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (438, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Marcos ROJO', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/318688_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (439, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Marcos URENA', 'Costa Rica', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/270144_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (440, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Marcus BERG', 'Sweden', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/297243_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (441, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Marcus RASHFORD', 'England', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401470_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (442, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Marcus ROHDEN', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398549_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (443, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'MARIO FERNANDES', 'Russia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/312866_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (444, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Mario GAVRANOVIC', 'Switzerland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/319470_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (445, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Mario GOMEZ', 'Germany', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216784_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (446, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Mario MANDZUKIC', 'Croatia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375518_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (447, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'MARIO RUI', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336510_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (448, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Mark MILLIGAN', 'Australia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/197411_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (449, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Marko DMITROVIC', 'Serbia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401177_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (450, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Marko GRUJIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385537_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (451, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Marko PJACA', 'Croatia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369057_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (452, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Marouane FELLAINI', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/290902_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (453, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'MARQUINHOS', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/332946_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (454, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Martin BRAITHWAITE', 'Denmark', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372857_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (455, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Martin CACERES', 'Uruguay', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/267829_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (456, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Martin CAMPANA', 'Uruguay', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/312993_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (457, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Martin OLSSON', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358053_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (458, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Martin SILVA', 'Uruguay', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/175629_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (459, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Marvin PLATTENHARDT', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/309312_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (460, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'MARWAN MOHSEN', 'Egypt', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339900_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (461, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Masaaki HIGASHIGUCHI', 'Japan', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356269_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (462, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Masoud SHOJAEI', 'IR Iran', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/213170_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (463, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Massimo LUONGO', 'Australia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339116_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (464, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Mateo KOVACIC', 'Croatia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339987_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (465, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Mateus URIBE', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398409_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (466, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Mathew LECKIE', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/321697_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (467, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'Mathew RYAN', 'Australia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339117_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (468, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Mathias  JORGENSEN', 'Denmark', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/318485_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (469, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Matias VECINO', 'Uruguay', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/337196_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (470, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Mats HUMMELS', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/311150_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (471, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Matthew JURMAN', 'Australia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/306404_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (472, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Matthias GINTER', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379736_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (473, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Maximiliano GOMEZ', 'Uruguay', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407384_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (474, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Maximiliano MEZA', 'Argentina', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411433_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (475, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Maximiliano PEREIRA', 'Uruguay', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/286481_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (476, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Maya YOSHIDA', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/271253_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (477, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Mbark BOUSSOUFA', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/296799_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (478, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Mbaye NIANG', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336000_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (479, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Mehdi BENATIA', 'Morocco', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/305954_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (480, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Mehdi CARCELA', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/290868_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (481, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Mehdi TAREMI', 'IR Iran', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/388475_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (482, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'Mesut OEZIL', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/305036_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (483, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Michael KROHN-DEHLI', 'Denmark', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/302550_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (484, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Michael LANG', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356407_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (485, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Michael MURILLO', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385031_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (486, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Michal PAZDAN', 'Poland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/297356_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (487, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Michy BATSHUAYI', 'Belgium', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/378835_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (488, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Miguel ARAUJO', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368000_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (489, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Miguel BORJA', 'Colombia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369538_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (490, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Miguel LAYUN', 'Mexico', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371044_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (491, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Miguel TRAUCO', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/397791_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (492, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Mikael LUSTIG', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300251_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (493, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Milad MOHAMMADI', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/390537_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (494, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Milan BADELJ', 'Croatia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/357991_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (495, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Milan RODIC', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411548_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (496, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Mile JEDINAK', 'Australia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/197514_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (497, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Milos DEGENEK', 'Australia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/331149_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (498, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Milos VELJKOVIC', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385852_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (499, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'MIRANDA', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/289958_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (500, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'MOHAMED ABDELSHAFY', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356053_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (501, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Mohamed BEN AMOR', 'Tunisia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401798_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (502, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'MOHAMED ELNENY', 'Egypt', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/332777_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (503, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'MOHAMED ELSHENAWY', 'Egypt', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/408948_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (504, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'MOHAMED KANNO', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407993_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (505, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'MOHAMED SALAH', 'Egypt', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/344654_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (506, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Mohammad Reza KHANZADEH', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379885_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (507, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'MOHAMMED ALBURAYK', 'Saudi Arabia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/397857_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (508, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'MOHAMMED ALOWAIS', 'Saudi Arabia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/396885_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (509, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'MOHAMMED ALSAHLAWI', 'Saudi Arabia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/288078_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (510, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 12, 'Monir EL KAJOUI', 'Morocco', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395755_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (511, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'MOON Seonmin', 'Korea Republic', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/314722_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (512, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Morteza POURALIGANJI', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/314249_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (513, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'MOTAZ HAWSAWI', 'Saudi Arabia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339477_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (514, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Mouez HASSEN', 'Tunisia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411654_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (515, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Moussa DEMBELE', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/290825_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (516, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 14, 'Moussa KONATE', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/353782_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (517, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Moussa SOW', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/327043_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (518, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Moussa WAGUE', 'Senegal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386256_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (519, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'MUHANNAD ASIRI', 'Saudi Arabia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/330914_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (520, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Nabil DIRAR', 'Morocco', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/296750_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (521, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Nabil FEKIR', 'France', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401458_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (522, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Nacer CHADLI', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358108_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (523, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'NACHO', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/400711_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (524, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Nacho MONREAL', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299369_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (525, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Nahitan NANDEZ', 'Uruguay', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386284_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (526, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 1, 'Nahuel GUZMAN', 'Argentina', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/200999_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (527, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Naim SLITI', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402235_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (528, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 2, 'Naomichi UEDA', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/331166_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (529, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 21, 'Nemanja MATIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/310082_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (530, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Nemanja RADONJIC', 'Serbia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385893_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (531, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 10, 'NEYMAR', 'Brazil', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/314197_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (532, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 13, 'Ngolo KANTE', 'France', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398681_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (533, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 23, 'Nick POPE', 'England', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411304_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (534, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'Nico ELVEDI', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398509_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (535, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Nicolai JORGENSEN', 'Denmark', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/360184_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (536, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Nicolas OTAMENDI', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/310116_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (537, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Nicolas TAGLIAFICO', 'Argentina', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/308322_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (538, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Niklas SUELE', 'Germany', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395488_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (539, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Nikola KALINIC', 'Croatia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/297379_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (540, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Nikola MILENKOVIC', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411544_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (541, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 22, 'Nilson LOYOLA', 'Peru', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398459_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (542, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Noureddine AMRABAT', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/291414_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (543, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Odion IGHALO', 'Nigeria', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/312997_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (544, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Ogenyi ONAZI', 'Nigeria', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/315429_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (545, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 8, 'Oghenekaro ETEBO', 'Nigeria', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395531_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (546, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'OH Bansuk', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411413_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (547, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 20, 'Ola TOIVONEN', 'Sweden', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300255_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (548, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 16, 'Olafur SKULASON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216678_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (549, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Olivier GIROUD', 'France', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358015_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (550, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 4, 'OMAR GABER', 'Egypt', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/344652_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (551, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'OMAR HAWSAWI', 'Saudi Arabia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385091_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (552, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Omid EBRAHIMI', 'IR Iran', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/346735_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (553, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 19, 'Oribe PERALTA', 'Mexico', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/227851_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (554, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'OSAMA HAWSAWI', 'Saudi Arabia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/278167_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (555, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'Oscar DUARTE', 'Costa Rica', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/312987_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (556, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 15, 'Oscar HILJEMARK', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372881_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (557, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 3, 'Oscar MURILLO', 'Colombia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/228688_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (558, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 11, 'Ousmane DEMBELE', 'France', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398680_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (559, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 5, 'Oussama HADDADI', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401801_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (560, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 9, 'Paolo GUERRERO', 'Peru', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/225497_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (561, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 7, 'Paolo HURTADO', 'Peru', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349685_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (562, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 17, 'Pape Alioune NDIAYE', 'Senegal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339919_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (563, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 6, 'PARK Jooho', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/268411_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (564, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 18, 'Patrick PEMBERTON', 'Costa Rica', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/214874_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (565, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Paul POGBA', 'France', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/367388_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (566, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'PAULINHO', 'Brazil', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/362727_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (567, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Paulo DYBALA', 'Argentina', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/392905_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (568, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Pedro AQUINO', 'Peru', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/397696_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (569, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Pedro GALLESE', 'Peru', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/275261_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (570, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'PEDRO GEROMEL', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398286_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (571, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Pejman MONTAZERI', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/251481_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (572, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'PEPE', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/275931_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (573, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Pepe REINA', 'Spain', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/175413_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (574, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Phil JONES', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358009_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (575, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'PHILIPPE COUTINHO', 'Brazil', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/308366_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (576, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Pione SISTO', 'Denmark', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395448_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (577, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Piotr ZIELINSKI', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/370436_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (578, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Pontus JANSSON', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/373312_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (579, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Predrag RAJKOVIC', 'Serbia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336393_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (580, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Presnel KIMPEMBE', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401459_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (581, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Radamel FALCAO', 'Colombia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/229444_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (582, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Rafael MARQUEZ', 'Mexico', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/178119_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (583, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Rafal KURZAWA', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411483_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (584, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Ragnar SIGURDSSON', 'Iceland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300343_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (585, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Raheem STERLING', 'England', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336043_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (586, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'RAMADAN SOBHY', 'Egypt', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401841_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (587, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Rami BEDOUI', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/273822_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (588, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Ramin REZAEIAN', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384797_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (589, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Randall AZOFEIFA', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/183794_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (590, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'RAPHAEL GUERREIRO', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395213_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (591, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Raphael VARANE', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/359440_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (592, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Rashid MAZAHERI', 'IR Iran', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/397792_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (593, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Raul JIMENEZ', 'Mexico', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356731_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (594, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Raul RUIDIAZ', 'Peru', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349703_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (595, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Remo FREULER', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402021_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (596, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'RENATO AUGUSTO', 'Brazil', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/218292_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (597, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Renato TAPIA', 'Peru', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/392903_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (598, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Reza GHOOCHANNEJHAD', 'IR Iran', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/362641_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (599, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'RICARDO', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368706_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (600, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Ricardo AVILA', 'Panama', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411177_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (601, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'RICARDO QUARESMA', 'Portugal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/189810_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (602, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Ricardo RODRIGUEZ', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/313559_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (603, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Robbie KRUSE', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/229043_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (604, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Robert LEWANDOWSKI', 'Poland', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299688_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (605, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'ROBERTO FIRMINO', 'Brazil', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/344547_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (606, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Robin OLSEN', 'Sweden', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398547_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (607, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Rodney WALLACE', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356986_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (608, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'RODRIGO', 'Spain', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/337175_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (609, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Rodrigo BENTANCUR', 'Uruguay', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/386538_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (610, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Roman BUERKI', 'Switzerland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356676_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (611, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Roman TORRES', 'Panama', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/198481_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (612, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Roman ZOBNIN', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404429_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (613, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Romelu LUKAKU', 'Belgium', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358112_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (614, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Roozbeh CHESHMI', 'IR Iran', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/406595_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (615, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'RUBEN DIAS', 'Portugal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384752_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (616, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Ruben LOFTUS-CHEEK', 'England', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411303_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (617, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'RUI PATRICIO', 'Portugal', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269768_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (618, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Runar RUNARSSON', 'Iceland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/406732_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (619, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Rurik GISLASON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/300380_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (620, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Ryota OHSHIMA', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395327_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (621, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Saber KHALIFA', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/329718_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (622, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Sadio MANE', 'Senegal', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/353790_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (623, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Saeid EZATOLAHI', 'IR Iran', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/371736_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (624, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Saifeddine KHAOUI', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411656_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (625, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'SALEM ALDAWSARI', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339745_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (626, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Salif SANE', 'Senegal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/370169_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (627, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'SALMAN ALFARAJ', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/352891_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (628, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'SAM MORSY', 'Egypt', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407023_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (629, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Saman GHODDOS', 'IR Iran', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411644_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (630, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Sami KHEDIRA', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/196900_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (631, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'SAMIR SAAD', 'Egypt', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/312951_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (632, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Samuel FRIDJONSSON', 'Iceland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411383_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (633, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Samuel UMTITI', 'France', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368846_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (634, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Santiago ARIAS', 'Colombia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/315614_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (635, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Sardar AZMOUN', 'IR Iran', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379887_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (636, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'SAUL', 'Spain', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369190_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (637, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Sebastian COATES', 'Uruguay', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/305382_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (638, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Sebastian LARSSON', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/214675_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (639, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Sebastian RUDY', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/275630_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (640, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Sergej MILINKOVIC-SAVIC', 'Serbia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/385545_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (641, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Sergey IGNASHEVICH', 'Russia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/186787_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (642, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Sergio AGUERO', 'Argentina', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/228528_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (643, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Sergio BUSQUETS', 'Spain', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/303034_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (644, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Sergio RAMOS', 'Spain', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216814_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (645, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'SHERIF EKRAMY', 'Egypt', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/184382_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (646, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'SHIKABALA', 'Egypt', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/230098_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (647, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Shinji KAGAWA', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/268596_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (648, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Shinji OKAZAKI', 'Japan', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/286278_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (649, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Sime VRSALJKO', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336485_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (650, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Simeon NWANKWO', 'Nigeria', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/411702_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (651, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Simon KJAER', 'Denmark', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/309962_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (652, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Simon MIGNOLET', 'Belgium', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/298738_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (653, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Slawomir PESZKO', 'Poland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216954_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (654, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Sofyan AMRABAT', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372266_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (655, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'SON Heungmin', 'Korea Republic', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/307849_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (656, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Stephan LICHTSTEINER', 'Switzerland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/196605_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (657, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Steve MANDANDA', 'France', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/254133_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (658, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Steven NZONZI', 'France', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/319327_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (659, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Steven ZUBER', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356415_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (660, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Sverrir INGASON', 'Iceland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401143_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (661, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Syam BEN YOUSSEF', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/329717_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (662, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'TAISEER ALJASSAM', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/218083_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (663, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'TAISON', 'Brazil', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/329039_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (664, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Takashi INUI', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/271255_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (665, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Takashi USAMI', 'Japan', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/307739_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (666, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'TAREK HAMED', 'Egypt', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395858_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (667, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'THIAGO', 'Spain', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/375512_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (668, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Thiago CIONEK', 'Poland', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398594_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (669, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'THIAGO SILVA', 'Brazil', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/289964_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (670, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Thibaut COURTOIS', 'Belgium', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358106_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (671, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Thomas DELANEY', 'Denmark', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372855_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (672, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Thomas LEMAR', 'France', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402049_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (673, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Thomas MEUNIER', 'Belgium', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358122_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (674, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Thomas MUELLER', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/321722_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (675, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Thomas VERMAELEN', 'Belgium', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216880_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (676, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Thorgan HAZARD', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/378834_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (677, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Tim CAHILL', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/213001_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (678, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Timo WERNER', 'Germany', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404357_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (679, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Tin JEDVAJ', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372987_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (680, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Toby ALDERWEIRELD', 'Belgium', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/290864_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (681, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Tom ROGIC', 'Australia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/367641_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (682, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Tomi JURIC', 'Australia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/379785_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (683, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Tomoaki MAKINO', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/268477_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (684, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Toni KROOS', 'Germany', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/275162_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (685, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Trent ALEXANDER-ARNOLD', 'England', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/390761_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (686, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Trent SAINSBURY', 'Australia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339118_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (687, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'TREZIGUET', 'Egypt', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/363863_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (688, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Tyronne EBUEHI', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/407161_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (689, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Uros SPAJIC', 'Serbia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/404632_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (690, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Vahid AMIRI', 'IR Iran', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384795_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (691, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Valentin PIMENTEL', 'Panama', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/392859_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (692, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Valon BEHRAMI', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216627_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (693, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Vedran CORLUKA', 'Croatia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/297373_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (694, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Victor LINDELOF', 'Sweden', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395283_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (695, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Victor MOSES', 'Nigeria', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/274090_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (696, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Viktor CLAESSON', 'Sweden', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401465_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (697, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Viktor FISCHER', 'Denmark', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336131_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (698, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Vincent KOMPANY', 'Belgium', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216004_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (699, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Vladimir GABULOV', 'Russia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/186785_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (700, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Vladimir GRANAT', 'Russia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/358046_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (701, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Vladimir STOJKOVIC', 'Serbia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/214386_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (702, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Wahbi KHAZRI', 'Tunisia', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/364669_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (703, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Wataru ENDO', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395318_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (704, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Wilder CARTAGENA', 'Peru', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401945_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (705, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Wilfred NDIDI', 'Nigeria', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/369512_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (706, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Wilfredo CABALLERO', 'Argentina', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/181440_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (707, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'WILLIAM', 'Portugal', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/376349_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (708, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'William EKONG', 'Nigeria', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395529_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (709, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'William KVIST', 'Denmark', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/299421_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (710, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'WILLIAN', 'Brazil', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/218306_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (711, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Wilmar BARRIOS', 'Colombia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/394377_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (712, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Wojciech SZCZESNY', 'Poland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/269746_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (713, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Xherdan SHAQIRI', 'Switzerland', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/321653_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (714, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'YAHIA ALSHEHRI', 'Saudi Arabia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/347165_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (715, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Yann SOMMER', 'Switzerland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/319460_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (716, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Yannick CARRASCO', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/398653_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (717, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'YASSER ALMOSAILEM', 'Saudi Arabia', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/198514_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (718, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'YASSER ALSHAHRANI', 'Saudi Arabia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/339482_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (719, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Yassine BOUNOU', 'Morocco', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/356956_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (720, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Yassine MERIAH', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395998_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (721, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Yeltsin TEJEDA', 'Costa Rica', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/307541_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (722, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Yerry MINA', 'Colombia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/395552_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (723, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Yohan BEN ALOUANE', 'Tunisia', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/326645_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (724, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Yoshimar YOTUN', 'Peru', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/349698_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (725, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Yoshinori MUTO', 'Japan', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/384846_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (726, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Younes BELHANDA', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/353205_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (727, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Youri TIELEMANS', 'Belgium', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401444_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (728, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Youssef AIT BENNASSER', 'Morocco', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/372130_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (729, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Youssef EN NESYRI', 'Morocco', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/401885_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (730, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Youssouf SABALY', 'Senegal', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/368848_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (731, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'YUN Youngsun', 'Korea Republic', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/329895_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (732, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Yury ZHIRKOV', 'Russia', 'Midfielder', 'https://api.fifa.com/api/v1/picture/players/2018fwc/216432_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (733, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Yussuf Yurary POULSEN', 'Denmark', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/336133_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (734, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Yuto NAGATOMO', 'Japan', 'Defender', 'https://api.fifa.com/api/v1/picture/players/2018fwc/291372_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (735, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Yuya OSAKO', 'Japan', 'Forward', 'https://api.fifa.com/api/v1/picture/players/2018fwc/275136_sq-300_jpg?allowDefaultPicture=true');
INSERT INTO `players` VALUES (736, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Yvon MVOGO', 'Switzerland', 'Goalkeeper', 'https://api.fifa.com/api/v1/picture/players/2018fwc/402022_sq-300_jpg?allowDefaultPicture=true');
COMMIT;

-- ----------------------------
-- Table structure for players_statistic_with_disciplinaries
-- ----------------------------
DROP TABLE IF EXISTS `players_statistic_with_disciplinaries`;
CREATE TABLE `players_statistic_with_disciplinaries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rank` int NOT NULL,
  `player_name` varchar(64) NOT NULL,
  `matches_payed` int DEFAULT NULL,
  `yellow_cards` int DEFAULT NULL,
  `second_yellow_cards` int DEFAULT NULL,
  `red_cards` int DEFAULT NULL,
  `fouls_committed` int DEFAULT NULL,
  `fouls_suffered` int DEFAULT NULL,
  `fouls_causing_penalty` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_players_statistic_with_disciplinaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players_statistic_with_disciplinaries
-- ----------------------------
BEGIN;
INSERT INTO `players_statistic_with_disciplinaries` VALUES (1, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 1, 'Carlos SANCHEZ', 3, 1, 0, 1, 6, 1, 2);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (2, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 2, 'Michael LANG', 3, 0, 0, 1, 3, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (3, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 3, 'Jerome BOATENG', 2, 0, 1, 0, 5, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (4, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 4, 'Igor SMOLNIKOV', 1, 0, 1, 0, 1, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (5, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 5, 'Sebastian LARSSON', 4, 3, 0, 0, 9, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (6, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 6, 'Ante REBIC', 6, 2, 0, 0, 21, 11, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (7, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 7, 'Javier MASCHERANO', 4, 2, 0, 0, 15, 6, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (8, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 8, 'Hector HERRERA', 4, 2, 0, 0, 15, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (9, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 9, 'Mario MANDZUKIC', 6, 2, 0, 0, 13, 11, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (10, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 10, 'Blaise MATUIDI', 5, 2, 0, 0, 12, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (11, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 11, 'Ngolo KANTE', 7, 2, 0, 0, 11, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (12, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 12, 'Sime VRSALJKO', 6, 2, 0, 0, 10, 7, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (13, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 13, 'Yussuf Yurary POULSEN', 3, 2, 0, 0, 9, 2, 2);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (14, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 14, 'Thomas MEUNIER', 5, 2, 0, 0, 9, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (15, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 15, 'Valon BEHRAMI', 4, 2, 0, 0, 8, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (16, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 16, 'Rodrigo BENTANCUR', 5, 2, 0, 0, 8, 7, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (17, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 17, 'Wilmar BARRIOS', 3, 2, 0, 0, 8, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (18, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 18, 'Lucas HERNANDEZ', 7, 2, 0, 0, 8, 15, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (19, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 19, 'Karim EL AHMADI', 3, 2, 0, 0, 7, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (20, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 20, 'Ferjani SASSI', 3, 2, 0, 0, 7, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (21, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 21, 'Harry MAGUIRE', 7, 2, 0, 0, 7, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (22, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 22, 'Nemanja MATIC', 3, 2, 0, 0, 6, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (23, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 23, 'Hector MORENO', 3, 2, 0, 0, 5, 0, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (24, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 24, 'Jan VERTONGHEN', 6, 2, 0, 0, 5, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (25, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 25, 'Mbaye NIANG', 3, 2, 0, 0, 5, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (26, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 26, 'Aleksandar MITROVIC', 3, 2, 0, 0, 5, 8, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (27, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 27, 'Iury GAZINSKY', 4, 2, 0, 0, 5, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (28, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 28, 'Michael MURILLO', 2, 2, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (29, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 29, 'Armando COOPER', 2, 2, 0, 0, 4, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (30, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 30, 'Toby ALDERWEIRELD', 6, 2, 0, 0, 4, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (31, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 31, 'Mikael LUSTIG', 4, 2, 0, 0, 4, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (32, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 32, 'CASEMIRO', 4, 2, 0, 0, 4, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (33, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 33, 'Mathias  JORGENSEN', 3, 2, 0, 0, 4, 2, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (34, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 34, 'Fabian SCHAER', 3, 2, 0, 0, 4, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (35, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 35, 'JUNG Wooyoung', 3, 2, 0, 0, 4, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (36, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 36, 'CRISTIANO RONALDO', 4, 2, 0, 0, 3, 14, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (37, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 37, 'Ever BANEGA', 3, 2, 0, 0, 3, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (38, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 38, 'Nicolas OTAMENDI', 4, 2, 0, 0, 3, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (39, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 39, 'Stephan LICHTSTEINER', 3, 2, 0, 0, 2, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (40, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 40, 'Kyle WALKER', 5, 2, 0, 0, 2, 5, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (41, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 41, 'Kylian MBAPPE', 7, 2, 0, 0, 1, 14, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (42, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 42, 'Aleksandr GOLOVIN', 4, 1, 0, 0, 16, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (43, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 43, 'Olivier GIROUD', 7, 1, 0, 0, 14, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (44, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 44, 'Paul POGBA', 6, 1, 0, 0, 14, 17, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (45, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 45, 'Ivan STRINIC', 6, 1, 0, 0, 11, 8, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (46, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 46, 'Thomas DELANEY', 4, 1, 0, 0, 11, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (47, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 47, 'Gabriel MERCADO', 3, 1, 0, 0, 10, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (48, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 48, 'Noureddine AMRABAT', 3, 1, 0, 0, 10, 8, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (49, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 49, 'Axel WITSEL', 6, 1, 0, 0, 9, 9, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (50, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 50, 'Ivan RAKITIC', 7, 1, 0, 0, 9, 20, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (51, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 51, 'Santiago ARIAS', 4, 1, 0, 0, 9, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (52, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 52, 'Sergej MILINKOVIC-SAVIC', 3, 1, 0, 0, 9, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (53, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 53, 'Jesse  LINGARD', 6, 1, 0, 0, 9, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (54, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 54, 'Benjamin PAVARD', 6, 1, 0, 0, 9, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (55, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 55, 'Roman ZOBNIN', 5, 1, 0, 0, 8, 9, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (56, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 56, 'Radamel FALCAO', 4, 1, 0, 0, 7, 9, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (57, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 57, 'FAGNER', 4, 1, 0, 0, 7, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (58, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 58, 'David GUZMAN', 3, 1, 0, 0, 7, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (59, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 59, 'AHMED FATHI', 3, 1, 0, 0, 7, 1, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (60, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 60, 'Gaku SHIBASAKI', 4, 1, 0, 0, 7, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (61, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 61, 'Dejan LOVREN', 7, 1, 0, 0, 7, 4, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (62, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 62, 'MOON Seonmin', 2, 1, 0, 0, 7, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (63, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 63, 'Idrissa Gana GUEYE', 3, 1, 0, 0, 7, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (64, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 64, 'Youssouf SABALY', 3, 1, 0, 0, 7, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (65, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 65, 'LEE Jaesung', 3, 1, 0, 0, 7, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (66, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 66, 'Anibal GODOY', 3, 1, 0, 0, 6, 10, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (67, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 67, 'Eden HAZARD', 6, 1, 0, 0, 6, 28, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (68, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 68, 'Makoto HASEBE', 4, 1, 0, 0, 6, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (69, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 69, 'Mathew LECKIE', 3, 1, 0, 0, 6, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (70, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 70, 'CEDRIC', 3, 1, 0, 0, 6, 2, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (71, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 71, 'Alfred FINNBOGASON', 3, 1, 0, 0, 6, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (72, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 72, 'LEE Yong', 3, 1, 0, 0, 6, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (73, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 73, 'TREZIGUET', 3, 1, 0, 0, 6, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (74, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 74, 'Vahid AMIRI', 3, 1, 0, 0, 6, 9, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (75, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 75, 'RAPHAEL GUERREIRO', 4, 1, 0, 0, 6, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (76, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 76, 'Mile JEDINAK', 3, 1, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (77, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 77, 'Gabriel GOMEZ', 3, 1, 0, 0, 5, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (78, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 78, 'John Obi MIKEL', 3, 1, 0, 0, 5, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (79, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 79, 'Mbark BOUSSOUFA', 3, 1, 0, 0, 5, 9, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (80, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 80, 'Sergio BUSQUETS', 4, 1, 0, 0, 5, 13, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (81, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 81, 'Mehdi BENATIA', 2, 1, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (82, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 82, 'Nicolas TAGLIAFICO', 4, 1, 0, 0, 5, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (83, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 83, 'Omid EBRAHIMI', 3, 1, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (84, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 84, 'Yoshimar YOTUN', 3, 1, 0, 0, 5, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (85, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 85, 'Kevin DE BRUYNE', 6, 1, 0, 0, 5, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (86, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 86, 'John STONES', 7, 1, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (87, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 87, 'Josip PIVARIC', 4, 1, 0, 0, 5, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (88, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 88, 'Alireza JAHANBAKHSH', 3, 1, 0, 0, 5, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (89, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 89, 'Sardar AZMOUN', 3, 1, 0, 0, 5, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (90, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 90, 'Marcelo BROZOVIC', 6, 1, 0, 0, 5, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (91, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 91, 'Fidel ESCOBAR', 3, 1, 0, 0, 5, 4, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (92, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 92, 'HWANG Heechan', 3, 1, 0, 0, 5, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (93, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 93, 'Carlos SALCEDO', 4, 1, 0, 0, 5, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (94, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 94, 'Pedro AQUINO', 3, 1, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (95, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 95, 'Viktor CLAESSON', 5, 1, 0, 0, 5, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (96, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 96, 'Ilya KUTEPOV', 5, 1, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (97, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 97, 'Ricardo AVILA', 2, 1, 0, 0, 5, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (98, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 98, 'RICARDO QUARESMA', 3, 1, 0, 0, 4, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (99, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 99, 'FERNANDINHO', 5, 1, 0, 0, 4, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (100, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 100, 'Luis TEJADA', 2, 1, 0, 0, 4, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (101, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 101, 'Gerard PIQUE', 4, 1, 0, 0, 4, 2, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (102, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 102, 'Lionel MESSI', 4, 1, 0, 0, 4, 15, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (103, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 103, 'James RODRIGUEZ', 3, 1, 0, 0, 4, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (104, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 104, 'Cristian GAMBOA', 3, 1, 0, 0, 4, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (105, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 105, 'Juan CUADRADO', 4, 1, 0, 0, 4, 12, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (106, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 106, 'Granit XHAKA', 4, 1, 0, 0, 4, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (107, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 107, 'NEYMAR', 5, 1, 0, 0, 4, 26, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (108, '1900-01-20 18:00:05', '1900-01-20 18:00:05', NULL, 108, 'Eric DAVIS', 2, 1, 0, 0, 4, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (109, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 109, 'Aziz BEHICH', 3, 1, 0, 0, 4, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (110, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 110, 'Carlos BACCA', 3, 1, 0, 0, 4, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (111, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 111, 'Fedor SMOLOV', 5, 1, 0, 0, 4, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (112, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 112, 'KIM Younggwon', 3, 1, 0, 0, 4, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (113, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 113, 'Joshua RISDON', 3, 1, 0, 0, 4, 1, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (114, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 114, 'Edgar BARCENAS', 3, 1, 0, 0, 4, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (115, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 115, 'Edson ALVAREZ', 4, 1, 0, 0, 4, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (116, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 116, 'Youri TIELEMANS', 4, 1, 0, 0, 4, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (117, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 117, 'Jesus GALLARDO', 4, 1, 0, 0, 4, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (118, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 118, 'Ghaylen CHAALELI', 1, 1, 0, 0, 4, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (119, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 119, 'Anice BADRI', 3, 1, 0, 0, 4, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (120, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 120, 'Mark MILLIGAN', 3, 1, 0, 0, 3, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (121, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 121, 'Masoud SHOJAEI', 1, 1, 0, 0, 3, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (122, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 122, 'TAISEER ALJASSAM', 2, 1, 0, 0, 3, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (123, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 123, 'Paolo GUERRERO', 3, 1, 0, 0, 3, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (124, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 124, 'Grzegorz KRYCHOWIAK', 3, 1, 0, 0, 3, 8, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (125, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 125, 'Vedran CORLUKA', 4, 1, 0, 0, 3, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (126, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 126, 'Emil HALLFREDSSON', 2, 1, 0, 0, 3, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (127, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 127, 'Joel CAMPBELL', 2, 1, 0, 0, 3, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (128, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 128, 'SON Heungmin', 3, 1, 0, 0, 3, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (129, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 129, 'Mats HUMMELS', 2, 1, 0, 0, 3, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (130, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 130, 'Xherdan SHAQIRI', 4, 1, 0, 0, 3, 8, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (131, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 131, 'Thomas MUELLER', 3, 1, 0, 0, 3, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (132, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 132, 'KIM Shinwook', 1, 1, 0, 0, 3, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (133, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 133, 'Karim ANSARIFARD', 3, 1, 0, 0, 3, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (134, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 134, 'Jordan HENDERSON', 5, 1, 0, 0, 3, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (135, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 135, 'Tom ROGIC', 3, 1, 0, 0, 3, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (136, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 136, 'Miguel LAYUN', 4, 1, 0, 0, 3, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (137, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 137, 'Renato TAPIA', 2, 1, 0, 0, 3, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (138, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 138, 'Johan MOJICA', 4, 1, 0, 0, 3, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (139, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 139, 'Denis ZAKARIA', 2, 1, 0, 0, 3, 1, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (140, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 140, 'Jacek GORALSKI', 2, 1, 0, 0, 3, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (141, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 141, 'Leon BALOGUN', 3, 1, 0, 0, 3, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (142, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 142, 'Corentin TOLISSO', 5, 1, 0, 0, 3, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (143, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 143, 'Ruben LOFTUS-CHEEK', 4, 1, 0, 0, 3, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (144, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 144, 'Bryan IDOWU', 3, 1, 0, 0, 3, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (145, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 145, 'Branislav IVANOVIC', 2, 1, 0, 0, 2, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (146, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 146, 'Cristian RODRIGUEZ', 5, 1, 0, 0, 2, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (147, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 147, 'Andres GUARDADO', 4, 1, 0, 0, 2, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (148, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 148, 'Takashi INUI', 4, 1, 0, 0, 2, 9, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (149, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 149, 'Manuel DA COSTA', 3, 1, 0, 0, 2, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (150, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 150, 'Domagoj VIDA', 6, 1, 0, 0, 2, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (151, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 151, 'PHILIPPE COUTINHO', 5, 1, 0, 0, 2, 7, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (152, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 152, 'Marcos ROJO', 3, 1, 0, 0, 2, 3, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (153, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 153, 'ADRIEN SILVA', 3, 1, 0, 0, 2, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (154, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 154, 'AHMED HEGAZY', 3, 1, 0, 0, 2, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (155, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 155, 'Paolo HURTADO', 1, 1, 0, 0, 2, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (156, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 156, 'Luka MILIVOJEVIC', 2, 1, 0, 0, 2, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (157, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 157, 'LEE Seungwoo', 2, 1, 0, 0, 2, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (158, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 158, 'William EKONG', 3, 1, 0, 0, 2, 1, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (159, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 159, 'Achraf HAKIMI', 3, 1, 0, 0, 2, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (160, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 160, 'ALI GABR', 3, 1, 0, 0, 2, 1, 1);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (161, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 161, 'Leander DENDONCKER', 1, 1, 0, 0, 2, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (162, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 162, 'Jan BEDNAREK', 3, 1, 0, 0, 2, 2, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (163, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 163, 'FILIPE LUIS', 2, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (164, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 164, 'Tomoaki MAKINO', 1, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (165, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 165, 'Birkir SAEVARSSON', 3, 1, 0, 0, 1, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (166, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 166, 'Adem LJAJIC', 3, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (167, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 167, 'Johnny ACOSTA', 3, 1, 0, 0, 1, 5, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (168, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 168, 'Francisco CALVO', 2, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (169, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 169, 'Albin EKDAL', 5, 1, 0, 0, 1, 8, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (170, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 170, 'Marko PJACA', 3, 1, 0, 0, 1, 4, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (171, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 171, 'Salif SANE', 3, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (172, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 172, 'Tin JEDVAJ', 1, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (173, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 173, 'Daniel ARZANI', 3, 1, 0, 0, 1, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (174, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 174, 'BRUNO FERNANDES', 2, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (175, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 175, 'Cheikh NDOYE', 2, 1, 0, 0, 1, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (176, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 176, 'John GUIDETTI', 2, 1, 0, 0, 1, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (177, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 177, 'Marcos ACUNA', 1, 1, 0, 0, 1, 3, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (178, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 178, 'SAM MORSY', 1, 1, 0, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (179, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 179, 'Eiji KAWASHIMA', 4, 1, 0, 0, 0, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (180, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 180, 'Kendall WASTON', 1, 1, 0, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (181, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 181, 'Ehsan HAJI SAFI', 3, 1, 0, 0, 0, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (182, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 182, 'Aleksandar PRIJOVIC', 1, 1, 0, 0, 0, 0, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (183, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 183, 'Pione SISTO', 4, 1, 0, 0, 0, 6, 0);
INSERT INTO `players_statistic_with_disciplinaries` VALUES (184, '1900-01-20 18:00:06', '1900-01-20 18:00:06', NULL, 184, 'Monir EL KAJOUI', 3, 1, 0, 0, 0, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for players_statistic_with_goals_scoreds
-- ----------------------------
DROP TABLE IF EXISTS `players_statistic_with_goals_scoreds`;
CREATE TABLE `players_statistic_with_goals_scoreds` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rank` int NOT NULL,
  `player_name` varchar(32) NOT NULL,
  `goals_scored` int NOT NULL,
  `assists` int NOT NULL,
  `minutes_played` int NOT NULL,
  `matches_played` int NOT NULL,
  `penalties_scored` int NOT NULL,
  `goals_scored_left` int DEFAULT '0',
  `goals_scored_right` int DEFAULT '0',
  `headed_goals` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_players_statistic_with_goals_scoreds_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players_statistic_with_goals_scoreds
-- ----------------------------
BEGIN;
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (1, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 1, 'Harry KANE', 6, 0, 573, 6, 3, 0, 4, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (2, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 2, 'Antoine GRIEZMANN', 4, 2, 570, 7, 3, 4, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (3, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 3, 'Romelu LUKAKU', 4, 1, 476, 6, 0, 2, 1, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (4, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 4, 'Denis CHERYSHEV', 4, 0, 304, 5, 0, 4, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (5, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 5, 'CRISTIANO RONALDO', 4, 0, 360, 4, 1, 1, 2, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (6, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 6, 'Kylian MBAPPE', 4, 0, 534, 7, 0, 1, 3, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (7, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 7, 'Artem DZYUBA', 3, 2, 333, 5, 1, 0, 2, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (8, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 8, 'Eden HAZARD', 3, 2, 518, 6, 1, 1, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (9, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 9, 'Mario MANDZUKIC', 3, 1, 608, 6, 0, 1, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (10, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 10, 'Ivan PERISIC', 3, 1, 632, 7, 0, 3, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (11, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 11, 'Yerry MINA', 3, 0, 300, 3, 0, 0, 0, 3);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (12, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 12, 'Diego COSTA', 3, 0, 320, 4, 0, 0, 3, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (13, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 13, 'Edinson CAVANI', 3, 0, 343, 4, 0, 1, 1, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (14, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 14, 'Wahbi KHAZRI', 2, 2, 264, 3, 0, 0, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (15, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 15, 'PHILIPPE COUTINHO', 2, 2, 436, 5, 0, 0, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (16, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 16, 'Takashi INUI', 2, 1, 292, 4, 0, 0, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (17, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 17, 'Luis SUAREZ', 2, 1, 450, 5, 0, 1, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (18, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 18, 'NEYMAR', 2, 1, 450, 5, 0, 1, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (19, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 19, 'Luka MODRIC', 2, 1, 694, 7, 1, 0, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (20, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 20, 'Sergio AGUERO', 2, 0, 178, 4, 0, 1, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (21, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 21, 'MOHAMED SALAH', 2, 0, 180, 2, 1, 2, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (22, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 22, 'Ahmed MUSA', 2, 0, 207, 3, 0, 0, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (23, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 23, 'Mile JEDINAK', 2, 0, 270, 3, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (24, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 24, 'SON Heungmin', 2, 0, 270, 3, 0, 2, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (25, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 25, 'Andreas GRANQVIST', 2, 0, 450, 5, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (26, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 26, 'John STONES', 2, 0, 645, 7, 0, 0, 0, 2);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (27, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 27, 'Juan QUINTERO', 1, 2, 310, 4, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (28, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 28, 'Lionel MESSI', 1, 2, 360, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (29, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 29, 'Aleksandr GOLOVIN', 1, 2, 402, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (30, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 30, 'Thomas MEUNIER', 1, 2, 450, 5, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (31, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 31, 'Kevin DE BRUYNE', 1, 2, 540, 6, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (32, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 32, 'Keisuke HONDA', 1, 1, 47, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (33, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 33, 'Milan BADELJ', 1, 1, 103, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (34, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 34, 'Paolo GUERRERO', 1, 1, 208, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (35, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 35, 'Marco REUS', 1, 1, 210, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (36, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 36, 'Marcos ROJO', 1, 1, 225, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (37, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 37, 'Shinji KAGAWA', 1, 1, 232, 3, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (38, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 38, 'Mbaye NIANG', 1, 1, 247, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (39, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 39, 'Gabriel MERCADO', 1, 1, 270, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (40, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 40, 'Victor MOSES', 1, 1, 270, 3, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (41, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 41, 'Dries MERTENS', 1, 1, 298, 6, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (42, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 42, 'Hirving  LOZANO', 1, 1, 317, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (43, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 43, 'Nacer CHADLI', 1, 1, 327, 6, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (44, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 44, 'Javier HERNANDEZ', 1, 1, 330, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (45, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 45, 'Juan CUADRADO', 1, 1, 331, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (46, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 46, 'Xherdan SHAQIRI', 1, 1, 351, 4, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (47, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 47, 'Christian ERIKSEN', 1, 1, 390, 4, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (48, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 48, 'Ola TOIVONEN', 1, 1, 400, 5, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (49, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 49, 'MARIO FERNANDES', 1, 1, 472, 5, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (50, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 50, 'Jesse  LINGARD', 1, 1, 527, 6, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (51, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 51, 'Kieran TRIPPIER', 1, 1, 580, 6, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (52, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 52, 'Domagoj VIDA', 1, 1, 630, 6, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (53, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 53, 'Harry MAGUIRE', 1, 1, 645, 7, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (54, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 54, 'Youssef EN NESYRI', 1, 0, 18, 1, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (55, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 55, 'Felipe BALOY', 1, 0, 21, 1, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (56, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 56, 'RENATO AUGUSTO', 1, 0, 50, 3, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (57, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 57, 'Iago ASPAS', 1, 0, 69, 3, 0, 0, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (58, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 58, 'ROBERTO FIRMINO', 1, 0, 82, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (59, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 59, 'Adnan JANUZAJ', 1, 0, 86, 1, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (60, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 60, 'Kendall WASTON', 1, 0, 90, 1, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (61, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 61, 'Josip DRMIC', 1, 0, 112, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (62, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 62, 'Michy BATSHUAYI', 1, 0, 113, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (63, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 63, 'Dylan BRONN', 1, 0, 114, 2, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (64, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 64, 'RICARDO QUARESMA', 1, 0, 116, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (65, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 65, 'Khalid BOUTAIB', 1, 0, 141, 2, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (66, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 66, 'NACHO', 1, 0, 160, 2, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (67, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 67, 'Karim ANSARIFARD', 1, 0, 178, 3, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (68, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 68, 'Ferjani SASSI', 1, 0, 194, 3, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (69, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 69, 'Moussa WAGUE', 1, 0, 196, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (70, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 70, 'Mathias  JORGENSEN', 1, 0, 219, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (71, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 71, 'Jan BEDNAREK', 1, 0, 225, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (72, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 72, 'Angel DI MARIA', 1, 0, 237, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (73, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 73, 'Genki HARAGUCHI', 1, 0, 246, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (74, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 74, 'Steven ZUBER', 1, 0, 252, 3, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (75, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 75, 'Andre CARRILLO', 1, 0, 259, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (76, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 76, 'Alfred FINNBOGASON', 1, 0, 264, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (77, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 77, 'Iury GAZINSKY', 1, 0, 266, 4, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (78, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 78, 'Aleksandar MITROVIC', 1, 0, 268, 3, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (79, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 79, 'Yussuf Yurary POULSEN', 1, 0, 269, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (80, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 80, 'Aleksandar KOLAROV', 1, 0, 270, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (81, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 81, 'Fakhreddine BEN YOUSSEF', 1, 0, 270, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (82, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 82, 'Grzegorz KRYCHOWIAK', 1, 0, 270, 3, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (83, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 83, 'Gylfi SIGURDSSON', 1, 0, 270, 3, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (84, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 84, 'KIM Younggwon', 1, 0, 270, 3, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (85, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 85, 'Sadio MANE', 1, 0, 270, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (86, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 86, 'SALEM ALDAWSARI', 1, 0, 270, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (87, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 87, 'SALMAN ALFARAJ', 1, 0, 270, 3, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (88, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 88, 'Toni KROOS', 1, 0, 270, 3, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (89, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 89, 'Yuya OSAKO', 1, 0, 308, 4, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (90, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 90, 'Carlos VELA', 1, 0, 315, 4, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (91, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 91, 'Marouane FELLAINI', 1, 0, 316, 5, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (92, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 92, 'Blerim DZEMAILI', 1, 0, 326, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (93, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 93, 'Andrej KRAMARIC', 1, 0, 333, 7, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (94, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 94, 'PAULINHO', 1, 0, 354, 5, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (95, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 95, 'Granit XHAKA', 1, 0, 360, 4, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (96, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 96, 'Jose GIMENEZ', 1, 0, 360, 4, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (97, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 97, 'PEPE', 1, 0, 360, 4, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (98, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 98, 'Dele ALLI', 1, 0, 364, 5, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (99, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 99, 'Radamel FALCAO', 1, 0, 377, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (100, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 100, 'ISCO', 1, 0, 390, 4, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (101, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 101, 'Emil FORSBERG', 1, 0, 417, 5, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (102, '1900-01-20 09:14:38', '1900-01-20 09:14:38', NULL, 102, 'Ludwig AUGUSTINSSON', 1, 0, 450, 5, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (103, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 103, 'THIAGO SILVA', 1, 0, 450, 5, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (104, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 104, 'Paul POGBA', 1, 0, 539, 6, 0, 1, 0, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (105, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 105, 'Benjamin PAVARD', 1, 0, 540, 6, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (106, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 106, 'Jan VERTONGHEN', 1, 0, 540, 6, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (107, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 107, 'Samuel UMTITI', 1, 0, 540, 6, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (108, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 108, 'Ante REBIC', 1, 0, 547, 6, 0, 0, 1, 0);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (109, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 109, 'Raphael VARANE', 1, 0, 630, 7, 0, 0, 0, 1);
INSERT INTO `players_statistic_with_goals_scoreds` VALUES (110, '1900-01-20 09:14:39', '1900-01-20 09:14:39', NULL, 110, 'Ivan RAKITIC', 1, 0, 639, 7, 0, 0, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for players_statistic_with_shots
-- ----------------------------
DROP TABLE IF EXISTS `players_statistic_with_shots`;
CREATE TABLE `players_statistic_with_shots` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rank` int NOT NULL,
  `player_name` varchar(32) NOT NULL,
  `matches_played` int DEFAULT NULL,
  `minutes_played` int DEFAULT NULL,
  `shots_number` int DEFAULT NULL,
  `attempts_On_target` int DEFAULT NULL,
  `attempts_off_target` int DEFAULT NULL,
  `shots_blocked` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_players_statistic_with_shots_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=406 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players_statistic_with_shots
-- ----------------------------
BEGIN;
INSERT INTO `players_statistic_with_shots` VALUES (1, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 1, 'NEYMAR', 5, 450, 27, 13, 5, 9);
INSERT INTO `players_statistic_with_shots` VALUES (2, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 2, 'PHILIPPE COUTINHO', 5, 436, 22, 7, 6, 9);
INSERT INTO `players_statistic_with_shots` VALUES (3, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 3, 'Ivan PERISIC', 7, 632, 22, 4, 13, 5);
INSERT INTO `players_statistic_with_shots` VALUES (4, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 4, 'Antoine GRIEZMANN', 7, 570, 21, 11, 7, 3);
INSERT INTO `players_statistic_with_shots` VALUES (5, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 5, 'CRISTIANO RONALDO', 4, 360, 21, 8, 4, 9);
INSERT INTO `players_statistic_with_shots` VALUES (6, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 6, 'Eden HAZARD', 6, 518, 17, 6, 6, 5);
INSERT INTO `players_statistic_with_shots` VALUES (7, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 7, 'Lionel MESSI', 4, 360, 17, 6, 3, 8);
INSERT INTO `players_statistic_with_shots` VALUES (8, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 8, 'Ivan RAKITIC', 7, 639, 17, 5, 10, 2);
INSERT INTO `players_statistic_with_shots` VALUES (9, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 9, 'Jesse  LINGARD', 6, 527, 17, 2, 6, 9);
INSERT INTO `players_statistic_with_shots` VALUES (10, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 10, 'Edinson CAVANI', 4, 343, 16, 6, 6, 4);
INSERT INTO `players_statistic_with_shots` VALUES (11, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 11, 'Ante REBIC', 6, 547, 16, 5, 4, 7);
INSERT INTO `players_statistic_with_shots` VALUES (12, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 12, 'Marcus BERG', 5, 426, 15, 8, 4, 3);
INSERT INTO `players_statistic_with_shots` VALUES (13, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 13, 'Toni KROOS', 3, 270, 15, 5, 5, 5);
INSERT INTO `players_statistic_with_shots` VALUES (14, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 14, 'Emil FORSBERG', 5, 417, 15, 3, 6, 6);
INSERT INTO `players_statistic_with_shots` VALUES (15, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 15, 'Olivier GIROUD', 7, 546, 15, 1, 10, 4);
INSERT INTO `players_statistic_with_shots` VALUES (16, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 16, 'Harry KANE', 6, 573, 14, 6, 7, 1);
INSERT INTO `players_statistic_with_shots` VALUES (17, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 17, 'Luis SUAREZ', 5, 450, 14, 5, 5, 4);
INSERT INTO `players_statistic_with_shots` VALUES (18, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 18, 'Aleksandar MITROVIC', 3, 268, 14, 5, 6, 3);
INSERT INTO `players_statistic_with_shots` VALUES (19, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 19, 'SON Heungmin', 3, 270, 14, 3, 6, 5);
INSERT INTO `players_statistic_with_shots` VALUES (20, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 20, 'Romelu LUKAKU', 6, 476, 13, 5, 4, 4);
INSERT INTO `players_statistic_with_shots` VALUES (21, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 21, 'Mario MANDZUKIC', 6, 608, 13, 5, 6, 2);
INSERT INTO `players_statistic_with_shots` VALUES (22, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 22, 'Kevin DE BRUYNE', 6, 540, 13, 4, 5, 4);
INSERT INTO `players_statistic_with_shots` VALUES (23, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 23, 'Hirving  LOZANO', 4, 317, 13, 2, 5, 6);
INSERT INTO `players_statistic_with_shots` VALUES (24, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 24, 'Xherdan SHAQIRI', 4, 351, 13, 1, 5, 7);
INSERT INTO `players_statistic_with_shots` VALUES (25, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 25, 'Denis CHERYSHEV', 5, 304, 12, 7, 2, 3);
INSERT INTO `players_statistic_with_shots` VALUES (26, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 26, 'Christian ERIKSEN', 4, 390, 12, 3, 6, 3);
INSERT INTO `players_statistic_with_shots` VALUES (27, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 27, 'Diego COSTA', 4, 320, 11, 5, 6, 0);
INSERT INTO `players_statistic_with_shots` VALUES (28, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 28, 'Harry MAGUIRE', 7, 645, 11, 3, 8, 0);
INSERT INTO `players_statistic_with_shots` VALUES (29, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 29, 'Gylfi SIGURDSSON', 3, 270, 10, 6, 4, 0);
INSERT INTO `players_statistic_with_shots` VALUES (30, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 30, 'Wahbi KHAZRI', 3, 264, 10, 5, 2, 3);
INSERT INTO `players_statistic_with_shots` VALUES (31, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 31, 'Luka MODRIC', 7, 694, 10, 4, 5, 1);
INSERT INTO `players_statistic_with_shots` VALUES (32, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 32, 'ISCO', 4, 390, 10, 3, 3, 4);
INSERT INTO `players_statistic_with_shots` VALUES (33, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 33, 'Carlos VELA', 4, 315, 10, 2, 6, 2);
INSERT INTO `players_statistic_with_shots` VALUES (34, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 34, 'Andrej KRAMARIC', 7, 333, 10, 2, 5, 3);
INSERT INTO `players_statistic_with_shots` VALUES (35, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 35, 'GABRIEL JESUS', 5, 406, 10, 1, 5, 4);
INSERT INTO `players_statistic_with_shots` VALUES (36, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 36, 'Raheem STERLING', 6, 454, 10, 1, 3, 6);
INSERT INTO `players_statistic_with_shots` VALUES (37, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 37, 'Robert LEWANDOWSKI', 3, 270, 9, 3, 4, 2);
INSERT INTO `players_statistic_with_shots` VALUES (38, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 38, 'Miguel LAYUN', 4, 314, 9, 3, 5, 1);
INSERT INTO `players_statistic_with_shots` VALUES (39, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 39, 'Mathew LECKIE', 3, 270, 9, 2, 5, 2);
INSERT INTO `players_statistic_with_shots` VALUES (40, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 40, 'David SILVA', 4, 327, 9, 1, 3, 5);
INSERT INTO `players_statistic_with_shots` VALUES (41, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 41, 'Kylian MBAPPE', 7, 534, 8, 7, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (42, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 42, 'Mbaye NIANG', 3, 247, 8, 5, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (43, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 43, 'Takashi INUI', 4, 292, 8, 4, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (44, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 44, 'Michy BATSHUAYI', 3, 113, 8, 4, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (45, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 45, 'Radamel FALCAO', 4, 377, 8, 4, 4, 0);
INSERT INTO `players_statistic_with_shots` VALUES (46, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 46, 'Artem DZYUBA', 5, 333, 8, 4, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (47, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 47, 'Blerim DZEMAILI', 4, 326, 8, 3, 4, 1);
INSERT INTO `players_statistic_with_shots` VALUES (48, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 48, 'Juan QUINTERO', 4, 310, 8, 3, 2, 3);
INSERT INTO `players_statistic_with_shots` VALUES (49, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 49, 'Paul POGBA', 6, 539, 8, 2, 4, 2);
INSERT INTO `players_statistic_with_shots` VALUES (50, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 50, 'Hakim ZIYACH', 3, 265, 8, 2, 2, 4);
INSERT INTO `players_statistic_with_shots` VALUES (51, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 51, 'TREZIGUET', 3, 239, 8, 1, 6, 1);
INSERT INTO `players_statistic_with_shots` VALUES (52, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 52, 'Paolo GUERRERO', 3, 208, 7, 5, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (53, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 53, 'Yuya OSAKO', 4, 308, 7, 4, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (54, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 54, 'Dries MERTENS', 6, 298, 7, 4, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (55, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 55, 'Gerard PIQUE', 4, 390, 7, 2, 2, 3);
INSERT INTO `players_statistic_with_shots` VALUES (56, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 56, 'Ricardo RODRIGUEZ', 4, 360, 7, 2, 2, 3);
INSERT INTO `players_statistic_with_shots` VALUES (57, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 57, 'SALEM ALDAWSARI', 3, 270, 7, 2, 5, 0);
INSERT INTO `players_statistic_with_shots` VALUES (58, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 58, 'ROBERTO FIRMINO', 4, 82, 7, 2, 5, 0);
INSERT INTO `players_statistic_with_shots` VALUES (59, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 59, 'Fakhreddine BEN YOUSSEF', 3, 270, 7, 2, 4, 1);
INSERT INTO `players_statistic_with_shots` VALUES (60, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 60, 'Roman ZOBNIN', 5, 510, 7, 2, 3, 2);
INSERT INTO `players_statistic_with_shots` VALUES (61, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 61, 'Victor MOSES', 3, 270, 7, 1, 4, 2);
INSERT INTO `players_statistic_with_shots` VALUES (62, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 62, 'Birkir BJARNASON', 3, 269, 7, 1, 3, 3);
INSERT INTO `players_statistic_with_shots` VALUES (63, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 63, 'Oghenekaro ETEBO', 3, 269, 7, 1, 4, 2);
INSERT INTO `players_statistic_with_shots` VALUES (64, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 64, 'Timo WERNER', 3, 266, 7, 1, 5, 1);
INSERT INTO `players_statistic_with_shots` VALUES (65, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 65, 'Yannick CARRASCO', 4, 239, 6, 4, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (66, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 66, 'Mile JEDINAK', 3, 270, 6, 3, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (67, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 67, 'Sergio AGUERO', 4, 178, 6, 3, 0, 3);
INSERT INTO `players_statistic_with_shots` VALUES (68, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 68, 'Thomas MEUNIER', 5, 450, 6, 3, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (69, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 69, 'PAULINHO', 5, 354, 6, 3, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (70, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 70, 'John STONES', 7, 645, 6, 3, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (71, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 71, 'Mats HUMMELS', 2, 180, 6, 2, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (72, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 72, 'HATAN BAHBRI', 3, 158, 6, 2, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (73, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 73, 'MOHAMED SALAH', 2, 180, 6, 2, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (74, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 74, 'Younes BELHANDA', 3, 228, 6, 2, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (75, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 75, 'THIAGO SILVA', 5, 450, 6, 1, 4, 1);
INSERT INTO `players_statistic_with_shots` VALUES (76, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 76, 'Andres GUARDADO', 4, 307, 6, 1, 2, 3);
INSERT INTO `players_statistic_with_shots` VALUES (77, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 77, 'Martin CACERES', 5, 450, 6, 1, 4, 1);
INSERT INTO `players_statistic_with_shots` VALUES (78, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 78, 'Axel WITSEL', 6, 539, 6, 1, 2, 3);
INSERT INTO `players_statistic_with_shots` VALUES (79, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 79, 'Juan CUADRADO', 4, 331, 6, 1, 3, 2);
INSERT INTO `players_statistic_with_shots` VALUES (80, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 80, 'Julian DRAXLER', 2, 135, 6, 1, 0, 5);
INSERT INTO `players_statistic_with_shots` VALUES (81, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 81, 'Naim SLITI', 3, 182, 6, 1, 4, 1);
INSERT INTO `players_statistic_with_shots` VALUES (82, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 82, 'Lucas HERNANDEZ', 7, 590, 6, 1, 3, 2);
INSERT INTO `players_statistic_with_shots` VALUES (83, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 83, 'Sime VRSALJKO', 6, 607, 6, 0, 5, 1);
INSERT INTO `players_statistic_with_shots` VALUES (84, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 84, 'Andreas GRANQVIST', 5, 450, 5, 4, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (85, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 85, 'Ola TOIVONEN', 5, 400, 5, 3, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (86, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 86, 'RICARDO QUARESMA', 3, 116, 5, 2, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (87, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 87, 'WILLIAN', 5, 359, 5, 2, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (88, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 88, 'Celso BORGES', 3, 270, 5, 2, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (89, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 89, 'Mehdi BENATIA', 2, 180, 5, 2, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (90, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 90, 'Odion IGHALO', 3, 122, 5, 2, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (91, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 91, 'Hector HERRERA', 4, 360, 5, 2, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (92, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 92, 'Alfred FINNBOGASON', 3, 264, 5, 2, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (93, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 93, 'Tom ROGIC', 3, 226, 5, 2, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (94, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 94, 'GONCALO GUEDES', 4, 245, 5, 2, 0, 3);
INSERT INTO `players_statistic_with_shots` VALUES (95, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 95, 'Edgar BARCENAS', 3, 222, 5, 2, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (96, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 96, 'Dele ALLI', 5, 364, 5, 2, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (97, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 97, 'Marcus RASHFORD', 6, 211, 5, 2, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (98, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 98, 'Andres INIESTA', 4, 284, 5, 1, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (99, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 99, 'Javier HERNANDEZ', 4, 330, 5, 1, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (100, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 100, 'Kamil GROSICKI', 3, 213, 5, 1, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (101, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 101, 'Toby ALDERWEIRELD', 6, 540, 5, 1, 4, 0);
INSERT INTO `players_statistic_with_shots` VALUES (102, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 102, 'Marouane FELLAINI', 5, 316, 5, 1, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (103, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 103, 'Sergio BUSQUETS', 4, 390, 5, 1, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (104, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 104, 'Granit XHAKA', 4, 360, 5, 1, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (105, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 105, 'YASSER ALSHAHRANI', 3, 270, 5, 1, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (106, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 106, 'Marco REUS', 3, 210, 5, 1, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (107, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 107, 'Eric  DIER', 6, 248, 5, 1, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (108, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 108, 'Ferjani SASSI', 3, 194, 5, 1, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (109, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 109, 'HUSSAIN ALMOQAHWI', 2, 136, 5, 1, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (110, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 110, 'Viktor CLAESSON', 5, 434, 5, 1, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (111, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 111, 'Dejan LOVREN', 7, 650, 5, 0, 3, 2);
INSERT INTO `players_statistic_with_shots` VALUES (112, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 112, 'Sergej MILINKOVIC-SAVIC', 3, 270, 5, 0, 4, 1);
INSERT INTO `players_statistic_with_shots` VALUES (113, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 113, 'Mario GOMEZ', 3, 88, 4, 3, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (114, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 114, 'Keisuke HONDA', 3, 47, 4, 3, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (115, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 115, 'DOUGLAS COSTA', 2, 77, 4, 3, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (116, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 116, 'Iago ASPAS', 3, 69, 4, 3, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (117, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 117, 'Ahmed MUSA', 3, 207, 4, 2, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (118, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 118, 'Cristian RODRIGUEZ', 5, 165, 4, 2, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (119, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 119, 'MARCELO', 4, 280, 4, 2, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (120, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 120, 'CASEMIRO', 4, 330, 4, 2, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (121, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 121, 'RODRIGO', 3, 23, 4, 2, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (122, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 122, 'Steven ZUBER', 3, 252, 4, 2, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (123, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 123, 'Martin BRAITHWAITE', 4, 249, 4, 2, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (124, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 124, 'Breel EMBOLO', 4, 134, 4, 2, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (125, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 125, 'Nabil FEKIR', 6, 70, 4, 2, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (126, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 126, 'Leon BALOGUN', 3, 270, 4, 2, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (127, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 127, 'Benjamin PAVARD', 6, 540, 4, 2, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (128, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 128, 'Julian BRANDT', 3, 19, 4, 1, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (129, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 129, 'Josip DRMIC', 3, 112, 4, 1, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (130, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 130, 'Jefferson FARFAN', 2, 130, 4, 1, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (131, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 131, 'Vincent KOMPANY', 5, 376, 4, 1, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (132, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 132, 'Nicolas OTAMENDI', 4, 360, 4, 1, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (133, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 133, 'Lasse SCHONE', 3, 220, 4, 1, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (134, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 134, 'MARWAN MOHSEN', 3, 209, 4, 1, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (135, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 135, 'Mateo KOVACIC', 5, 183, 4, 1, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (136, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 136, 'Sadio MANE', 3, 270, 4, 1, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (137, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 137, 'Jordan HENDERSON', 5, 482, 4, 1, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (138, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 138, 'Blaise MATUIDI', 5, 337, 4, 1, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (139, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 139, 'Raphael VARANE', 7, 630, 4, 1, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (140, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 140, 'Nicolai JORGENSEN', 3, 212, 4, 1, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (141, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 141, 'Adnan JANUZAJ', 1, 86, 4, 1, 0, 3);
INSERT INTO `players_statistic_with_shots` VALUES (142, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 142, 'Marcelo BROZOVIC', 6, 458, 4, 1, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (143, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 143, 'LEE Jaesung', 3, 270, 4, 1, 0, 3);
INSERT INTO `players_statistic_with_shots` VALUES (144, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 144, 'Edison FLORES', 3, 242, 4, 1, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (145, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 145, 'Pione SISTO', 4, 232, 4, 1, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (146, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 146, 'Carlos SALCEDO', 4, 360, 4, 1, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (147, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 147, 'Roman TORRES', 3, 236, 4, 0, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (148, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 148, 'Sergio RAMOS', 4, 390, 4, 0, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (149, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 149, 'Salif SANE', 3, 270, 4, 0, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (150, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 150, 'Thomas DELANEY', 4, 367, 4, 0, 3, 1);
INSERT INTO `players_statistic_with_shots` VALUES (151, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 151, 'RAPHAEL GUERREIRO', 4, 360, 4, 0, 2, 2);
INSERT INTO `players_statistic_with_shots` VALUES (152, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 152, 'Alex IWOBI', 3, 64, 4, 0, 0, 4);
INSERT INTO `players_statistic_with_shots` VALUES (153, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 153, 'JUNG Wooyoung', 3, 127, 3, 3, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (154, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 154, 'Yerry MINA', 3, 300, 3, 3, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (155, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 155, 'KI Sungyueng', 2, 180, 3, 2, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (156, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 156, 'Gonzalo HIGUAIN', 3, 132, 3, 2, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (157, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 157, 'Cristian GAMBOA', 3, 254, 3, 2, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (158, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 158, 'Andre CARRILLO', 3, 259, 3, 2, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (159, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 159, 'Nacer CHADLI', 6, 327, 3, 2, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (160, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 160, 'Jose GIMENEZ', 4, 360, 3, 2, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (161, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 161, 'Khalid BOUTAIB', 2, 141, 3, 2, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (162, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 162, 'Ismaila SARR', 3, 270, 3, 2, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (163, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 163, 'Anice BADRI', 3, 225, 3, 2, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (164, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 164, 'Sverrir INGASON', 2, 115, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (165, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 165, 'Sami KHEDIRA', 2, 118, 3, 1, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (166, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 166, 'RENATO AUGUSTO', 3, 50, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (167, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 167, 'Diego GODIN', 5, 450, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (168, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 168, 'Ever BANEGA', 3, 216, 3, 1, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (169, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 169, 'Angel DI MARIA', 3, 237, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (170, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 170, 'Shinji KAGAWA', 3, 232, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (171, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 171, 'Bryan OVIEDO', 2, 180, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (172, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 172, 'Dusan TADIC', 3, 263, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (173, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 173, 'Jerome BOATENG', 2, 172, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (174, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 174, 'Domagoj VIDA', 6, 630, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (175, '1900-01-20 18:55:46', '1900-01-20 18:55:46', NULL, 175, 'Johann GUDMUNDSSON', 2, 153, 3, 1, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (176, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 176, 'Kieran TRIPPIER', 6, 580, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (177, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 177, 'Fabian DELPH', 4, 220, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (178, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 178, 'Joel CAMPBELL', 2, 114, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (179, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 179, 'Takashi USAMI', 2, 68, 3, 1, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (180, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 180, 'Mario GAVRANOVIC', 2, 114, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (181, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 181, 'Karim ANSARIFARD', 3, 178, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (182, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 182, 'Matias VECINO', 5, 416, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (183, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 183, 'Genki HARAGUCHI', 3, 246, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (184, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 184, 'Luis ADVINCULA', 3, 270, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (185, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 185, 'Yoshimar YOTUN', 3, 180, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (186, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 186, 'SALMAN ALFARAJ', 3, 270, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (187, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 187, 'Wilfred NDIDI', 3, 270, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (188, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 188, 'Aleksandr GOLOVIN', 4, 402, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (189, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 189, 'Amine HARIT', 1, 82, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (190, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 190, 'Sardar AZMOUN', 3, 270, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (191, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 191, 'Rodrigo BENTANCUR', 5, 365, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (192, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 192, 'Carlos SANCHEZ', 3, 123, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (193, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 193, 'Ludwig AUGUSTINSSON', 5, 450, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (194, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 194, 'Youri TIELEMANS', 4, 175, 3, 1, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (195, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 195, 'Jose Luis RODRIGUEZ', 3, 243, 3, 1, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (196, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 196, 'Ruben LOFTUS-CHEEK', 4, 274, 3, 1, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (197, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 197, 'Maximiliano MEZA', 4, 207, 3, 1, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (198, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 198, 'Daniel COLINDRES', 2, 98, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (199, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 199, 'FERNANDINHO', 5, 155, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (200, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 200, 'James RODRIGUEZ', 3, 152, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (201, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 201, 'Nicolas TAGLIAFICO', 4, 350, 3, 0, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (202, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 202, 'Nemanja MATIC', 3, 270, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (203, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 203, 'Aaron MOOY', 3, 270, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (204, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 204, 'Thomas MUELLER', 3, 207, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (205, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 205, 'MOHAMED ELNENY', 3, 244, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (206, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 206, 'Christian CUEVA', 3, 262, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (207, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 207, 'Albin EKDAL', 5, 421, 3, 0, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (208, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 208, 'Piotr ZIELINSKI', 3, 259, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (209, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 209, 'Kelechi IHEANACHO', 3, 148, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (210, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 210, 'Thorgan HAZARD', 2, 97, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (211, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 211, 'Dani CARVAJAL', 3, 230, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (212, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 212, 'Joshua KIMMICH', 3, 270, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (213, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 213, 'Mehdi TAREMI', 3, 202, 3, 0, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (214, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 214, 'BRUNO FERNANDES', 2, 88, 3, 0, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (215, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 215, 'MOHAMMED ALBURAYK', 3, 270, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (216, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 216, 'JOSE FONTE', 4, 360, 3, 0, 2, 1);
INSERT INTO `players_statistic_with_shots` VALUES (217, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 217, 'Ousmane DEMBELE', 4, 165, 3, 0, 3, 0);
INSERT INTO `players_statistic_with_shots` VALUES (218, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 218, 'Filip KOSTIC', 3, 166, 3, 0, 1, 2);
INSERT INTO `players_statistic_with_shots` VALUES (219, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 219, 'Jan VERTONGHEN', 6, 540, 2, 2, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (220, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 220, 'Fidel ESCOBAR', 3, 270, 2, 2, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (221, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 221, 'Michael MURILLO', 2, 180, 2, 2, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (222, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 222, 'Milan BADELJ', 3, 103, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (223, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 223, 'Sergey IGNASHEVICH', 5, 510, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (224, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 224, 'MANUEL FERNANDES', 1, 6, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (225, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 225, 'Giancarlo GONZALEZ', 3, 270, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (226, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 226, 'Grzegorz KRYCHOWIAK', 3, 270, 2, 1, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (227, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 227, 'Marcos URENA', 2, 120, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (228, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 228, 'PEPE', 4, 360, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (229, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 229, 'Aleksandar KOLAROV', 3, 270, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (230, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 230, 'Ashley  YOUNG', 5, 462, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (231, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 231, 'Aron GUNNARSSON', 3, 253, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (232, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 232, 'Jordi ALBA', 4, 390, 2, 1, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (233, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 233, 'Marcos ROJO', 3, 225, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (234, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 234, 'Yussuf Yurary POULSEN', 3, 269, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (235, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 235, 'FAHAD ALMUWALLAD', 3, 183, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (236, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 236, 'Fedor SMOLOV', 5, 219, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (237, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 237, 'Giorgian DE ARRASCAETA', 2, 86, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (238, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 238, 'Samuel UMTITI', 6, 540, 2, 1, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (239, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 239, 'Youssouf SABALY', 3, 254, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (240, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 240, 'Alireza JAHANBAKHSH', 3, 172, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (241, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 241, 'Leon GORETZKA', 1, 63, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (242, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 242, 'Iury GAZINSKY', 4, 266, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (243, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 243, 'Yoshinori MUTO', 1, 82, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (244, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 244, 'Daniel ARZANI', 3, 60, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (245, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 245, 'HWANG Heechan', 3, 203, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (246, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 246, 'Jens Stryger LARSEN', 3, 270, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (247, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 247, 'Mateus URIBE', 3, 182, 2, 1, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (248, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 248, 'Marco ASENSIO', 3, 131, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (249, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 249, 'Jonas HECTOR', 2, 165, 2, 1, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (250, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 250, 'Corentin TOLISSO', 5, 194, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (251, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 251, 'Daler KUZIAEV', 5, 304, 2, 1, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (252, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 252, 'Bryan RUIZ', 3, 270, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (253, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 253, 'Stephan LICHTSTEINER', 3, 267, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (254, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 254, 'Lucas BIGLIA', 1, 54, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (255, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 255, 'Alberto RODRIGUEZ', 2, 135, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (256, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 256, 'Yury ZHIRKOV', 3, 221, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (257, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 257, 'Alexander SAMEDOV', 5, 359, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (258, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 258, 'ABDALLA SAID', 3, 224, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (259, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 259, 'Tomoaki MAKINO', 1, 90, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (260, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 260, 'Anibal GODOY', 3, 242, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (261, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 261, 'Maya YOSHIDA', 4, 360, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (262, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 262, 'Danny WELBECK', 1, 11, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (263, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 263, 'Ehsan HAJI SAFI', 3, 215, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (264, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 264, 'Yuto NAGATOMO', 4, 360, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (265, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 265, 'Manuel DA COSTA', 3, 188, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (266, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 266, 'Mesut OEZIL', 2, 180, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (267, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 267, 'Oscar DUARTE', 2, 180, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (268, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 268, 'MOON Seonmin', 2, 146, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (269, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 269, 'Marco FABIAN', 1, 25, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (270, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 270, 'ADRIEN SILVA', 3, 156, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (271, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 271, 'Idrissa Gana GUEYE', 3, 270, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (272, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 272, 'Trent SAINSBURY', 3, 270, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (273, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 273, 'ABDULLAH OTAYF', 3, 244, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (274, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 274, 'Aziz BEHICH', 3, 270, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (275, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 275, 'Carlos BACCA', 3, 91, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (276, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 276, 'Hiroki SAKAI', 4, 360, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (277, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 277, 'AMR WARDA', 3, 154, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (278, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 278, 'Josip PIVARIC', 4, 201, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (279, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 279, 'THIAGO', 2, 94, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (280, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 280, 'Vahid AMIRI', 3, 266, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (281, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 281, 'Davinson SANCHEZ', 4, 390, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (282, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 282, 'Trent ALEXANDER-ARNOLD', 1, 79, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (283, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 283, 'BERNARDO SILVA', 4, 238, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (284, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 284, 'William EKONG', 3, 270, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (285, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 285, 'TAREK HAMED', 3, 230, 2, 0, 0, 2);
INSERT INTO `players_statistic_with_shots` VALUES (286, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 286, 'Jamie VARDY', 4, 157, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (287, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 287, 'Hordur MAGNUSSON', 3, 270, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (288, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 288, 'Aleksandr EROKHIN', 2, 89, 2, 0, 2, 0);
INSERT INTO `players_statistic_with_shots` VALUES (289, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 289, 'Manuel AKANJI', 4, 360, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (290, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 290, 'Rafal KURZAWA', 1, 79, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (291, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 291, 'Saman GHODDOS', 3, 29, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (292, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 292, 'Saifeddine KHAOUI', 1, 90, 2, 0, 1, 1);
INSERT INTO `players_statistic_with_shots` VALUES (293, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 293, 'Javier MASCHERANO', 4, 360, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (294, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 294, 'Felipe BALOY', 1, 21, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (295, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 295, 'FILIPE LUIS', 2, 170, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (296, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 296, 'Kendall WASTON', 1, 90, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (297, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 297, 'Hector MORENO', 3, 270, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (298, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 298, 'Gabriel MERCADO', 3, 270, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (299, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 299, 'Rami BEDOUI', 1, 90, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (300, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 300, 'Maciej RYBUS', 2, 180, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (301, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 301, 'AHMED FATHI', 3, 270, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (302, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 302, 'Marvin PLATTENHARDT', 1, 79, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (303, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 303, 'Haris SEFEROVIC', 3, 142, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (304, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 304, 'MARIO FERNANDES', 5, 472, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (305, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 305, 'Mathias  JORGENSEN', 3, 219, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (306, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 306, 'Gotoku SAKAI', 1, 90, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (307, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 307, 'MUHANNAD ASIRI', 2, 31, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (308, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 308, 'Moussa KONATE', 2, 25, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (309, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 309, 'Ilkay GUENDOGAN', 1, 59, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (310, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 310, 'Andreas CORNELIUS', 3, 163, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (311, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 311, 'Saeid EZATOLAHI', 2, 166, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (312, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 312, 'KIM Younggwon', 3, 270, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (313, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 313, 'Moussa WAGUE', 3, 196, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (314, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 314, 'Nahitan NANDEZ', 5, 293, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (315, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 315, 'John GUIDETTI', 2, 37, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (316, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 316, 'NACHO', 2, 160, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (317, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 317, 'Youssef EN NESYRI', 1, 18, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (318, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 318, 'Keita BALDE', 1, 80, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (319, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 319, 'Jan BEDNAREK', 3, 225, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (320, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 320, 'MOHAMED KANNO', 1, 15, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (321, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 321, 'Dawid KOWNACKI', 2, 74, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (322, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 322, 'Dylan BRONN', 2, 114, 1, 1, 0, 0);
INSERT INTO `players_statistic_with_shots` VALUES (323, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 323, 'Noureddine AMRABAT', 3, 256, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (324, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 324, 'Pedro AQUINO', 3, 138, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (325, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 325, 'Blas PEREZ', 2, 163, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (326, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 326, 'Tim CAHILL', 1, 37, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (327, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 327, 'Sebastian LARSSON', 4, 318, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (328, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 328, 'Valon BEHRAMI', 4, 311, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (329, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 329, 'Lukasz PISZCZEK', 2, 173, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (330, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 330, 'Oscar MURILLO', 1, 90, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (331, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 331, 'Christian RAMOS', 3, 270, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (332, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 332, 'Robbie KRUSE', 3, 210, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (333, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 333, 'Cristhian STUANI', 2, 75, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (334, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 334, 'Karim EL AHMADI', 3, 266, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (335, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 335, 'Gabriel TORRES', 2, 73, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (336, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 336, 'Armando COOPER', 2, 180, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (337, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 337, 'Eduardo SALVIO', 2, 146, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (338, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 338, 'Kamil GLIK', 2, 100, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (339, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 339, 'David GUZMAN', 3, 245, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (340, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 340, 'Artur JEDRZEJCZYK', 1, 90, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (341, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 341, 'Danny ROSE', 5, 203, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (342, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 342, 'Alfred NDIAYE', 2, 152, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (343, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 343, 'KIM Minwoo', 2, 146, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (344, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 344, 'Shinji OKAZAKI', 3, 67, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (345, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 345, 'MOHAMMED ALSAHLAWI', 2, 97, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (346, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 346, 'Makoto HASEBE', 4, 279, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (347, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 347, 'MIRANDA', 5, 450, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (348, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 348, 'KOO Jacheol', 2, 129, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (349, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 349, 'Nabil DIRAR', 2, 180, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (350, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 350, 'Mbark BOUSSOUFA', 3, 270, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (351, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 351, 'Mikael LUSTIG', 4, 352, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (352, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 352, 'Emil HALLFREDSSON', 2, 180, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (353, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 353, 'Rurik GISLASON', 2, 117, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (354, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 354, 'Alan DZAGOEV', 2, 42, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (355, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 355, 'Simon KJAER', 4, 390, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (356, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 356, 'KOKE', 3, 229, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (357, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 357, 'Santiago ARIAS', 4, 386, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (358, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 358, 'Enzo PEREZ', 3, 195, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (359, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 359, 'Adem LJAJIC', 3, 171, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (360, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 360, 'Mame DIOUF', 2, 66, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (361, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 361, 'Viktor FISCHER', 1, 30, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (362, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 362, 'Luis MURIEL', 2, 91, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (363, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 363, 'Francisco CALVO', 2, 105, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (364, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 364, 'Pape Alioune NDIAYE', 1, 81, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (365, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 365, 'Omid EBRAHIMI', 3, 261, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (366, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 366, 'Michael LANG', 3, 102, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (367, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 367, 'Fabian SCHAER', 3, 270, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (368, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 368, 'Raul JIMENEZ', 2, 54, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (369, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 369, 'Phil JONES', 2, 180, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (370, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 370, 'Dedryck BOYATA', 3, 270, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (371, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 371, 'Arkadiusz MILIK', 1, 73, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (372, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 372, 'LEE Yong', 3, 270, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (373, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 373, 'Lukasz TEODORCZYK', 2, 30, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (374, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 374, 'Diego LAXALT', 4, 301, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (375, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 375, 'JOAO MARIO', 4, 260, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (376, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 376, 'Marko PJACA', 3, 83, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (377, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 377, 'Lucas TORREIRA', 5, 304, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (378, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 378, 'Cristian PAVON', 4, 153, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (379, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 379, 'Pontus JANSSON', 2, 96, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (380, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 380, 'Andrija ZIVKOVIC', 1, 15, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (381, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 381, 'WILLIAM', 4, 360, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (382, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 382, 'ANDRE SILVA', 3, 115, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (383, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 383, 'Ramin REZAEIAN', 3, 270, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (384, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 384, 'Gen SHOJI', 3, 270, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (385, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 385, 'LEE Seungwoo', 2, 43, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (386, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 386, 'Renato TAPIA', 2, 150, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (387, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 387, 'Paulo DYBALA', 1, 22, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (388, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 388, 'Johan MOJICA', 4, 390, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (389, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 389, 'Jefferson  LERMA', 4, 175, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (390, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 390, 'Cheikh NDOYE', 2, 37, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (391, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 391, 'Joshua RISDON', 3, 270, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (392, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 392, 'Ghanem SAISS', 2, 180, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (393, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 393, 'Ngolo KANTE', 7, 595, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (394, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 394, 'Achraf HAKIMI', 3, 270, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (395, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 395, 'Jon BODVARSSON', 1, 71, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (396, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 396, 'Arnor TRAUSTASON', 1, 1, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (397, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 397, 'Marcos ACUNA', 1, 90, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (398, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 398, 'ALI GABR', 3, 270, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (399, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 399, 'Thomas LEMAR', 1, 90, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (400, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 400, 'Jacek GORALSKI', 2, 180, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (401, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 401, 'Jesus GALLARDO', 4, 335, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (402, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 402, 'Roozbeh CHESHMI', 1, 90, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (403, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 403, 'Ghaylen CHAALELI', 1, 90, 1, 0, 0, 1);
INSERT INTO `players_statistic_with_shots` VALUES (404, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 404, 'Ricardo AVILA', 2, 109, 1, 0, 1, 0);
INSERT INTO `players_statistic_with_shots` VALUES (405, '1900-01-20 18:55:47', '1900-01-20 18:55:47', NULL, 405, 'Ayoub EL KAABI', 2, 99, 1, 0, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for players_statistic_with_top_saves
-- ----------------------------
DROP TABLE IF EXISTS `players_statistic_with_top_saves`;
CREATE TABLE `players_statistic_with_top_saves` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rank` int NOT NULL,
  `player_name` varchar(32) NOT NULL,
  `matched_played` int DEFAULT NULL,
  `minutes_played` int DEFAULT NULL,
  `saves_number` int DEFAULT NULL,
  `save_rate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_players_statistic_with_top_saves_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of players_statistic_with_top_saves
-- ----------------------------
BEGIN;
INSERT INTO `players_statistic_with_top_saves` VALUES (1, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 1, 'Thibaut COURTOIS', 7, 630, 27, '0.818');
INSERT INTO `players_statistic_with_top_saves` VALUES (2, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 2, 'Guillermo OCHOA', 4, 360, 25, '0.806');
INSERT INTO `players_statistic_with_top_saves` VALUES (3, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 3, 'Kasper  SCHMEICHEL', 4, 390, 21, '0.913');
INSERT INTO `players_statistic_with_top_saves` VALUES (4, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 4, 'Jordan PICKFORD', 7, 690, 17, '0.68');
INSERT INTO `players_statistic_with_top_saves` VALUES (5, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 5, 'Igor AKINFEEV', 5, 510, 15, '0.682');
INSERT INTO `players_statistic_with_top_saves` VALUES (6, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 6, 'Danijel SUBASIC', 6, 630, 15, '0.652');
INSERT INTO `players_statistic_with_top_saves` VALUES (7, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 7, 'Eiji KAWASHIMA', 4, 360, 14, '0.667');
INSERT INTO `players_statistic_with_top_saves` VALUES (8, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 8, 'JO Hyeonwoo', 3, 270, 13, '0.812');
INSERT INTO `players_statistic_with_top_saves` VALUES (9, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 9, 'Yann SOMMER', 4, 360, 12, '0.706');
INSERT INTO `players_statistic_with_top_saves` VALUES (10, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 10, 'Hugo LLORIS', 6, 540, 12, '0.667');
INSERT INTO `players_statistic_with_top_saves` VALUES (11, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 11, 'Fernando MUSLERA', 5, 450, 11, '0.786');
INSERT INTO `players_statistic_with_top_saves` VALUES (12, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 12, 'Manuel NEUER', 3, 270, 11, '0.733');
INSERT INTO `players_statistic_with_top_saves` VALUES (13, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 13, 'Robin OLSEN', 5, 450, 11, '0.733');
INSERT INTO `players_statistic_with_top_saves` VALUES (14, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 14, 'David OSPINA', 4, 390, 10, '0.769');
INSERT INTO `players_statistic_with_top_saves` VALUES (15, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 15, 'Vladimir STOJKOVIC', 3, 270, 10, '0.714');
INSERT INTO `players_statistic_with_top_saves` VALUES (16, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 16, 'Keylor NAVAS', 3, 270, 10, '0.667');
INSERT INTO `players_statistic_with_top_saves` VALUES (17, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 17, 'Mathew RYAN', 3, 270, 10, '0.667');
INSERT INTO `players_statistic_with_top_saves` VALUES (18, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 18, 'Hannes HALLDORSSON', 3, 270, 9, '0.643');
INSERT INTO `players_statistic_with_top_saves` VALUES (19, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 19, 'Farouk BEN MUSTAPHA', 2, 165, 9, '0.6');
INSERT INTO `players_statistic_with_top_saves` VALUES (20, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 20, 'Jaime PENEDO', 3, 270, 9, '0.45');
INSERT INTO `players_statistic_with_top_saves` VALUES (21, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 21, 'RUI PATRICIO', 4, 360, 8, '0.571');
INSERT INTO `players_statistic_with_top_saves` VALUES (22, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 22, 'Pedro GALLESE', 3, 270, 7, '0.778');
INSERT INTO `players_statistic_with_top_saves` VALUES (23, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 23, 'Ali BEIRANVAND', 3, 270, 7, '0.778');
INSERT INTO `players_statistic_with_top_saves` VALUES (24, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 24, 'Francis UZOHO', 3, 270, 6, '0.6');
INSERT INTO `players_statistic_with_top_saves` VALUES (25, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 25, 'Lovre KALINIC', 1, 90, 5, '0.833');
INSERT INTO `players_statistic_with_top_saves` VALUES (26, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 26, 'ESSAM ELHADARY', 1, 90, 5, '0.714');
INSERT INTO `players_statistic_with_top_saves` VALUES (27, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 27, 'ALISSON', 5, 450, 5, '0.625');
INSERT INTO `players_statistic_with_top_saves` VALUES (28, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 28, 'Khadim NDIAYE', 3, 270, 5, '0.556');
INSERT INTO `players_statistic_with_top_saves` VALUES (29, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 29, 'Aymen MATHLOUTHI', 1, 90, 4, '0.8');
INSERT INTO `players_statistic_with_top_saves` VALUES (30, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 30, 'Wilfredo CABALLERO', 2, 180, 4, '0.5');
INSERT INTO `players_statistic_with_top_saves` VALUES (31, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 31, 'Monir EL KAJOUI', 3, 270, 4, '0.5');
INSERT INTO `players_statistic_with_top_saves` VALUES (32, '1900-01-20 18:55:43', '1900-01-20 18:55:43', NULL, 32, 'MOHAMED ELSHENAWY', 2, 180, 4, '0.5');
INSERT INTO `players_statistic_with_top_saves` VALUES (33, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 33, 'Lukasz FABIANSKI', 1, 90, 3, '1');
INSERT INTO `players_statistic_with_top_saves` VALUES (34, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 34, 'MOHAMMED ALOWAIS', 1, 90, 3, '0.75');
INSERT INTO `players_statistic_with_top_saves` VALUES (35, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 35, 'Mouez HASSEN', 1, 15, 2, '0.667');
INSERT INTO `players_statistic_with_top_saves` VALUES (36, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 36, 'Franco ARMANI', 2, 180, 2, '0.286');
INSERT INTO `players_statistic_with_top_saves` VALUES (37, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 37, 'ABDULLAH ALMUAIOUF', 1, 90, 2, '0.286');
INSERT INTO `players_statistic_with_top_saves` VALUES (38, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 38, 'Steve MANDANDA', 1, 90, 1, '1');
INSERT INTO `players_statistic_with_top_saves` VALUES (39, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 39, 'Wojciech SZCZESNY', 2, 180, 1, '0.167');
INSERT INTO `players_statistic_with_top_saves` VALUES (40, '1900-01-20 18:55:44', '1900-01-20 18:55:44', NULL, 40, 'David DE GEA', 4, 390, 1, '0.143');
COMMIT;

-- ----------------------------
-- Table structure for team_statistic_with_attempts
-- ----------------------------
DROP TABLE IF EXISTS `team_statistic_with_attempts`;
CREATE TABLE `team_statistic_with_attempts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rank` int NOT NULL,
  `team_name` varchar(12) NOT NULL,
  `matches_payed` int NOT NULL,
  `shots_number` int NOT NULL,
  `attempts_on_target` int NOT NULL,
  `attempts_off_target` int NOT NULL,
  `shots_blocked_number` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_team_statistic_with_attempts_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_statistic_with_attempts
-- ----------------------------
BEGIN;
INSERT INTO `team_statistic_with_attempts` VALUES (1, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 1, 'Croatia', 7, 115, 29, 58, 28);
INSERT INTO `team_statistic_with_attempts` VALUES (2, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 2, 'Belgium', 7, 106, 40, 40, 26);
INSERT INTO `team_statistic_with_attempts` VALUES (3, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 3, 'Brazil', 5, 103, 38, 35, 30);
INSERT INTO `team_statistic_with_attempts` VALUES (4, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 4, 'England', 7, 96, 25, 43, 28);
INSERT INTO `team_statistic_with_attempts` VALUES (5, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 5, 'France', 7, 83, 30, 36, 17);
INSERT INTO `team_statistic_with_attempts` VALUES (6, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 6, 'Spain', 4, 70, 21, 28, 21);
INSERT INTO `team_statistic_with_attempts` VALUES (7, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 7, 'Germany', 3, 67, 20, 24, 23);
INSERT INTO `team_statistic_with_attempts` VALUES (8, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 8, 'Uruguay', 5, 61, 22, 26, 13);
INSERT INTO `team_statistic_with_attempts` VALUES (9, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 9, 'Mexico', 4, 57, 13, 24, 20);
INSERT INTO `team_statistic_with_attempts` VALUES (10, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 10, 'Switzerland', 4, 56, 14, 22, 20);
INSERT INTO `team_statistic_with_attempts` VALUES (11, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 11, 'Sweden', 5, 55, 21, 22, 12);
INSERT INTO `team_statistic_with_attempts` VALUES (12, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 12, 'Argentina', 4, 53, 18, 16, 19);
INSERT INTO `team_statistic_with_attempts` VALUES (13, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 13, 'Portugal', 4, 52, 14, 20, 18);
INSERT INTO `team_statistic_with_attempts` VALUES (14, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 14, 'Russia', 5, 46, 19, 16, 11);
INSERT INTO `team_statistic_with_attempts` VALUES (15, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 15, 'Japan', 4, 42, 16, 15, 11);
INSERT INTO `team_statistic_with_attempts` VALUES (16, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 16, 'Denmark', 4, 40, 12, 22, 6);
INSERT INTO `team_statistic_with_attempts` VALUES (17, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 17, 'Colombia', 4, 39, 12, 14, 13);
INSERT INTO `team_statistic_with_attempts` VALUES (18, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 18, 'Nigeria', 3, 39, 9, 16, 14);
INSERT INTO `team_statistic_with_attempts` VALUES (19, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 19, 'Tunisia', 3, 36, 13, 13, 10);
INSERT INTO `team_statistic_with_attempts` VALUES (20, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 20, 'Iceland', 3, 36, 12, 19, 5);
INSERT INTO `team_statistic_with_attempts` VALUES (21, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 21, 'Saudi Arabia', 3, 36, 10, 16, 10);
INSERT INTO `team_statistic_with_attempts` VALUES (22, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 22, 'Morocco', 3, 35, 10, 18, 7);
INSERT INTO `team_statistic_with_attempts` VALUES (23, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 24, 'Peru', 3, 32, 11, 14, 7);
INSERT INTO `team_statistic_with_attempts` VALUES (24, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 25, 'Australia', 3, 32, 8, 14, 10);
INSERT INTO `team_statistic_with_attempts` VALUES (25, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 26, 'Serbia', 3, 32, 7, 17, 8);
INSERT INTO `team_statistic_with_attempts` VALUES (26, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 27, 'Senegal', 3, 30, 12, 13, 5);
INSERT INTO `team_statistic_with_attempts` VALUES (27, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 28, 'Poland', 3, 30, 8, 13, 9);
INSERT INTO `team_statistic_with_attempts` VALUES (28, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 29, 'Egypt', 3, 29, 5, 17, 7);
INSERT INTO `team_statistic_with_attempts` VALUES (29, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 30, 'Costa Rica', 3, 28, 9, 13, 6);
INSERT INTO `team_statistic_with_attempts` VALUES (30, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 31, 'Panama', 3, 23, 8, 13, 2);
INSERT INTO `team_statistic_with_attempts` VALUES (31, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 32, 'IR Iran', 3, 21, 4, 15, 2);
COMMIT;

-- ----------------------------
-- Table structure for team_statistic_with_disciplinaries
-- ----------------------------
DROP TABLE IF EXISTS `team_statistic_with_disciplinaries`;
CREATE TABLE `team_statistic_with_disciplinaries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rank` int NOT NULL,
  `team_name` varchar(12) NOT NULL,
  `matches_payed` int NOT NULL,
  `yellow_cards` int DEFAULT NULL,
  `second_yellow_cards` int DEFAULT NULL,
  `red_cards` int DEFAULT NULL,
  `fouls_committed` int DEFAULT NULL,
  `fouls_suffered` int DEFAULT NULL,
  `fouls_causing_penalty` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_team_statistic_with_disciplinaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_statistic_with_disciplinaries
-- ----------------------------
BEGIN;
INSERT INTO `team_statistic_with_disciplinaries` VALUES (1, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 1, 'Colombia', 4, 9, 0, 1, 63, 52, 2);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (2, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 2, 'Switzerland', 4, 9, 0, 1, 53, 53, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (3, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 3, 'Russia', 5, 6, 1, 0, 95, 56, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (4, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 4, 'Germany', 3, 2, 1, 0, 29, 39, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (5, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 5, 'Croatia', 7, 15, 0, 0, 114, 105, 2);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (6, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 6, 'France', 7, 12, 0, 0, 93, 103, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (7, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 7, 'Belgium', 7, 11, 0, 0, 99, 75, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (8, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 8, 'Argentina', 4, 11, 0, 0, 55, 75, 2);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (9, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 9, 'Panama', 3, 11, 0, 0, 49, 48, 2);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (10, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 11, 'Mexico', 4, 9, 0, 0, 54, 47, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (11, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 12, 'Serbia', 3, 9, 0, 0, 45, 37, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (12, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 13, 'England', 7, 8, 0, 0, 72, 100, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (13, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 14, 'Sweden', 5, 8, 0, 0, 65, 64, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (14, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 15, 'Morocco', 3, 8, 0, 0, 62, 36, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (15, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 16, 'Portugal', 4, 7, 0, 0, 55, 59, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (16, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 17, 'Brazil', 5, 7, 0, 0, 50, 73, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (17, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 18, 'IR Iran', 3, 7, 0, 0, 44, 45, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (18, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 19, 'Australia', 3, 7, 0, 0, 37, 30, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (19, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 20, 'Denmark', 4, 6, 0, 0, 54, 28, 3);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (20, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 21, 'Senegal', 3, 6, 0, 0, 44, 30, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (21, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 22, 'Costa Rica', 3, 6, 0, 0, 43, 35, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (22, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 23, 'Egypt', 3, 5, 0, 0, 38, 21, 2);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (23, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 24, 'Japan', 4, 5, 0, 0, 37, 48, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (24, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 25, 'Peru', 3, 5, 0, 0, 37, 38, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (25, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 26, 'Tunisia', 3, 4, 0, 0, 46, 35, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (26, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 27, 'Nigeria', 3, 4, 0, 0, 45, 44, 2);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (27, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 28, 'Uruguay', 5, 3, 0, 0, 63, 69, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (28, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 29, 'Iceland', 3, 3, 0, 0, 35, 27, 1);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (29, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 30, 'Poland', 3, 3, 0, 0, 31, 33, 0);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (30, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 31, 'Spain', 4, 2, 0, 0, 34, 59, 2);
INSERT INTO `team_statistic_with_disciplinaries` VALUES (31, '1900-01-20 08:25:28', '1900-01-20 08:25:28', NULL, 32, 'Saudi Arabia', 3, 1, 0, 0, 30, 45, 0);
COMMIT;

-- ----------------------------
-- Table structure for team_statistic_with_top_goals
-- ----------------------------
DROP TABLE IF EXISTS `team_statistic_with_top_goals`;
CREATE TABLE `team_statistic_with_top_goals` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `rank` int NOT NULL,
  `team_name` varchar(12) NOT NULL,
  `matches_payed` int NOT NULL,
  `goals_for` int NOT NULL,
  `goals_scored` int NOT NULL,
  `goals_against` int NOT NULL,
  `penalty_goal` int NOT NULL,
  `own_goals` int NOT NULL,
  `open_play_goals` int NOT NULL,
  `set_piece_goals` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_team_statistic_with_top_goals_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team_statistic_with_top_goals
-- ----------------------------
BEGIN;
INSERT INTO `team_statistic_with_top_goals` VALUES (1, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 1, 'Belgium', 7, 16, 15, 6, 1, 1, 14, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (2, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 2, 'France', 7, 14, 12, 6, 3, 2, 9, 3);
INSERT INTO `team_statistic_with_top_goals` VALUES (3, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 3, 'Croatia', 7, 14, 13, 9, 1, 1, 12, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (4, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 4, 'England', 7, 12, 12, 8, 3, 0, 8, 4);
INSERT INTO `team_statistic_with_top_goals` VALUES (5, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 5, 'Russia', 5, 11, 10, 7, 1, 1, 8, 2);
INSERT INTO `team_statistic_with_top_goals` VALUES (6, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 6, 'Brazil', 5, 8, 8, 3, 0, 0, 8, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (7, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 7, 'Uruguay', 5, 7, 6, 3, 0, 1, 5, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (8, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 8, 'Spain', 4, 7, 6, 6, 0, 1, 6, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (9, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 9, 'Colombia', 4, 6, 6, 3, 0, 0, 5, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (10, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 10, 'Sweden', 5, 6, 5, 4, 2, 1, 3, 2);
INSERT INTO `team_statistic_with_top_goals` VALUES (11, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 11, 'Portugal', 4, 6, 6, 6, 1, 0, 4, 2);
INSERT INTO `team_statistic_with_top_goals` VALUES (12, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 12, 'Japan', 4, 6, 6, 7, 1, 0, 5, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (13, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 13, 'Argentina', 4, 6, 6, 9, 0, 0, 6, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (14, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 14, 'Switzerland', 4, 5, 5, 5, 0, 0, 5, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (15, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 15, 'Tunisia', 3, 5, 5, 8, 1, 0, 4, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (16, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 16, 'Senegal', 3, 4, 3, 4, 0, 1, 3, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (17, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 17, 'Denmark', 4, 3, 3, 2, 0, 0, 3, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (18, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 19, 'Nigeria', 3, 3, 3, 4, 1, 0, 2, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (19, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 20, 'Mexico', 4, 3, 3, 6, 1, 0, 2, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (20, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 21, 'IR Iran', 3, 2, 1, 2, 1, 1, 0, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (21, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 22, 'Peru', 3, 2, 2, 2, 0, 0, 2, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (22, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 23, 'Morocco', 3, 2, 2, 4, 0, 0, 2, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (23, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 24, 'Germany', 3, 2, 2, 4, 0, 0, 2, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (24, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 25, 'Serbia', 3, 2, 2, 4, 0, 0, 1, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (25, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 26, 'Costa Rica', 3, 2, 1, 5, 0, 1, 1, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (26, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 27, 'Iceland', 3, 2, 2, 5, 1, 0, 1, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (27, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 28, 'Poland', 3, 2, 2, 5, 0, 0, 2, 0);
INSERT INTO `team_statistic_with_top_goals` VALUES (28, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 29, 'Australia', 3, 2, 2, 5, 2, 0, 0, 2);
INSERT INTO `team_statistic_with_top_goals` VALUES (29, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 30, 'Egypt', 3, 2, 2, 6, 1, 0, 1, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (30, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 31, 'Saudi Arabia', 3, 2, 2, 7, 1, 0, 1, 1);
INSERT INTO `team_statistic_with_top_goals` VALUES (31, '1900-01-20 08:25:27', '1900-01-20 08:25:27', NULL, 32, 'Panama', 3, 2, 1, 11, 0, 1, 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `flag_address` varchar(128) NOT NULL,
  `team_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_teams_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teams
-- ----------------------------
BEGIN;
INSERT INTO `teams` VALUES (1, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/arg', 'Argentina');
INSERT INTO `teams` VALUES (2, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/aus', 'Australia');
INSERT INTO `teams` VALUES (3, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/bel', 'Belgium');
INSERT INTO `teams` VALUES (4, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/bra', 'Brazil');
INSERT INTO `teams` VALUES (5, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/col', 'Colombia');
INSERT INTO `teams` VALUES (6, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/crc', 'Costa Rica');
INSERT INTO `teams` VALUES (7, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/cro', 'Croatia');
INSERT INTO `teams` VALUES (8, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/den', 'Denmark');
INSERT INTO `teams` VALUES (9, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/egy', 'Egypt');
INSERT INTO `teams` VALUES (10, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/eng', 'England');
INSERT INTO `teams` VALUES (11, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/fra', 'France');
INSERT INTO `teams` VALUES (12, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/ger', 'Germany');
INSERT INTO `teams` VALUES (13, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/isl', 'Iceland');
INSERT INTO `teams` VALUES (14, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/irn', 'IR Iran');
INSERT INTO `teams` VALUES (15, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/jpn', 'Japan');
INSERT INTO `teams` VALUES (16, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/kor', 'Korea Republic');
INSERT INTO `teams` VALUES (17, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/mex', 'Mexico');
INSERT INTO `teams` VALUES (18, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/mar', 'Morocco');
INSERT INTO `teams` VALUES (19, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/nga', 'Nigeria');
INSERT INTO `teams` VALUES (20, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/pan', 'Panama');
INSERT INTO `teams` VALUES (21, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/per', 'Peru');
INSERT INTO `teams` VALUES (22, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/pol', 'Poland');
INSERT INTO `teams` VALUES (23, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/por', 'Portugal');
INSERT INTO `teams` VALUES (24, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/rus', 'Russia');
INSERT INTO `teams` VALUES (25, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/ksa', 'Saudi Arabia');
INSERT INTO `teams` VALUES (26, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/sen', 'Senegal');
INSERT INTO `teams` VALUES (27, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/srb', 'Serbia');
INSERT INTO `teams` VALUES (28, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/esp', 'Spain');
INSERT INTO `teams` VALUES (29, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/swe', 'Sweden');
INSERT INTO `teams` VALUES (30, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/sui', 'Switzerland');
INSERT INTO `teams` VALUES (31, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/tun', 'Tunisia');
INSERT INTO `teams` VALUES (32, '1900-01-20 18:55:32', '1900-01-20 18:55:32', NULL, 'https://api.fifa.com/api/v1/picture/flags-fwc2018-5/uru', 'Uruguay');
COMMIT;

-- ----------------------------
-- Table structure for world_cup_archives
-- ----------------------------
DROP TABLE IF EXISTS `world_cup_archives`;
CREATE TABLE `world_cup_archives` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `world_cup_url` varchar(128) DEFAULT NULL,
  `country_name` varchar(128) DEFAULT NULL,
  `year` varchar(64) DEFAULT NULL,
  `winner_country` varchar(64) DEFAULT NULL,
  `runners_up_name` varchar(64) DEFAULT NULL,
  `third_name` varchar(64) DEFAULT NULL,
  `fourth_name` varchar(64) DEFAULT NULL,
  `final_result` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_world_cup_archives_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of world_cup_archives
-- ----------------------------
BEGIN;
INSERT INTO `world_cup_archives` VALUES (1, '1900-01-20 18:55:53', '1900-01-20 18:55:53', NULL, 'https://www.fifa.com/worldcup/archive/uruguay1930/index.html', 'Uruguay', '1930', 'Uruguay', 'Argentina', 'USA', 'Yugoslavia', 'Uruguay vs Argentina : score : 4-2', '1930 FIFA World Cup Uruguay ™13 July - 30 July');
INSERT INTO `world_cup_archives` VALUES (2, '1900-01-20 18:55:54', '1900-01-20 18:55:54', NULL, 'https://www.fifa.com/worldcup/archive/italy1934/index.html', 'Italy', '1934', 'Italy', 'Czechoslovakia', 'Germany', 'Austria', 'Italy vs Czechoslovakia : score : 2-1', '1934 FIFA World Cup Italy ™27 May - 10 June');
INSERT INTO `world_cup_archives` VALUES (3, '1900-01-20 18:55:56', '1900-01-20 18:55:56', NULL, 'https://www.fifa.com/worldcup/archive/france1938/index.html', 'France', '1938', 'Italy', 'Hungary', 'Brazil', 'Sweden', 'Italy vs Hungary : score : 4-2', '1938 FIFA World Cup France ™04 June - 19 June');
INSERT INTO `world_cup_archives` VALUES (4, '1900-01-20 18:55:58', '1900-01-20 18:55:58', NULL, 'https://www.fifa.com/worldcup/archive/brazil1950/index.html', 'Brazil', '1950', 'Uruguay', 'Brazil', 'Sweden', 'Spain', 'Uruguay vs Brazil : score : 2-1', '1950 FIFA World Cup Brazil ™24 June - 16 July');
INSERT INTO `world_cup_archives` VALUES (5, '1900-01-20 18:55:59', '1900-01-20 18:55:59', NULL, 'https://www.fifa.com/worldcup/archive/switzerland1954/index.html', 'Switzerland', '1954', 'Germany FR', 'Hungary', 'Austria', 'Uruguay', 'Germany FR vs Hungary : score : 3-2', '1954 FIFA World Cup Switzerland ™16 June - 04 July');
INSERT INTO `world_cup_archives` VALUES (6, '1900-01-20 18:56:01', '1900-01-20 18:56:01', NULL, 'https://www.fifa.com/worldcup/archive/sweden1958/index.html', 'Sweden', '1958', 'Brazil', 'Sweden', 'France', 'Germany FR', 'Brazil vs Sweden : score : 5-2', '1958 FIFA World Cup Sweden ™08 June - 29 June');
INSERT INTO `world_cup_archives` VALUES (7, '1900-01-20 18:56:03', '1900-01-20 18:56:03', NULL, 'https://www.fifa.com/worldcup/archive/chile1962/index.html', 'Chile', '1962', 'Brazil', 'Czechoslovakia', 'Chile', 'Yugoslavia', 'Brazil vs Czechoslovakia : score : 3-1', '1962 FIFA World Cup Chile ™30 May - 17 June');
INSERT INTO `world_cup_archives` VALUES (8, '1900-01-20 18:56:05', '1900-01-20 18:56:05', NULL, 'https://www.fifa.com/worldcup/archive/england1966/index.html', 'England', '1966', 'England', 'Germany FR', 'Portugal', 'Soviet Union', 'England vs Germany FR : score : 4-2', '1966 FIFA World Cup England ™11 July - 30 July');
INSERT INTO `world_cup_archives` VALUES (9, '1900-01-20 18:56:07', '1900-01-20 18:56:07', NULL, 'https://www.fifa.com/worldcup/archive/mexico1970/index.html', 'Mexico', '1970', 'Brazil', 'Italy', 'Germany FR', 'Uruguay', 'Brazil vs Italy : score : 4-1', '1970 FIFA World Cup Mexico ™31 May - 21 June');
INSERT INTO `world_cup_archives` VALUES (10, '1900-01-20 18:56:09', '1900-01-20 18:56:09', NULL, 'https://www.fifa.com/worldcup/archive/germany1974/index.html', 'Germany', '1974', 'Germany FR', 'Netherlands', 'Poland', 'Brazil', 'Netherlands vs Germany FR : score : 1-2', '1974 FIFA World Cup Germany ™13 June - 07 July');
INSERT INTO `world_cup_archives` VALUES (11, '1900-01-20 18:56:11', '1900-01-20 18:56:11', NULL, 'https://www.fifa.com/worldcup/archive/argentina1978/index.html', 'Argentina', '1978', 'Argentina', 'Netherlands', 'Brazil', 'Italy', 'Argentina vs Netherlands : score : 3-1', '1978 FIFA World Cup Argentina ™01 June - 25 June');
INSERT INTO `world_cup_archives` VALUES (12, '1900-01-20 18:56:13', '1900-01-20 18:56:13', NULL, 'https://www.fifa.com/worldcup/archive/spain1982/index.html', 'Spain', '1982', 'Italy', 'Germany FR', 'Poland', 'France', 'Italy vs Germany FR : score : 3-1', '1982 FIFA World Cup Spain ™13 June - 11 July');
INSERT INTO `world_cup_archives` VALUES (13, '1900-01-20 18:56:15', '1900-01-20 18:56:15', NULL, 'https://www.fifa.com/worldcup/archive/mexico1986/index.html', 'Mexico', '1986', 'Argentina', 'Germany FR', 'France', 'Belgium', 'Argentina vs Germany FR : score : 3-2', '1986 FIFA World Cup Mexico ™31 May - 29 June');
INSERT INTO `world_cup_archives` VALUES (14, '1900-01-20 18:56:17', '1900-01-20 18:56:17', NULL, 'https://www.fifa.com/worldcup/archive/italy1990/index.html', 'Italy', '1990', 'Germany FR', 'Argentina', 'Italy', 'England', 'Germany FR vs Argentina : score : 1-0', '1990 FIFA World Cup Italy ™08 June - 08 July');
INSERT INTO `world_cup_archives` VALUES (15, '1900-01-20 18:56:18', '1900-01-20 18:56:18', NULL, 'https://www.fifa.com/worldcup/archive/usa1994/index.html', 'USA', '1994', 'Brazil', 'Italy', 'Sweden', 'Bulgaria', 'Brazil vs Italy : score : 0-0', '1994 FIFA World Cup USA ™17 June - 17 July');
INSERT INTO `world_cup_archives` VALUES (16, '1900-01-20 18:56:20', '1900-01-20 18:56:20', NULL, 'https://www.fifa.com/worldcup/archive/france1998/index.html', 'France', '1998', 'France', 'Brazil', 'Croatia', 'Netherlands', 'Brazil vs France : score : 0-3', '1998 FIFA World Cup France ™10 June - 12 July');
INSERT INTO `world_cup_archives` VALUES (17, '1900-01-20 18:56:22', '1900-01-20 18:56:22', NULL, 'https://www.fifa.com/worldcup/archive/koreajapan2002/index.html', 'Korea/Japan', '2002', 'Brazil', 'Germany', 'Turkey', 'Korea Republic', 'Germany vs Brazil : score : 0-2', '2002 FIFA World Cup Korea/Japan ™31 May - 30 June');
INSERT INTO `world_cup_archives` VALUES (18, '1900-01-20 18:56:24', '1900-01-20 18:56:24', NULL, 'https://www.fifa.com/worldcup/archive/germany2006/index.html', 'Germany', '2006', 'Italy', 'France', 'Germany', 'Portugal', 'Italy vs France : score : 1-1', '2006 FIFA World Cup Germany ™09 June - 09 July');
INSERT INTO `world_cup_archives` VALUES (19, '1900-01-20 18:56:27', '1900-01-20 18:56:27', NULL, 'https://www.fifa.com/worldcup/archive/southafrica2010/index.html', 'South Africa', '2012', 'Spain', 'Netherlands', 'Germany', 'Uruguay', 'Netherlands vs Spain : score : 0-1', '2010 FIFA World Cup South Africa™11 June - 11 July');
INSERT INTO `world_cup_archives` VALUES (20, '1900-01-20 18:56:30', '1900-01-20 18:56:30', NULL, 'https://www.fifa.com/worldcup/archive/brazil2014/index.html', 'Brazil', '2014', 'Germany', 'Argentina', 'Netherlands', 'Brazil', 'Germany vs Argentina : score : 1-0', '2014 FIFA World Cup Brazil™12 June - 13 July');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
