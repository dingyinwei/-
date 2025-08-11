/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : storetow

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 11/08/2025 08:10:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 201 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO `auth_permission` VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO `auth_permission` VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO `auth_permission` VALUES (4, 'Can view permission', 1, 'view_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (6, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (7, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (8, 'Can view group', 2, 'view_group');
INSERT INTO `auth_permission` VALUES (9, 'Can add content type', 3, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (10, 'Can change content type', 3, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (11, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (12, 'Can view content type', 3, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (13, 'Can add session', 4, 'add_session');
INSERT INTO `auth_permission` VALUES (14, 'Can change session', 4, 'change_session');
INSERT INTO `auth_permission` VALUES (15, 'Can delete session', 4, 'delete_session');
INSERT INTO `auth_permission` VALUES (16, 'Can view session', 4, 'view_session');
INSERT INTO `auth_permission` VALUES (17, 'Can add captcha store', 5, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (18, 'Can change captcha store', 5, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (19, 'Can delete captcha store', 5, 'delete_captchastore');
INSERT INTO `auth_permission` VALUES (20, 'Can view captcha store', 5, 'view_captchastore');
INSERT INTO `auth_permission` VALUES (21, 'Can add 用户表', 6, 'add_users');
INSERT INTO `auth_permission` VALUES (22, 'Can change 用户表', 6, 'change_users');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 用户表', 6, 'delete_users');
INSERT INTO `auth_permission` VALUES (24, 'Can view 用户表', 6, 'view_users');
INSERT INTO `auth_permission` VALUES (25, 'Can add 部门表', 7, 'add_dept');
INSERT INTO `auth_permission` VALUES (26, 'Can change 部门表', 7, 'change_dept');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 部门表', 7, 'delete_dept');
INSERT INTO `auth_permission` VALUES (28, 'Can view 部门表', 7, 'view_dept');
INSERT INTO `auth_permission` VALUES (29, 'Can add 菜单表', 8, 'add_menu');
INSERT INTO `auth_permission` VALUES (30, 'Can change 菜单表', 8, 'change_menu');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 菜单表', 8, 'delete_menu');
INSERT INTO `auth_permission` VALUES (32, 'Can view 菜单表', 8, 'view_menu');
INSERT INTO `auth_permission` VALUES (33, 'Can add 菜单权限表', 9, 'add_menubutton');
INSERT INTO `auth_permission` VALUES (34, 'Can change 菜单权限表', 9, 'change_menubutton');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 菜单权限表', 9, 'delete_menubutton');
INSERT INTO `auth_permission` VALUES (36, 'Can view 菜单权限表', 9, 'view_menubutton');
INSERT INTO `auth_permission` VALUES (37, 'Can add 消息中心', 10, 'add_messagecenter');
INSERT INTO `auth_permission` VALUES (38, 'Can change 消息中心', 10, 'change_messagecenter');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 消息中心', 10, 'delete_messagecenter');
INSERT INTO `auth_permission` VALUES (40, 'Can view 消息中心', 10, 'view_messagecenter');
INSERT INTO `auth_permission` VALUES (41, 'Can add 角色表', 11, 'add_role');
INSERT INTO `auth_permission` VALUES (42, 'Can change 角色表', 11, 'change_role');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 角色表', 11, 'delete_role');
INSERT INTO `auth_permission` VALUES (44, 'Can view 角色表', 11, 'view_role');
INSERT INTO `auth_permission` VALUES (45, 'Can add 角色菜单权限表', 12, 'add_rolemenupermission');
INSERT INTO `auth_permission` VALUES (46, 'Can change 角色菜单权限表', 12, 'change_rolemenupermission');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 角色菜单权限表', 12, 'delete_rolemenupermission');
INSERT INTO `auth_permission` VALUES (48, 'Can view 角色菜单权限表', 12, 'view_rolemenupermission');
INSERT INTO `auth_permission` VALUES (49, 'Can add 角色按钮权限表', 13, 'add_rolemenubuttonpermission');
INSERT INTO `auth_permission` VALUES (50, 'Can change 角色按钮权限表', 13, 'change_rolemenubuttonpermission');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 角色按钮权限表', 13, 'delete_rolemenubuttonpermission');
INSERT INTO `auth_permission` VALUES (52, 'Can view 角色按钮权限表', 13, 'view_rolemenubuttonpermission');
INSERT INTO `auth_permission` VALUES (53, 'Can add 岗位表', 14, 'add_post');
INSERT INTO `auth_permission` VALUES (54, 'Can change 岗位表', 14, 'change_post');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 岗位表', 14, 'delete_post');
INSERT INTO `auth_permission` VALUES (56, 'Can view 岗位表', 14, 'view_post');
INSERT INTO `auth_permission` VALUES (57, 'Can add 操作日志', 15, 'add_operationlog');
INSERT INTO `auth_permission` VALUES (58, 'Can change 操作日志', 15, 'change_operationlog');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 操作日志', 15, 'delete_operationlog');
INSERT INTO `auth_permission` VALUES (60, 'Can view 操作日志', 15, 'view_operationlog');
INSERT INTO `auth_permission` VALUES (61, 'Can add 消息中心目标用户表', 16, 'add_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (62, 'Can change 消息中心目标用户表', 16, 'change_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 消息中心目标用户表', 16, 'delete_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (64, 'Can view 消息中心目标用户表', 16, 'view_messagecentertargetuser');
INSERT INTO `auth_permission` VALUES (65, 'Can add 菜单字段表', 17, 'add_menufield');
INSERT INTO `auth_permission` VALUES (66, 'Can change 菜单字段表', 17, 'change_menufield');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 菜单字段表', 17, 'delete_menufield');
INSERT INTO `auth_permission` VALUES (68, 'Can view 菜单字段表', 17, 'view_menufield');
INSERT INTO `auth_permission` VALUES (69, 'Can add 登录日志', 18, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (70, 'Can change 登录日志', 18, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 登录日志', 18, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (72, 'Can view 登录日志', 18, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (73, 'Can add 文件管理', 19, 'add_filelist');
INSERT INTO `auth_permission` VALUES (74, 'Can change 文件管理', 19, 'change_filelist');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 文件管理', 19, 'delete_filelist');
INSERT INTO `auth_permission` VALUES (76, 'Can view 文件管理', 19, 'view_filelist');
INSERT INTO `auth_permission` VALUES (77, 'Can add 字段权限表', 20, 'add_fieldpermission');
INSERT INTO `auth_permission` VALUES (78, 'Can change 字段权限表', 20, 'change_fieldpermission');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 字段权限表', 20, 'delete_fieldpermission');
INSERT INTO `auth_permission` VALUES (80, 'Can view 字段权限表', 20, 'view_fieldpermission');
INSERT INTO `auth_permission` VALUES (81, 'Can add 下载中心', 21, 'add_downloadcenter');
INSERT INTO `auth_permission` VALUES (82, 'Can change 下载中心', 21, 'change_downloadcenter');
INSERT INTO `auth_permission` VALUES (83, 'Can delete 下载中心', 21, 'delete_downloadcenter');
INSERT INTO `auth_permission` VALUES (84, 'Can view 下载中心', 21, 'view_downloadcenter');
INSERT INTO `auth_permission` VALUES (85, 'Can add 字典表', 22, 'add_dictionary');
INSERT INTO `auth_permission` VALUES (86, 'Can change 字典表', 22, 'change_dictionary');
INSERT INTO `auth_permission` VALUES (87, 'Can delete 字典表', 22, 'delete_dictionary');
INSERT INTO `auth_permission` VALUES (88, 'Can view 字典表', 22, 'view_dictionary');
INSERT INTO `auth_permission` VALUES (89, 'Can add 地区表', 23, 'add_area');
INSERT INTO `auth_permission` VALUES (90, 'Can change 地区表', 23, 'change_area');
INSERT INTO `auth_permission` VALUES (91, 'Can delete 地区表', 23, 'delete_area');
INSERT INTO `auth_permission` VALUES (92, 'Can view 地区表', 23, 'view_area');
INSERT INTO `auth_permission` VALUES (93, 'Can add 接口白名单', 24, 'add_apiwhitelist');
INSERT INTO `auth_permission` VALUES (94, 'Can change 接口白名单', 24, 'change_apiwhitelist');
INSERT INTO `auth_permission` VALUES (95, 'Can delete 接口白名单', 24, 'delete_apiwhitelist');
INSERT INTO `auth_permission` VALUES (96, 'Can view 接口白名单', 24, 'view_apiwhitelist');
INSERT INTO `auth_permission` VALUES (97, 'Can add 系统配置表', 25, 'add_systemconfig');
INSERT INTO `auth_permission` VALUES (98, 'Can change 系统配置表', 25, 'change_systemconfig');
INSERT INTO `auth_permission` VALUES (99, 'Can delete 系统配置表', 25, 'delete_systemconfig');
INSERT INTO `auth_permission` VALUES (100, 'Can view 系统配置表', 25, 'view_systemconfig');
INSERT INTO `auth_permission` VALUES (101, 'Can add 收货地址表', 26, 'add_addressmodel');
INSERT INTO `auth_permission` VALUES (102, 'Can change 收货地址表', 26, 'change_addressmodel');
INSERT INTO `auth_permission` VALUES (103, 'Can delete 收货地址表', 26, 'delete_addressmodel');
INSERT INTO `auth_permission` VALUES (104, 'Can view 收货地址表', 26, 'view_addressmodel');
INSERT INTO `auth_permission` VALUES (105, 'Can add 购物车表', 27, 'add_cartmodel');
INSERT INTO `auth_permission` VALUES (106, 'Can change 购物车表', 27, 'change_cartmodel');
INSERT INTO `auth_permission` VALUES (107, 'Can delete 购物车表', 27, 'delete_cartmodel');
INSERT INTO `auth_permission` VALUES (108, 'Can view 购物车表', 27, 'view_cartmodel');
INSERT INTO `auth_permission` VALUES (109, 'Can add 商品表', 28, 'add_commodity');
INSERT INTO `auth_permission` VALUES (110, 'Can change 商品表', 28, 'change_commodity');
INSERT INTO `auth_permission` VALUES (111, 'Can delete 商品表', 28, 'delete_commodity');
INSERT INTO `auth_permission` VALUES (112, 'Can view 商品表', 28, 'view_commodity');
INSERT INTO `auth_permission` VALUES (113, 'Can add 订单详情表', 29, 'add_orderdetailmodel');
INSERT INTO `auth_permission` VALUES (114, 'Can change 订单详情表', 29, 'change_orderdetailmodel');
INSERT INTO `auth_permission` VALUES (115, 'Can delete 订单详情表', 29, 'delete_orderdetailmodel');
INSERT INTO `auth_permission` VALUES (116, 'Can view 订单详情表', 29, 'view_orderdetailmodel');
INSERT INTO `auth_permission` VALUES (117, 'Can add 订单表', 30, 'add_ordermodel');
INSERT INTO `auth_permission` VALUES (118, 'Can change 订单表', 30, 'change_ordermodel');
INSERT INTO `auth_permission` VALUES (119, 'Can delete 订单表', 30, 'delete_ordermodel');
INSERT INTO `auth_permission` VALUES (120, 'Can view 订单表', 30, 'view_ordermodel');
INSERT INTO `auth_permission` VALUES (121, 'Can add 轮播图', 31, 'add_slideshow');
INSERT INTO `auth_permission` VALUES (122, 'Can change 轮播图', 31, 'change_slideshow');
INSERT INTO `auth_permission` VALUES (123, 'Can delete 轮播图', 31, 'delete_slideshow');
INSERT INTO `auth_permission` VALUES (124, 'Can view 轮播图', 31, 'view_slideshow');
INSERT INTO `auth_permission` VALUES (125, 'Can add 分类表', 32, 'add_sorttype');
INSERT INTO `auth_permission` VALUES (126, 'Can change 分类表', 32, 'change_sorttype');
INSERT INTO `auth_permission` VALUES (127, 'Can delete 分类表', 32, 'delete_sorttype');
INSERT INTO `auth_permission` VALUES (128, 'Can view 分类表', 32, 'view_sorttype');
INSERT INTO `auth_permission` VALUES (129, 'Can add crontab', 33, 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES (130, 'Can change crontab', 33, 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES (131, 'Can delete crontab', 33, 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES (132, 'Can view crontab', 33, 'view_crontabschedule');
INSERT INTO `auth_permission` VALUES (133, 'Can add interval', 34, 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES (134, 'Can change interval', 34, 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES (135, 'Can delete interval', 34, 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES (136, 'Can view interval', 34, 'view_intervalschedule');
INSERT INTO `auth_permission` VALUES (137, 'Can add periodic task', 35, 'add_periodictask');
INSERT INTO `auth_permission` VALUES (138, 'Can change periodic task', 35, 'change_periodictask');
INSERT INTO `auth_permission` VALUES (139, 'Can delete periodic task', 35, 'delete_periodictask');
INSERT INTO `auth_permission` VALUES (140, 'Can view periodic task', 35, 'view_periodictask');
INSERT INTO `auth_permission` VALUES (141, 'Can add periodic task track', 36, 'add_periodictasks');
INSERT INTO `auth_permission` VALUES (142, 'Can change periodic task track', 36, 'change_periodictasks');
INSERT INTO `auth_permission` VALUES (143, 'Can delete periodic task track', 36, 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES (144, 'Can view periodic task track', 36, 'view_periodictasks');
INSERT INTO `auth_permission` VALUES (145, 'Can add solar event', 37, 'add_solarschedule');
INSERT INTO `auth_permission` VALUES (146, 'Can change solar event', 37, 'change_solarschedule');
INSERT INTO `auth_permission` VALUES (147, 'Can delete solar event', 37, 'delete_solarschedule');
INSERT INTO `auth_permission` VALUES (148, 'Can view solar event', 37, 'view_solarschedule');
INSERT INTO `auth_permission` VALUES (149, 'Can add clocked', 38, 'add_clockedschedule');
INSERT INTO `auth_permission` VALUES (150, 'Can change clocked', 38, 'change_clockedschedule');
INSERT INTO `auth_permission` VALUES (151, 'Can delete clocked', 38, 'delete_clockedschedule');
INSERT INTO `auth_permission` VALUES (152, 'Can view clocked', 38, 'view_clockedschedule');
INSERT INTO `auth_permission` VALUES (153, 'Can add chord counter', 39, 'add_chordcounter');
INSERT INTO `auth_permission` VALUES (154, 'Can change chord counter', 39, 'change_chordcounter');
INSERT INTO `auth_permission` VALUES (155, 'Can delete chord counter', 39, 'delete_chordcounter');
INSERT INTO `auth_permission` VALUES (156, 'Can view chord counter', 39, 'view_chordcounter');
INSERT INTO `auth_permission` VALUES (157, 'Can add task result', 40, 'add_taskresult');
INSERT INTO `auth_permission` VALUES (158, 'Can change task result', 40, 'change_taskresult');
INSERT INTO `auth_permission` VALUES (159, 'Can delete task result', 40, 'delete_taskresult');
INSERT INTO `auth_permission` VALUES (160, 'Can view task result', 40, 'view_taskresult');
INSERT INTO `auth_permission` VALUES (161, 'Can add group result', 41, 'add_groupresult');
INSERT INTO `auth_permission` VALUES (162, 'Can change group result', 41, 'change_groupresult');
INSERT INTO `auth_permission` VALUES (163, 'Can delete group result', 41, 'delete_groupresult');
INSERT INTO `auth_permission` VALUES (164, 'Can view group result', 41, 'view_groupresult');
INSERT INTO `auth_permission` VALUES (165, 'Can add 测试数据表', 42, 'add_testmodel');
INSERT INTO `auth_permission` VALUES (166, 'Can change 测试数据表', 42, 'change_testmodel');
INSERT INTO `auth_permission` VALUES (167, 'Can delete 测试数据表', 42, 'delete_testmodel');
INSERT INTO `auth_permission` VALUES (168, 'Can view 测试数据表', 42, 'view_testmodel');
INSERT INTO `auth_permission` VALUES (169, 'Can add 逝者信息', 43, 'add_departed');
INSERT INTO `auth_permission` VALUES (170, 'Can change 逝者信息', 43, 'change_departed');
INSERT INTO `auth_permission` VALUES (171, 'Can delete 逝者信息', 43, 'delete_departed');
INSERT INTO `auth_permission` VALUES (172, 'Can view 逝者信息', 43, 'view_departed');
INSERT INTO `auth_permission` VALUES (173, 'Can add 亲属表', 44, 'add_relationmodel');
INSERT INTO `auth_permission` VALUES (174, 'Can change 亲属表', 44, 'change_relationmodel');
INSERT INTO `auth_permission` VALUES (175, 'Can delete 亲属表', 44, 'delete_relationmodel');
INSERT INTO `auth_permission` VALUES (176, 'Can view 亲属表', 44, 'view_relationmodel');
INSERT INTO `auth_permission` VALUES (177, 'Can add 遗体冷藏表', 45, 'add_refrigeratedmodel');
INSERT INTO `auth_permission` VALUES (178, 'Can change 遗体冷藏表', 45, 'change_refrigeratedmodel');
INSERT INTO `auth_permission` VALUES (179, 'Can delete 遗体冷藏表', 45, 'delete_refrigeratedmodel');
INSERT INTO `auth_permission` VALUES (180, 'Can view 遗体冷藏表', 45, 'view_refrigeratedmodel');
INSERT INTO `auth_permission` VALUES (181, 'Can add 火化记录表', 46, 'add_cremationmodel');
INSERT INTO `auth_permission` VALUES (182, 'Can change 火化记录表', 46, 'change_cremationmodel');
INSERT INTO `auth_permission` VALUES (183, 'Can delete 火化记录表', 46, 'delete_cremationmodel');
INSERT INTO `auth_permission` VALUES (184, 'Can view 火化记录表', 46, 'view_cremationmodel');
INSERT INTO `auth_permission` VALUES (185, 'Can add 预约表', 47, 'add_reservationmodel');
INSERT INTO `auth_permission` VALUES (186, 'Can change 预约表', 47, 'change_reservationmodel');
INSERT INTO `auth_permission` VALUES (187, 'Can delete 预约表', 47, 'delete_reservationmodel');
INSERT INTO `auth_permission` VALUES (188, 'Can view 预约表', 47, 'view_reservationmodel');
INSERT INTO `auth_permission` VALUES (189, 'Can add 核心模型', 48, 'add_parentclassmodel');
INSERT INTO `auth_permission` VALUES (190, 'Can change 核心模型', 48, 'change_parentclassmodel');
INSERT INTO `auth_permission` VALUES (191, 'Can delete 核心模型', 48, 'delete_parentclassmodel');
INSERT INTO `auth_permission` VALUES (192, 'Can view 核心模型', 48, 'view_parentclassmodel');
INSERT INTO `auth_permission` VALUES (193, 'Can add 父类项目', 49, 'add_bigclassitem');
INSERT INTO `auth_permission` VALUES (194, 'Can change 父类项目', 49, 'change_bigclassitem');
INSERT INTO `auth_permission` VALUES (195, 'Can delete 父类项目', 49, 'delete_bigclassitem');
INSERT INTO `auth_permission` VALUES (196, 'Can view 父类项目', 49, 'view_bigclassitem');
INSERT INTO `auth_permission` VALUES (197, 'Can add 子类项目', 50, 'add_parentsclassmodel');
INSERT INTO `auth_permission` VALUES (198, 'Can change 子类项目', 50, 'change_parentsclassmodel');
INSERT INTO `auth_permission` VALUES (199, 'Can delete 子类项目', 50, 'delete_parentsclassmodel');
INSERT INTO `auth_permission` VALUES (200, 'Can view 子类项目', 50, 'view_parentsclassmodel');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_clockedschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_clockedschedule`;
CREATE TABLE `django_celery_beat_clockedschedule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `clocked_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_clockedschedule
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_crontabschedule`;
CREATE TABLE `django_celery_beat_crontabschedule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `minute` varchar(240) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hour` varchar(96) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_week` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_of_month` varchar(124) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_of_year` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timezone` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_crontabschedule
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_intervalschedule`;
CREATE TABLE `django_celery_beat_intervalschedule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `every` int NOT NULL,
  `period` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_intervalschedule
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictask`;
CREATE TABLE `django_celery_beat_periodictask`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `exchange` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `routing_key` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `expires` datetime(6) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime(6) NULL DEFAULT NULL,
  `total_run_count` int UNSIGNED NOT NULL,
  `date_changed` datetime(6) NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `crontab_id` int NULL DEFAULT NULL,
  `interval_id` int NULL DEFAULT NULL,
  `solar_id` int NULL DEFAULT NULL,
  `one_off` tinyint(1) NOT NULL,
  `start_time` datetime(6) NULL DEFAULT NULL,
  `priority` int UNSIGNED NULL DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clocked_id` int NULL DEFAULT NULL,
  `expire_seconds` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE,
  INDEX `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce`(`crontab_id` ASC) USING BTREE,
  INDEX `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce`(`interval_id` ASC) USING BTREE,
  INDEX `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce`(`solar_id` ASC) USING BTREE,
  INDEX `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce`(`clocked_id` ASC) USING BTREE,
  CONSTRAINT `django_celery_beat_p_clocked_id_47a69f82_fk_django_ce` FOREIGN KEY (`clocked_id`) REFERENCES `django_celery_beat_clockedschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_crontab_id_d3cba168_fk_django_ce` FOREIGN KEY (`crontab_id`) REFERENCES `django_celery_beat_crontabschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_interval_id_a8ca27da_fk_django_ce` FOREIGN KEY (`interval_id`) REFERENCES `django_celery_beat_intervalschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_p_solar_id_a87ce72c_fk_django_ce` FOREIGN KEY (`solar_id`) REFERENCES `django_celery_beat_solarschedule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_celery_beat_periodictask_chk_1` CHECK (`total_run_count` >= 0),
  CONSTRAINT `django_celery_beat_periodictask_chk_2` CHECK (`priority` >= 0),
  CONSTRAINT `django_celery_beat_periodictask_chk_3` CHECK (`expire_seconds` >= 0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_periodictask
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_periodictasks`;
CREATE TABLE `django_celery_beat_periodictasks`  (
  `ident` smallint NOT NULL,
  `last_update` datetime(6) NOT NULL,
  PRIMARY KEY (`ident`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_periodictasks
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_beat_solarschedule
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_beat_solarschedule`;
CREATE TABLE `django_celery_beat_solarschedule`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `event` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` decimal(9, 6) NOT NULL,
  `longitude` decimal(9, 6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq`(`event` ASC, `latitude` ASC, `longitude` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_beat_solarschedule
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_results_chordcounter
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_chordcounter`;
CREATE TABLE `django_celery_results_chordcounter`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_tasks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `django_celery_results_chordcounter_chk_1` CHECK (`count` >= 0)
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_results_chordcounter
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_results_groupresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_groupresult`;
CREATE TABLE `django_celery_results_groupresult`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id`(`group_id` ASC) USING BTREE,
  INDEX `django_cele_date_cr_bd6c1d_idx`(`date_created` ASC) USING BTREE,
  INDEX `django_cele_date_do_caae0e_idx`(`date_done` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_results_groupresult
-- ----------------------------

-- ----------------------------
-- Table structure for django_celery_results_taskresult
-- ----------------------------
DROP TABLE IF EXISTS `django_celery_results_taskresult`;
CREATE TABLE `django_celery_results_taskresult`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `periodic_task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `task_args` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `task_kwargs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `worker` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `content_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_encoding` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `date_created` datetime(6) NOT NULL,
  `date_done` datetime(6) NOT NULL,
  `traceback` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `task_id`(`task_id` ASC) USING BTREE,
  INDEX `django_cele_task_na_08aec9_idx`(`task_name` ASC) USING BTREE,
  INDEX `django_cele_status_9b6201_idx`(`status` ASC) USING BTREE,
  INDEX `django_cele_worker_d54dd8_idx`(`worker` ASC) USING BTREE,
  INDEX `django_cele_date_cr_f04a50_idx`(`date_created` ASC) USING BTREE,
  INDEX `django_cele_date_do_f59aad_idx`(`date_done` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_celery_results_taskresult
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (1, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (5, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (38, 'django_celery_beat', 'clockedschedule');
INSERT INTO `django_content_type` VALUES (33, 'django_celery_beat', 'crontabschedule');
INSERT INTO `django_content_type` VALUES (34, 'django_celery_beat', 'intervalschedule');
INSERT INTO `django_content_type` VALUES (35, 'django_celery_beat', 'periodictask');
INSERT INTO `django_content_type` VALUES (36, 'django_celery_beat', 'periodictasks');
INSERT INTO `django_content_type` VALUES (37, 'django_celery_beat', 'solarschedule');
INSERT INTO `django_content_type` VALUES (39, 'django_celery_results', 'chordcounter');
INSERT INTO `django_content_type` VALUES (41, 'django_celery_results', 'groupresult');
INSERT INTO `django_content_type` VALUES (40, 'django_celery_results', 'taskresult');
INSERT INTO `django_content_type` VALUES (49, 'newStart', 'bigclassitem');
INSERT INTO `django_content_type` VALUES (46, 'newStart', 'cremationmodel');
INSERT INTO `django_content_type` VALUES (43, 'newStart', 'departed');
INSERT INTO `django_content_type` VALUES (48, 'newStart', 'parentclassmodel');
INSERT INTO `django_content_type` VALUES (50, 'newStart', 'parentsclassmodel');
INSERT INTO `django_content_type` VALUES (45, 'newStart', 'refrigeratedmodel');
INSERT INTO `django_content_type` VALUES (44, 'newStart', 'relationmodel');
INSERT INTO `django_content_type` VALUES (47, 'newStart', 'reservationmodel');
INSERT INTO `django_content_type` VALUES (42, 'newStart', 'testmodel');
INSERT INTO `django_content_type` VALUES (4, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (26, 'StartApp', 'addressmodel');
INSERT INTO `django_content_type` VALUES (27, 'StartApp', 'cartmodel');
INSERT INTO `django_content_type` VALUES (28, 'StartApp', 'commodity');
INSERT INTO `django_content_type` VALUES (29, 'StartApp', 'orderdetailmodel');
INSERT INTO `django_content_type` VALUES (30, 'StartApp', 'ordermodel');
INSERT INTO `django_content_type` VALUES (31, 'StartApp', 'slideshow');
INSERT INTO `django_content_type` VALUES (32, 'StartApp', 'sorttype');
INSERT INTO `django_content_type` VALUES (24, 'system', 'apiwhitelist');
INSERT INTO `django_content_type` VALUES (23, 'system', 'area');
INSERT INTO `django_content_type` VALUES (7, 'system', 'dept');
INSERT INTO `django_content_type` VALUES (22, 'system', 'dictionary');
INSERT INTO `django_content_type` VALUES (21, 'system', 'downloadcenter');
INSERT INTO `django_content_type` VALUES (20, 'system', 'fieldpermission');
INSERT INTO `django_content_type` VALUES (19, 'system', 'filelist');
INSERT INTO `django_content_type` VALUES (18, 'system', 'loginlog');
INSERT INTO `django_content_type` VALUES (8, 'system', 'menu');
INSERT INTO `django_content_type` VALUES (9, 'system', 'menubutton');
INSERT INTO `django_content_type` VALUES (17, 'system', 'menufield');
INSERT INTO `django_content_type` VALUES (10, 'system', 'messagecenter');
INSERT INTO `django_content_type` VALUES (16, 'system', 'messagecentertargetuser');
INSERT INTO `django_content_type` VALUES (15, 'system', 'operationlog');
INSERT INTO `django_content_type` VALUES (14, 'system', 'post');
INSERT INTO `django_content_type` VALUES (11, 'system', 'role');
INSERT INTO `django_content_type` VALUES (13, 'system', 'rolemenubuttonpermission');
INSERT INTO `django_content_type` VALUES (12, 'system', 'rolemenupermission');
INSERT INTO `django_content_type` VALUES (25, 'system', 'systemconfig');
INSERT INTO `django_content_type` VALUES (6, 'system', 'users');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2025-06-20 13:15:16.847625');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2025-06-20 13:15:16.914551');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2025-06-20 13:15:17.247081');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2025-06-20 13:15:17.313064');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2025-06-20 13:15:17.321061');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2025-06-20 13:15:17.332651');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2025-06-20 13:15:17.342861');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2025-06-20 13:15:17.348863');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2025-06-20 13:15:17.360853');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2025-06-20 13:15:17.370845');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2025-06-20 13:15:17.385836');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2025-06-20 13:15:17.414821');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2025-06-20 13:15:17.427814');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2025-06-20 13:15:17.441804');
INSERT INTO `django_migrations` VALUES (15, 'system', '0001_initial', '2025-06-20 13:15:19.761207');
INSERT INTO `django_migrations` VALUES (16, 'StartApp', '0001_initial', '2025-06-20 13:15:19.991942');
INSERT INTO `django_migrations` VALUES (17, 'StartApp', '0002_initial', '2025-06-20 13:15:21.698521');
INSERT INTO `django_migrations` VALUES (18, 'captcha', '0001_initial', '2025-06-20 13:15:21.732489');
INSERT INTO `django_migrations` VALUES (19, 'captcha', '0002_alter_captchastore_id', '2025-06-20 13:15:21.743482');
INSERT INTO `django_migrations` VALUES (20, 'django_celery_beat', '0001_initial', '2025-06-20 13:15:21.994291');
INSERT INTO `django_migrations` VALUES (21, 'django_celery_beat', '0002_auto_20161118_0346', '2025-06-20 13:15:22.126938');
INSERT INTO `django_migrations` VALUES (22, 'django_celery_beat', '0003_auto_20161209_0049', '2025-06-20 13:15:22.176671');
INSERT INTO `django_migrations` VALUES (23, 'django_celery_beat', '0004_auto_20170221_0000', '2025-06-20 13:15:22.190049');
INSERT INTO `django_migrations` VALUES (24, 'django_celery_beat', '0005_add_solarschedule_events_choices', '2025-06-20 13:15:22.205039');
INSERT INTO `django_migrations` VALUES (25, 'django_celery_beat', '0006_auto_20180322_0932', '2025-06-20 13:15:22.363252');
INSERT INTO `django_migrations` VALUES (26, 'django_celery_beat', '0007_auto_20180521_0826', '2025-06-20 13:15:22.461375');
INSERT INTO `django_migrations` VALUES (27, 'django_celery_beat', '0008_auto_20180914_1922', '2025-06-20 13:15:22.532298');
INSERT INTO `django_migrations` VALUES (28, 'django_celery_beat', '0006_auto_20180210_1226', '2025-06-20 13:15:22.565630');
INSERT INTO `django_migrations` VALUES (29, 'django_celery_beat', '0006_periodictask_priority', '2025-06-20 13:15:22.648761');
INSERT INTO `django_migrations` VALUES (30, 'django_celery_beat', '0009_periodictask_headers', '2025-06-20 13:15:22.730707');
INSERT INTO `django_migrations` VALUES (31, 'django_celery_beat', '0010_auto_20190429_0326', '2025-06-20 13:15:23.020357');
INSERT INTO `django_migrations` VALUES (32, 'django_celery_beat', '0011_auto_20190508_0153', '2025-06-20 13:15:23.135666');
INSERT INTO `django_migrations` VALUES (33, 'django_celery_beat', '0012_periodictask_expire_seconds', '2025-06-20 13:15:23.256947');
INSERT INTO `django_migrations` VALUES (34, 'django_celery_beat', '0013_auto_20200609_0727', '2025-06-20 13:15:23.279040');
INSERT INTO `django_migrations` VALUES (35, 'django_celery_beat', '0014_remove_clockedschedule_enabled', '2025-06-20 13:15:23.304347');
INSERT INTO `django_migrations` VALUES (36, 'django_celery_beat', '0015_edit_solarschedule_events_choices', '2025-06-20 13:15:23.315488');
INSERT INTO `django_migrations` VALUES (37, 'django_celery_beat', '0016_alter_crontabschedule_timezone', '2025-06-20 13:15:23.338474');
INSERT INTO `django_migrations` VALUES (38, 'django_celery_beat', '0017_alter_crontabschedule_month_of_year', '2025-06-20 13:15:23.354466');
INSERT INTO `django_migrations` VALUES (39, 'django_celery_beat', '0018_improve_crontab_helptext', '2025-06-20 13:15:23.377449');
INSERT INTO `django_migrations` VALUES (40, 'django_celery_beat', '0019_alter_periodictasks_options', '2025-06-20 13:15:23.387441');
INSERT INTO `django_migrations` VALUES (41, 'django_celery_results', '0001_initial', '2025-06-20 13:15:23.576687');
INSERT INTO `django_migrations` VALUES (42, 'sessions', '0001_initial', '2025-06-20 13:15:23.617633');
INSERT INTO `django_migrations` VALUES (43, 'newStart', '0001_initial', '2025-07-02 08:01:28.628853');
INSERT INTO `django_migrations` VALUES (44, 'newStart', '0002_alter_testmodel_avatar', '2025-07-05 10:27:49.202298');
INSERT INTO `django_migrations` VALUES (45, 'newStart', '0003_departed', '2025-07-10 10:58:33.172416');
INSERT INTO `django_migrations` VALUES (46, 'newStart', '0004_alter_departed_options_relationmodel', '2025-07-10 15:02:04.124507');
INSERT INTO `django_migrations` VALUES (47, 'newStart', '0005_alter_relationmodel_dciex7', '2025-07-10 15:03:08.388333');
INSERT INTO `django_migrations` VALUES (48, 'newStart', '0006_refrigeratedmodel', '2025-07-15 10:58:30.294964');
INSERT INTO `django_migrations` VALUES (49, 'newStart', '0007_refrigeratedmodel_diex_alter_refrigeratedmodel_lcex1_and_more', '2025-07-15 13:19:01.214043');
INSERT INTO `django_migrations` VALUES (50, 'newStart', '0008_departed_ddmex16', '2025-07-16 13:44:52.826521');
INSERT INTO `django_migrations` VALUES (51, 'newStart', '0009_cremationmodel', '2025-07-22 08:26:49.763082');
INSERT INTO `django_migrations` VALUES (52, 'newStart', '0010_departed_diex24_alter_refrigeratedmodel_lcex8_and_more', '2025-07-31 17:20:20.910025');
INSERT INTO `django_migrations` VALUES (53, 'newStart', '0011_parentclassmodel', '2025-08-03 16:20:03.870260');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for st_address1
-- ----------------------------
DROP TABLE IF EXISTS `st_address1`;
CREATE TABLE `st_address1`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `as_t2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `as_t3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `as_t4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `as_t5` smallint NULL DEFAULT NULL,
  `as_t1_id` bigint NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_address1_as_t1_id_e452abd2_fk_st_system_users_id`(`as_t1_id` ASC) USING BTREE,
  INDEX `st_address1_creator_id_b2533af1`(`creator_id` ASC) USING BTREE,
  CONSTRAINT `st_address1_as_t1_id_e452abd2_fk_st_system_users_id` FOREIGN KEY (`as_t1_id`) REFERENCES `st_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_address1
-- ----------------------------
INSERT INTO `st_address1` VALUES (1, NULL, '4', NULL, '2025-07-11 09:31:18.087208', '2025-07-11 09:31:18.087208', '小丁8号', '河南省郑州市郑东新区某某街道', '15000000000', 1, 4, 4);

-- ----------------------------
-- Table structure for st_api_white_list
-- ----------------------------
DROP TABLE IF EXISTS `st_api_white_list`;
CREATE TABLE `st_api_white_list`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` int NULL DEFAULT NULL,
  `enable_datasource` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_api_white_list_creator_id_375be6bf`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_api_white_list
-- ----------------------------
INSERT INTO `st_api_white_list` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:38.405963', '2025-06-20 13:15:38.405963', '/api/system/dept_lazy_tree/', 0, 1, NULL);
INSERT INTO `st_api_white_list` VALUES (2, NULL, '1', '1', '2025-06-20 14:13:28.634135', '2025-06-20 14:13:28.634135', '/api/app/slideshow/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (3, NULL, '1', '1', '2025-06-20 14:13:50.687442', '2025-06-20 14:13:50.687442', '/api/app/slideshow/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (4, NULL, '1', '1', '2025-06-20 14:13:58.954994', '2025-06-20 14:13:58.954994', '/api/app/slideshow/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (5, NULL, '1', '1', '2025-06-20 14:14:07.029873', '2025-06-20 14:14:07.029873', '/api/app/slideshow/{id}/', 3, 0, 1);
INSERT INTO `st_api_white_list` VALUES (6, NULL, '1', '1', '2025-06-20 14:14:25.217621', '2025-06-20 14:14:25.217621', '/api/app/slideshow/{id}/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (7, NULL, '1', '1', '2025-06-20 14:14:44.805359', '2025-06-20 14:14:44.805359', '/api/app/types/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (8, NULL, '1', '1', '2025-06-20 14:14:53.692325', '2025-06-20 14:14:53.692325', '/api/app/types/{id}/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (9, NULL, '1', '1', '2025-06-20 14:15:01.505492', '2025-06-20 14:15:01.505492', '/api/app/types/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (10, NULL, '1', '1', '2025-06-20 14:15:11.199031', '2025-06-20 14:15:11.199031', '/api/app/types/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (11, NULL, '1', '1', '2025-06-20 14:15:19.568607', '2025-06-20 14:15:19.568607', '/api/app/types/{id}/', 3, 0, 1);
INSERT INTO `st_api_white_list` VALUES (12, NULL, '1', '1', '2025-06-20 14:15:45.592714', '2025-06-20 14:15:45.592714', '/api/app/commodity/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (13, NULL, '1', '1', '2025-06-20 14:15:52.758044', '2025-06-20 14:15:52.758044', '/api/app/commodity/{id}/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (14, NULL, '1', '1', '2025-06-20 14:15:58.847144', '2025-06-20 14:15:58.847144', '/api/app/commodity/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (15, NULL, '1', '1', '2025-06-20 14:16:06.269369', '2025-06-20 14:16:06.269369', '/api/app/commodity/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (16, NULL, '1', '1', '2025-06-20 14:16:13.398482', '2025-06-20 14:16:13.398482', '/api/app/commodity/{id}/', 3, 0, 1);
INSERT INTO `st_api_white_list` VALUES (17, NULL, '1', '1', '2025-06-20 14:16:31.890233', '2025-06-20 14:16:31.890233', '/api/app/cart/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (18, NULL, '1', '1', '2025-06-20 14:16:47.699131', '2025-06-20 14:16:47.699131', '/api/app/cart/{id}/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (19, NULL, '1', '1', '2025-06-20 14:16:56.314625', '2025-06-20 14:16:56.314625', '/api/app/cart/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (20, NULL, '1', '1', '2025-06-20 14:17:04.874965', '2025-06-20 14:17:04.874965', '/api/app/cart/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (21, NULL, '1', '1', '2025-06-20 14:17:13.162718', '2025-06-20 14:17:13.162718', '/api/app/cart/{id}/', 3, 0, 1);
INSERT INTO `st_api_white_list` VALUES (22, NULL, '1', '1', '2025-06-20 14:17:40.296898', '2025-06-20 14:17:40.296898', '/api/app/address/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (23, NULL, '1', '1', '2025-06-20 14:17:47.844906', '2025-06-20 14:17:47.844906', '/api/app/address/{id}/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (24, NULL, '1', '1', '2025-06-20 14:18:00.364782', '2025-06-20 14:18:00.364782', '/api/app/address/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (25, NULL, '1', '1', '2025-06-20 14:18:09.394023', '2025-06-20 14:18:09.394023', '/api/app/address/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (26, NULL, '1', '1', '2025-06-20 14:18:18.676848', '2025-06-20 14:18:18.676848', '/api/app/address/{id}/', 3, 0, 1);
INSERT INTO `st_api_white_list` VALUES (27, NULL, '1', '1', '2025-06-20 14:18:48.757389', '2025-06-20 14:18:48.757389', '/api/app/saveallorder/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (28, NULL, '1', '1', '2025-06-20 14:19:07.358405', '2025-06-20 14:19:07.358405', '/api/app/saveallorder/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (29, NULL, '1', '1', '2025-06-20 14:19:39.408266', '2025-06-20 14:19:39.408266', '/api/app/saveallorder/{id}/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (30, NULL, '1', '1', '2025-06-20 14:19:53.514840', '2025-06-20 14:19:53.514840', '/api/app/orders/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (31, NULL, '1', '1', '2025-06-20 14:20:16.507569', '2025-06-20 14:20:16.507569', '/api/system/getuserlist/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (32, NULL, '1', '1', '2025-07-02 10:10:34.011145', '2025-07-02 10:10:34.011145', '/api/newstart/testlop/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (33, NULL, '1', '1', '2025-07-02 10:10:56.141582', '2025-07-02 10:10:56.141582', '/api/newstart/testlop/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (34, NULL, '1', '1', '2025-07-18 15:25:51.753465', '2025-07-10 17:08:34.987583', '/api/newstart/dieinfo/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (35, NULL, '1', '1', '2025-07-10 17:09:09.502540', '2025-07-10 17:09:09.502540', '/api/newstart/dieinfo/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (36, NULL, '1', '1', '2025-07-10 17:09:58.906373', '2025-07-10 17:09:25.498023', '/api/newstart/dieinfo/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (37, NULL, '1', '1', '2025-07-13 15:35:18.259651', '2025-07-10 17:09:33.144733', '/api/newstart/dieinfo/{id}/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (38, NULL, '1', '1', '2025-07-10 17:09:48.172246', '2025-07-10 17:09:48.172246', '/api/newstart/dieinfo/{id}/', 3, 0, 1);
INSERT INTO `st_api_white_list` VALUES (39, NULL, '1', '1', '2025-07-19 13:13:52.790555', '2025-07-19 13:13:52.790555', '/api/newstart/refrigerated/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (40, NULL, '1', '1', '2025-07-19 13:14:29.566442', '2025-07-19 13:14:29.566442', '/api/newstart/refrigerated/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (41, NULL, '1', '1', '2025-07-23 10:48:04.588934', '2025-07-23 10:48:04.588934', '/api/newstart/cremation/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (42, NULL, '1', '1', '2025-07-23 10:48:35.880744', '2025-07-23 10:48:35.880744', '/api/newstart/cremation/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (43, NULL, '1', '1', '2025-08-01 14:55:41.735641', '2025-08-01 14:55:41.735641', '/api/newstart/reservation/', 0, 0, 1);
INSERT INTO `st_api_white_list` VALUES (44, NULL, '1', '1', '2025-08-01 14:59:53.405336', '2025-08-01 14:59:53.405336', '/api/newstart/reservation/', 1, 0, 1);
INSERT INTO `st_api_white_list` VALUES (45, NULL, '1', '1', '2025-08-01 18:23:07.331776', '2025-08-01 18:23:07.331776', '/api/newstart/reservation/{id}/', 2, 0, 1);
INSERT INTO `st_api_white_list` VALUES (46, NULL, '1', '1', '2025-08-01 18:25:12.353132', '2025-08-01 18:25:12.353132', '/api/newstart/reservation/{id}/', 3, 0, 1);
INSERT INTO `st_api_white_list` VALUES (47, NULL, '1', '1', '2025-08-01 18:27:28.081439', '2025-08-01 18:27:28.081439', '/api/newstart/reservation/{id}/', 0, 0, 1);

-- ----------------------------
-- Table structure for st_bigclass
-- ----------------------------
DROP TABLE IF EXISTS `st_bigclass`;
CREATE TABLE `st_bigclass`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `sciEx1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_bigclass
-- ----------------------------

-- ----------------------------
-- Table structure for st_cart
-- ----------------------------
DROP TABLE IF EXISTS `st_cart`;
CREATE TABLE `st_cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `ca_t3` int UNSIGNED NULL DEFAULT NULL,
  `ca_t1_id` bigint NOT NULL,
  `ca_t2_id` bigint NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_cart_ca_t1_id_d451dc81_fk_st_system_users_id`(`ca_t1_id` ASC) USING BTREE,
  INDEX `st_cart_ca_t2_id_d5b07fe1_fk_st_commodity_id`(`ca_t2_id` ASC) USING BTREE,
  INDEX `st_cart_creator_id_df9a29d9`(`creator_id` ASC) USING BTREE,
  CONSTRAINT `st_cart_ca_t1_id_d451dc81_fk_st_system_users_id` FOREIGN KEY (`ca_t1_id`) REFERENCES `st_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_cart_ca_t2_id_d5b07fe1_fk_st_commodity_id` FOREIGN KEY (`ca_t2_id`) REFERENCES `st_commodity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_cart_chk_1` CHECK (`ca_t3` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_cart
-- ----------------------------

-- ----------------------------
-- Table structure for st_commodity
-- ----------------------------
DROP TABLE IF EXISTS `st_commodity`;
CREATE TABLE `st_commodity`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `cms_t1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_t2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_t3` double NOT NULL,
  `cms_t4` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cms_t5` int UNSIGNED NOT NULL,
  `cms_t6` int UNSIGNED NULL DEFAULT NULL,
  `cms_t8` double NULL DEFAULT NULL,
  `cms_t9` smallint NOT NULL,
  `cms_t7_id` bigint NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_commodity_cms_t7_id_5c6f4888_fk_st_sort_type_id`(`cms_t7_id` ASC) USING BTREE,
  INDEX `st_commodity_creator_id_72fee46e`(`creator_id` ASC) USING BTREE,
  CONSTRAINT `st_commodity_cms_t7_id_5c6f4888_fk_st_sort_type_id` FOREIGN KEY (`cms_t7_id`) REFERENCES `st_sort_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_commodity_chk_1` CHECK (`cms_t5` >= 0),
  CONSTRAINT `st_commodity_chk_2` CHECK (`cms_t6` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_commodity
-- ----------------------------
INSERT INTO `st_commodity` VALUES (1, NULL, '4', NULL, '2025-07-11 09:38:18.309903', '2025-07-11 09:30:50.937866', '商品名称2', 'media/files\\6\\d\\6d86571d48bb60612bf1a6024b2bbfd4.png', 15.5, '商品描述', 995, 0, 1, 1, 1, 4);

-- ----------------------------
-- Table structure for st_cremation
-- ----------------------------
DROP TABLE IF EXISTS `st_cremation`;
CREATE TABLE `st_cremation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `dfiEx1` smallint NULL DEFAULT NULL,
  `dfiEx2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiEx3` smallint NULL DEFAULT NULL,
  `dfiEx4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiEx5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiEx6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiEx7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiEx8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiEx9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiDate1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiDate2` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dfiDate3` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `diEx_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_cremation_diEx_id_e1d2d477_fk_st_departed_id`(`diEx_id` ASC) USING BTREE,
  INDEX `st_cremation_creator_id_6fa13cad`(`creator_id` ASC) USING BTREE,
  CONSTRAINT `st_cremation_diEx_id_e1d2d477_fk_st_departed_id` FOREIGN KEY (`diEx_id`) REFERENCES `st_departed` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_cremation
-- ----------------------------
INSERT INTO `st_cremation` VALUES (2, NULL, '4', NULL, '2025-07-23 15:46:30.378587', '2025-07-22 16:26:54.285546', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 67);

-- ----------------------------
-- Table structure for st_departed
-- ----------------------------
DROP TABLE IF EXISTS `st_departed`;
CREATE TABLE `st_departed`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `diEx1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '逝者编号',
  `diEx2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '逝者姓名',
  `diEx3` smallint NULL DEFAULT NULL COMMENT '性别',
  `diEx4` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否为党员',
  `diEx5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '证件类型',
  `diEx6` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '证件号码',
  `diEx7` smallint NULL DEFAULT NULL COMMENT '年龄',
  `diEx8` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出生日期',
  `diEx9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '死亡原因',
  `diEx10` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '死亡时间',
  `diEx11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '死亡地点',
  `diEx12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '出具单位',
  `diEx13` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '逝者籍贯（身份证上面的地址）',
  `diEx14` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '逝者民族',
  `diEx15` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '户籍地址（省、市、区、全地址）',
  `diEx16` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生前居住地',
  `diEx17` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生前工作单位',
  `diEx18` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '遗体属性（有名有主，有名无主，无名无主，三无，其他）',
  `diEx19` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '遗体情况',
  `diEx20` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '领取人',
  `diEx21` smallint NULL DEFAULT NULL COMMENT '是否有传染病',
  `diEx22` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电子档案_死亡证明',
  `diEx23` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '申请人照片',
  `creator_id` bigint NULL DEFAULT NULL,
  `ddmEx16` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `diEx24` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_departed_creator_id_7232fb4b`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_departed
-- ----------------------------
INSERT INTO `st_departed` VALUES (65, NULL, NULL, NULL, '2025-07-18 15:56:23.997632', '2025-07-18 15:48:25.345615', '逝者编号11121212122', '逝者姓名51', 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '冷藏', NULL);
INSERT INTO `st_departed` VALUES (66, NULL, NULL, NULL, '2025-07-18 15:48:48.845687', '2025-07-18 15:48:48.845687', '逝者编号1', '逝者姓名1', 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '冷藏', NULL);
INSERT INTO `st_departed` VALUES (67, NULL, NULL, NULL, '2025-07-22 16:26:54.275750', '2025-07-22 15:06:41.734789', '逝者编号2', '逝者姓名2', 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '火化', NULL);
INSERT INTO `st_departed` VALUES (68, NULL, NULL, NULL, '2025-07-22 15:08:04.421499', '2025-07-22 15:08:04.421499', '逝者编号551', '逝者姓名', 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '冷藏', NULL);

-- ----------------------------
-- Table structure for st_download_center
-- ----------------------------
DROP TABLE IF EXISTS `st_download_center`;
CREATE TABLE `st_download_center`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `task_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_status` smallint NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `size` bigint NOT NULL,
  `md5sum` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_download_center_creator_id_ae855e71`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_download_center
-- ----------------------------

-- ----------------------------
-- Table structure for st_message_center
-- ----------------------------
DROP TABLE IF EXISTS `st_message_center`;
CREATE TABLE `st_message_center`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_message_center_creator_id_5f40bac5`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_message_center
-- ----------------------------

-- ----------------------------
-- Table structure for st_message_center_target_dept
-- ----------------------------
DROP TABLE IF EXISTS `st_message_center_target_dept`;
CREATE TABLE `st_message_center_target_dept`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `messagecenter_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_message_center_target_messagecenter_id_dept_id_92c505cf_uniq`(`messagecenter_id` ASC, `dept_id` ASC) USING BTREE,
  INDEX `st_message_center_target_dept_messagecenter_id_4f97796d`(`messagecenter_id` ASC) USING BTREE,
  INDEX `st_message_center_target_dept_dept_id_99a3de91`(`dept_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_message_center_target_dept
-- ----------------------------

-- ----------------------------
-- Table structure for st_message_center_target_role
-- ----------------------------
DROP TABLE IF EXISTS `st_message_center_target_role`;
CREATE TABLE `st_message_center_target_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `messagecenter_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_message_center_target_messagecenter_id_role_id_2c58dec4_uniq`(`messagecenter_id` ASC, `role_id` ASC) USING BTREE,
  INDEX `st_message_center_target_role_messagecenter_id_8386b42d`(`messagecenter_id` ASC) USING BTREE,
  INDEX `st_message_center_target_role_role_id_0148316e`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_message_center_target_role
-- ----------------------------

-- ----------------------------
-- Table structure for st_message_center_target_user
-- ----------------------------
DROP TABLE IF EXISTS `st_message_center_target_user`;
CREATE TABLE `st_message_center_target_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `is_read` tinyint(1) NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `messagecenter_id` bigint NOT NULL,
  `users_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_message_center_target_user_creator_id_dc7bc3cb`(`creator_id` ASC) USING BTREE,
  INDEX `st_message_center_target_user_messagecenter_id_a056b255`(`messagecenter_id` ASC) USING BTREE,
  INDEX `st_message_center_target_user_users_id_13aa50ff`(`users_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_message_center_target_user
-- ----------------------------

-- ----------------------------
-- Table structure for st_order
-- ----------------------------
DROP TABLE IF EXISTS `st_order`;
CREATE TABLE `st_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `or_Num` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `or_m3` smallint NULL DEFAULT NULL,
  `or_m4` double NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `or_Aid_id` bigint NOT NULL,
  `or_Uid_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_order_or_Aid_id_6ddfbd10_fk_st_address1_id`(`or_Aid_id` ASC) USING BTREE,
  INDEX `st_order_or_Uid_id_e5e2a87b_fk_st_system_users_id`(`or_Uid_id` ASC) USING BTREE,
  INDEX `st_order_creator_id_b1204b81`(`creator_id` ASC) USING BTREE,
  CONSTRAINT `st_order_or_Aid_id_6ddfbd10_fk_st_address1_id` FOREIGN KEY (`or_Aid_id`) REFERENCES `st_address1` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_order_or_Uid_id_e5e2a87b_fk_st_system_users_id` FOREIGN KEY (`or_Uid_id`) REFERENCES `st_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_order
-- ----------------------------
INSERT INTO `st_order` VALUES (1, NULL, NULL, NULL, '2025-07-11 09:31:24.192015', '2025-07-11 09:31:24.192015', '1752197484478924', 1, 15.5, NULL, 1, 4);
INSERT INTO `st_order` VALUES (6, NULL, NULL, NULL, '2025-07-11 09:38:18.303126', '2025-07-11 09:38:18.304108', '1752197898418985', 1, 77.5, NULL, 1, 4);

-- ----------------------------
-- Table structure for st_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `st_order_detail`;
CREATE TABLE `st_order_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `od_t3` int UNSIGNED NULL DEFAULT NULL,
  `od_t4` double NOT NULL,
  `od_t5` double NULL DEFAULT NULL,
  `od_t6` double NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `od_t1_id` bigint NOT NULL,
  `od_t2_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_order_detail_od_t1_id_1790fcc4_fk_st_commodity_id`(`od_t1_id` ASC) USING BTREE,
  INDEX `st_order_detail_od_t2_id_7eed9610_fk_st_order_id`(`od_t2_id` ASC) USING BTREE,
  INDEX `st_order_detail_creator_id_6556a2e5`(`creator_id` ASC) USING BTREE,
  CONSTRAINT `st_order_detail_od_t1_id_1790fcc4_fk_st_commodity_id` FOREIGN KEY (`od_t1_id`) REFERENCES `st_commodity` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_order_detail_od_t2_id_7eed9610_fk_st_order_id` FOREIGN KEY (`od_t2_id`) REFERENCES `st_order` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_order_detail_chk_1` CHECK (`od_t3` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_order_detail
-- ----------------------------
INSERT INTO `st_order_detail` VALUES (1, NULL, NULL, NULL, '2025-07-11 09:31:24.198022', '2025-07-11 09:31:24.198022', 1, 15.5, 1, 15.5, NULL, 1, 1);
INSERT INTO `st_order_detail` VALUES (6, NULL, NULL, NULL, '2025-07-11 09:38:18.307127', '2025-07-11 09:38:18.307127', 5, 15.5, 1, 77.5, NULL, 1, 6);

-- ----------------------------
-- Table structure for st_parentsclass
-- ----------------------------
DROP TABLE IF EXISTS `st_parentsclass`;
CREATE TABLE `st_parentsclass`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `sfEx1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx3` smallint NULL DEFAULT NULL,
  `sfEx4` smallint NULL DEFAULT NULL,
  `sfEx5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx13` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx14` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx22` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx35` double NULL DEFAULT NULL,
  `sfEx36` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sfEx38` double NULL DEFAULT NULL,
  `sfEx42` double NULL DEFAULT NULL,
  `sfEx43` double NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `sfEx_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_parentsclass
-- ----------------------------

-- ----------------------------
-- Table structure for st_refrigerated
-- ----------------------------
DROP TABLE IF EXISTS `st_refrigerated`;
CREATE TABLE `st_refrigerated`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `lcEx1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx7` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lcEx8` smallint NOT NULL,
  `lcEx9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcEx12` smallint NULL DEFAULT NULL,
  `lcEx13` smallint NULL DEFAULT NULL,
  `lcEx14` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `lcDat1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcDat2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcDat3` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcDat4` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lcDat5` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `diEx_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_refrigerated_creator_id_17decd61`(`creator_id` ASC) USING BTREE,
  INDEX `st_refrigerated_diEx_id_121a7b1d_fk_st_departed_id`(`diEx_id` ASC) USING BTREE,
  CONSTRAINT `st_refrigerated_diEx_id_121a7b1d_fk_st_departed_id` FOREIGN KEY (`diEx_id`) REFERENCES `st_departed` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_refrigerated
-- ----------------------------
INSERT INTO `st_refrigerated` VALUES (21, NULL, NULL, NULL, '2025-07-18 15:48:48.849252', '2025-07-18 15:48:48.849252', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66);
INSERT INTO `st_refrigerated` VALUES (23, NULL, NULL, NULL, '2025-07-18 15:56:24.000631', '2025-07-18 15:56:24.000631', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 65);
INSERT INTO `st_refrigerated` VALUES (24, NULL, NULL, NULL, '2025-07-22 15:08:04.426497', '2025-07-22 15:08:04.426497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 68);

-- ----------------------------
-- Table structure for st_relation
-- ----------------------------
DROP TABLE IF EXISTS `st_relation`;
CREATE TABLE `st_relation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `dciEx1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dciEx2` smallint NULL DEFAULT NULL,
  `dciEx3` smallint NULL DEFAULT NULL,
  `dciEx4` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dciEx5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dciEx6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dciEx7` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dciEx8` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dciEx9` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dciEx10` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `departed_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_relation_departed_id_195c32ce_fk_st_departed_id`(`departed_id` ASC) USING BTREE,
  INDEX `st_relation_creator_id_a17e19e7`(`creator_id` ASC) USING BTREE,
  CONSTRAINT `st_relation_departed_id_195c32ce_fk_st_departed_id` FOREIGN KEY (`departed_id`) REFERENCES `st_departed` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_relation
-- ----------------------------
INSERT INTO `st_relation` VALUES (45, NULL, NULL, NULL, '2025-07-18 15:56:24.010101', '2025-07-18 15:48:25.357435', '亲属姓名2', 0, 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 65);
INSERT INTO `st_relation` VALUES (46, NULL, NULL, NULL, '2025-07-18 15:48:48.853249', '2025-07-18 15:48:48.853249', '亲属姓名1', 0, 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 66);
INSERT INTO `st_relation` VALUES (47, NULL, NULL, NULL, '2025-07-22 16:26:54.293548', '2025-07-22 15:06:41.806748', '亲属姓名2', 0, 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 67);
INSERT INTO `st_relation` VALUES (48, NULL, NULL, NULL, '2025-07-22 15:08:04.436491', '2025-07-22 15:08:04.437491', '家属姓名551', 0, 2, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 68);

-- ----------------------------
-- Table structure for st_reservation
-- ----------------------------
DROP TABLE IF EXISTS `st_reservation`;
CREATE TABLE `st_reservation`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `daEx1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx2` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx3` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx4` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx5` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx8` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx9` smallint NULL DEFAULT NULL,
  `daEx10` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `daEx12` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_reservation_creator_id_e56519e9`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_reservation
-- ----------------------------
INSERT INTO `st_reservation` VALUES (10, NULL, '4', NULL, '2025-08-01 18:28:28.706498', '2025-08-01 18:28:28.706498', '联系人', '联系电话', '与逝者关系', '经办人姓名', '省份', '城市', '县区', '逝者姓名', 1, '死亡时间', '死亡原因', '预约火化时间', 4);

-- ----------------------------
-- Table structure for st_role_menu_button_permission
-- ----------------------------
DROP TABLE IF EXISTS `st_role_menu_button_permission`;
CREATE TABLE `st_role_menu_button_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `data_range` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `menu_button_id` bigint NULL DEFAULT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_role_menu_button_permission_creator_id_187157de`(`creator_id` ASC) USING BTREE,
  INDEX `st_role_menu_button_permission_menu_button_id_8810b85c`(`menu_button_id` ASC) USING BTREE,
  INDEX `st_role_menu_button_permission_role_id_0b5f6ae2`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_role_menu_button_permission
-- ----------------------------
INSERT INTO `st_role_menu_button_permission` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:38.391971', '2025-06-20 13:15:38.391971', 0, NULL, 1, 1);

-- ----------------------------
-- Table structure for st_role_menu_button_permission_dept
-- ----------------------------
DROP TABLE IF EXISTS `st_role_menu_button_permission_dept`;
CREATE TABLE `st_role_menu_button_permission_dept`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rolemenubuttonpermission_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_role_menu_button_perm_rolemenubuttonpermission_01016787_uniq`(`rolemenubuttonpermission_id` ASC, `dept_id` ASC) USING BTREE,
  INDEX `st_role_menu_button_permiss_rolemenubuttonpermission_id_444d03a2`(`rolemenubuttonpermission_id` ASC) USING BTREE,
  INDEX `st_role_menu_button_permission_dept_dept_id_bc51316d`(`dept_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_role_menu_button_permission_dept
-- ----------------------------

-- ----------------------------
-- Table structure for st_role_menu_permission
-- ----------------------------
DROP TABLE IF EXISTS `st_role_menu_permission`;
CREATE TABLE `st_role_menu_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `menu_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_role_menu_permission_creator_id_5c927b19`(`creator_id` ASC) USING BTREE,
  INDEX `st_role_menu_permission_menu_id_89ed60bf`(`menu_id` ASC) USING BTREE,
  INDEX `st_role_menu_permission_role_id_aeba77d6`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_role_menu_permission
-- ----------------------------
INSERT INTO `st_role_menu_permission` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:38.367986', '2025-06-20 13:15:38.367986', NULL, 1, 1);
INSERT INTO `st_role_menu_permission` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:15:38.379978', '2025-06-20 13:15:38.379978', NULL, 2, 1);

-- ----------------------------
-- Table structure for st_slideshow
-- ----------------------------
DROP TABLE IF EXISTS `st_slideshow`;
CREATE TABLE `st_slideshow`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `sds_w1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sds_w2` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_slideshow_creator_id_1e5490e5`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_slideshow
-- ----------------------------
INSERT INTO `st_slideshow` VALUES (1, NULL, '4', NULL, '2025-06-20 13:27:51.739648', '2025-06-20 13:27:51.739648', '轮播图名称', 'media/files\\\\6\\\\d\\\\6d86571d48bb60612bf1a6024b2bbfd4.png', 4);
INSERT INTO `st_slideshow` VALUES (2, NULL, '4', NULL, '2025-06-20 13:28:42.157774', '2025-06-20 13:28:42.157774', '轮播图名称2', 'media/files\\\\1\\\\2\\\\1268113536aee2f370d1f68a5429c5c8.jpg', 4);
INSERT INTO `st_slideshow` VALUES (3, NULL, '4', NULL, '2025-06-20 13:31:18.327577', '2025-06-20 13:31:18.327577', '轮播图名称3', 'media/files\\\\0\\\\6\\\\0617882ddf911177d53646290bf0e73b.jpg', 4);

-- ----------------------------
-- Table structure for st_sort_type
-- ----------------------------
DROP TABLE IF EXISTS `st_sort_type`;
CREATE TABLE `st_sort_type`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `st_e1` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_sort_type_creator_id_0d5d6140`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_sort_type
-- ----------------------------
INSERT INTO `st_sort_type` VALUES (1, NULL, '4', NULL, '2025-07-11 09:30:32.770186', '2025-07-11 09:30:32.770186', '女装', 4);

-- ----------------------------
-- Table structure for st_system_area
-- ----------------------------
DROP TABLE IF EXISTS `st_system_area`;
CREATE TABLE `st_system_area`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` bigint NOT NULL,
  `pinyin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `pcode_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `code`(`code` ASC) USING BTREE,
  INDEX `st_system_area_creator_id_13144e9d`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_area_pcode_id_c23c1464`(`pcode_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3446 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_area
-- ----------------------------
INSERT INTO `st_system_area` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '北京市', '11', 1, 'beijingshi', 'B', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '市辖区', '1101', 2, 'shixiaqu', 'S', 1, NULL, '11');
INSERT INTO `st_system_area` VALUES (3, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '东城区', '110101', 3, 'dongchengqu', 'D', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (4, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '西城区', '110102', 3, 'xichengqu', 'X', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (5, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '朝阳区', '110105', 3, 'chaoyangqu', 'C', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (6, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '丰台区', '110106', 3, 'fengtaiqu', 'F', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (7, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '石景山区', '110107', 3, 'shijingshanqu', 'S', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (8, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '海淀区', '110108', 3, 'haidianqu', 'H', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (9, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '门头沟区', '110109', 3, 'mentougouqu', 'M', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (10, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '房山区', '110111', 3, 'fangshanqu', 'F', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (11, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '通州区', '110112', 3, 'tongzhouqu', 'T', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (12, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '顺义区', '110113', 3, 'shunyiqu', 'S', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (13, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '昌平区', '110114', 3, 'changpingqu', 'C', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (14, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '大兴区', '110115', 3, 'daxingqu', 'D', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (15, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '怀柔区', '110116', 3, 'huairouqu', 'H', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (16, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '平谷区', '110117', 3, 'pingguqu', 'P', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (17, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '密云区', '110118', 3, 'miyunqu', 'M', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (18, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '延庆区', '110119', 3, 'yanqingqu', 'Y', 1, NULL, '1101');
INSERT INTO `st_system_area` VALUES (19, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '天津市', '12', 1, 'tianjinshi', 'T', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (20, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '市辖区', '1201', 2, 'shixiaqu', 'S', 1, NULL, '12');
INSERT INTO `st_system_area` VALUES (21, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '和平区', '120101', 3, 'hepingqu', 'H', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (22, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '河东区', '120102', 3, 'hedongqu', 'H', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (23, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '河西区', '120103', 3, 'hexiqu', 'H', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (24, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '南开区', '120104', 3, 'nankaiqu', 'N', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (25, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '河北区', '120105', 3, 'hebeiqu', 'H', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (26, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '红桥区', '120106', 3, 'hongqiaoqu', 'H', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (27, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '东丽区', '120110', 3, 'dongliqu', 'D', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (28, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '西青区', '120111', 3, 'xiqingqu', 'X', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (29, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '津南区', '120112', 3, 'jinnanqu', 'J', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (30, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '北辰区', '120113', 3, 'beichenqu', 'B', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (31, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '武清区', '120114', 3, 'wuqingqu', 'W', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (32, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '宝坻区', '120115', 3, 'baodiqu', 'B', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (33, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '滨海新区', '120116', 3, 'binhaixinqu', 'B', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (34, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '宁河区', '120117', 3, 'ninghequ', 'N', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (35, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '静海区', '120118', 3, 'jinghaiqu', 'J', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (36, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '蓟州区', '120119', 3, 'jizhouqu', 'J', 1, NULL, '1201');
INSERT INTO `st_system_area` VALUES (37, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '河北省', '13', 1, 'hebeisheng', 'H', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (38, NULL, NULL, NULL, '2025-06-20 13:16:18.347164', '2025-06-20 13:16:18.347164', '石家庄市', '1301', 2, 'shijiazhuangshi', 'S', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (39, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '长安区', '130102', 3, 'changanqu', 'C', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (40, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '桥西区', '130104', 3, 'qiaoxiqu', 'Q', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (41, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '新华区', '130105', 3, 'xinhuaqu', 'X', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (42, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '井陉矿区', '130107', 3, 'jingxingkuangqu', 'J', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (43, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '裕华区', '130108', 3, 'yuhuaqu', 'Y', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (44, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '藁城区', '130109', 3, 'gaochengqu', 'G', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (45, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '鹿泉区', '130110', 3, 'luquanqu', 'L', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (46, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '栾城区', '130111', 3, 'luanchengqu', 'L', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (47, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '井陉县', '130121', 3, 'jingxingxian', 'J', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (48, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '正定县', '130123', 3, 'zhengdingxian', 'Z', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (49, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '行唐县', '130125', 3, 'xingtangxian', 'X', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (50, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '灵寿县', '130126', 3, 'lingshouxian', 'L', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (51, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '高邑县', '130127', 3, 'gaoyixian', 'G', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (52, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '深泽县', '130128', 3, 'shenzexian', 'S', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (53, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '赞皇县', '130129', 3, 'zanhuangxian', 'Z', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (54, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '无极县', '130130', 3, 'wujixian', 'W', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (55, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '平山县', '130131', 3, 'pingshanxian', 'P', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (56, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '元氏县', '130132', 3, 'yuanshixian', 'Y', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (57, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '赵县', '130133', 3, 'zhaoxian', 'Z', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (58, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '石家庄高新技术产业开发区', '130171', 3, 'shijiazhuanggaoxinjishuchanyekaifaqu', 'S', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (59, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '石家庄循环化工园区', '130172', 3, 'shijiazhuangxunhuanhuagongyuanqu', 'S', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (60, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '辛集市', '130181', 3, 'xinjishi', 'X', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (61, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '晋州市', '130183', 3, 'jinzhoushi', 'J', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (62, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '新乐市', '130184', 3, 'xinleshi', 'X', 1, NULL, '1301');
INSERT INTO `st_system_area` VALUES (63, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '唐山市', '1302', 2, 'tangshanshi', 'T', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (64, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '路南区', '130202', 3, 'lunanqu', 'L', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (65, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '路北区', '130203', 3, 'lubeiqu', 'L', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (66, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '古冶区', '130204', 3, 'guyequ', 'G', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (67, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '开平区', '130205', 3, 'kaipingqu', 'K', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (68, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '丰南区', '130207', 3, 'fengnanqu', 'F', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (69, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '丰润区', '130208', 3, 'fengrunqu', 'F', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (70, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '曹妃甸区', '130209', 3, 'caofeidianqu', 'C', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (71, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '滦南县', '130224', 3, 'luannanxian', 'L', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (72, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '乐亭县', '130225', 3, 'letingxian', 'L', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (73, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '迁西县', '130227', 3, 'qianxixian', 'Q', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (74, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '玉田县', '130229', 3, 'yutianxian', 'Y', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (75, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '河北唐山芦台经济开发区', '130271', 3, 'hebeitangshanlutaijingjikaifaqu', 'H', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (76, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '唐山市汉沽管理区', '130272', 3, 'tangshanshihanguguanliqu', 'T', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (77, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '唐山高新技术产业开发区', '130273', 3, 'tangshangaoxinjishuchanyekaifaqu', 'T', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (78, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '河北唐山海港经济开发区', '130274', 3, 'hebeitangshanhaigangjingjikaifaqu', 'H', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (79, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '遵化市', '130281', 3, 'zunhuashi', 'Z', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (80, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '迁安市', '130283', 3, 'qiananshi', 'Q', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (81, NULL, NULL, NULL, '2025-06-20 13:16:18.348163', '2025-06-20 13:16:18.348163', '滦州市', '130284', 3, 'luanzhoushi', 'L', 1, NULL, '1302');
INSERT INTO `st_system_area` VALUES (82, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '秦皇岛市', '1303', 2, 'qinhuangdaoshi', 'Q', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (83, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '海港区', '130302', 3, 'haigangqu', 'H', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (84, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '山海关区', '130303', 3, 'shanhaiguanqu', 'S', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (85, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '北戴河区', '130304', 3, 'beidaihequ', 'B', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (86, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '抚宁区', '130306', 3, 'funingqu', 'F', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (87, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '青龙满族自治县', '130321', 3, 'qinglongmanzuzizhixian', 'Q', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (88, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '昌黎县', '130322', 3, 'changlixian', 'C', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (89, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '卢龙县', '130324', 3, 'lulongxian', 'L', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (90, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '秦皇岛市经济技术开发区', '130371', 3, 'qinhuangdaoshijingjijishukaifaqu', 'Q', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (91, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '北戴河新区', '130372', 3, 'beidaihexinqu', 'B', 1, NULL, '1303');
INSERT INTO `st_system_area` VALUES (92, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '邯郸市', '1304', 2, 'handanshi', 'H', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (93, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '邯山区', '130402', 3, 'hanshanqu', 'H', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (94, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '丛台区', '130403', 3, 'congtaiqu', 'C', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (95, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '复兴区', '130404', 3, 'fuxingqu', 'F', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (96, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '峰峰矿区', '130406', 3, 'fengfengkuangqu', 'F', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (97, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '肥乡区', '130407', 3, 'feixiangqu', 'F', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (98, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '永年区', '130408', 3, 'yongnianqu', 'Y', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (99, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '临漳县', '130423', 3, 'linzhangxian', 'L', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (100, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '成安县', '130424', 3, 'chenganxian', 'C', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (101, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '大名县', '130425', 3, 'damingxian', 'D', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (102, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '涉县', '130426', 3, 'shexian', 'S', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (103, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '磁县', '130427', 3, 'cixian', 'C', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (104, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '邱县', '130430', 3, 'qiuxian', 'Q', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (105, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '鸡泽县', '130431', 3, 'jizexian', 'J', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (106, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '广平县', '130432', 3, 'guangpingxian', 'G', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (107, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '馆陶县', '130433', 3, 'guantaoxian', 'G', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (108, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '魏县', '130434', 3, 'weixian', 'W', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (109, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '曲周县', '130435', 3, 'quzhouxian', 'Q', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (110, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '邯郸经济技术开发区', '130471', 3, 'handanjingjijishukaifaqu', 'H', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (111, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '邯郸冀南新区', '130473', 3, 'handanjinanxinqu', 'H', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (112, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '武安市', '130481', 3, 'wuanshi', 'W', 1, NULL, '1304');
INSERT INTO `st_system_area` VALUES (113, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '邢台市', '1305', 2, 'xingtaishi', 'X', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (114, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '襄都区', '130502', 3, 'xiangdouqu', 'X', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (115, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '信都区', '130503', 3, 'xindouqu', 'X', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (116, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '任泽区', '130505', 3, 'renzequ', 'R', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (117, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '南和区', '130506', 3, 'nanhequ', 'N', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (118, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '临城县', '130522', 3, 'linchengxian', 'L', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (119, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '内丘县', '130523', 3, 'neiqiuxian', 'N', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (120, NULL, NULL, NULL, '2025-06-20 13:16:18.349162', '2025-06-20 13:16:18.349162', '柏乡县', '130524', 3, 'baixiangxian', 'B', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (121, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '隆尧县', '130525', 3, 'longyaoxian', 'L', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (122, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '宁晋县', '130528', 3, 'ningjinxian', 'N', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (123, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '巨鹿县', '130529', 3, 'juluxian', 'J', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (124, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '新河县', '130530', 3, 'xinhexian', 'X', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (125, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '广宗县', '130531', 3, 'guangzongxian', 'G', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (126, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '平乡县', '130532', 3, 'pingxiangxian', 'P', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (127, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '威县', '130533', 3, 'weixian', 'W', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (128, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '清河县', '130534', 3, 'qinghexian', 'Q', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (129, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '临西县', '130535', 3, 'linxixian', 'L', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (130, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.350162', '河北邢台经济开发区', '130571', 3, 'hebeixingtaijingjikaifaqu', 'H', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (131, NULL, NULL, NULL, '2025-06-20 13:16:18.350162', '2025-06-20 13:16:18.351141', '南宫市', '130581', 3, 'nangongshi', 'N', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (132, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '沙河市', '130582', 3, 'shaheshi', 'S', 1, NULL, '1305');
INSERT INTO `st_system_area` VALUES (133, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '保定市', '1306', 2, 'baodingshi', 'B', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (134, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '竞秀区', '130602', 3, 'jingxiuqu', 'J', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (135, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '莲池区', '130606', 3, 'lianchiqu', 'L', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (136, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '满城区', '130607', 3, 'manchengqu', 'M', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (137, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '清苑区', '130608', 3, 'qingyuanqu', 'Q', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (138, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '徐水区', '130609', 3, 'xushuiqu', 'X', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (139, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '涞水县', '130623', 3, 'laishuixian', 'L', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (140, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '阜平县', '130624', 3, 'fupingxian', 'F', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (141, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '定兴县', '130626', 3, 'dingxingxian', 'D', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (142, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '唐县', '130627', 3, 'tangxian', 'T', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (143, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '高阳县', '130628', 3, 'gaoyangxian', 'G', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (144, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '容城县', '130629', 3, 'rongchengxian', 'R', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (145, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '涞源县', '130630', 3, 'laiyuanxian', 'L', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (146, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '望都县', '130631', 3, 'wangdouxian', 'W', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (147, NULL, NULL, NULL, '2025-06-20 13:16:18.351141', '2025-06-20 13:16:18.351141', '安新县', '130632', 3, 'anxinxian', 'A', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (148, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '易县', '130633', 3, 'yixian', 'Y', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (149, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '曲阳县', '130634', 3, 'quyangxian', 'Q', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (150, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '蠡县', '130635', 3, 'lixian', 'L', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (151, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '顺平县', '130636', 3, 'shunpingxian', 'S', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (152, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '博野县', '130637', 3, 'boyexian', 'B', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (153, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '雄县', '130638', 3, 'xiongxian', 'X', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (154, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '保定高新技术产业开发区', '130671', 3, 'baodinggaoxinjishuchanyekaifaqu', 'B', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (155, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '保定白沟新城', '130672', 3, 'baodingbaigouxincheng', 'B', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (156, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '涿州市', '130681', 3, 'zhuozhoushi', 'Z', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (157, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '定州市', '130682', 3, 'dingzhoushi', 'D', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (158, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '安国市', '130683', 3, 'anguoshi', 'A', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (159, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '高碑店市', '130684', 3, 'gaobeidianshi', 'G', 1, NULL, '1306');
INSERT INTO `st_system_area` VALUES (160, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '张家口市', '1307', 2, 'zhangjiakoushi', 'Z', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (161, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '桥东区', '130702', 3, 'qiaodongqu', 'Q', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (162, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '桥西区', '130703', 3, 'qiaoxiqu', 'Q', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (163, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '宣化区', '130705', 3, 'xuanhuaqu', 'X', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (164, NULL, NULL, NULL, '2025-06-20 13:16:18.352140', '2025-06-20 13:16:18.352140', '下花园区', '130706', 3, 'xiahuayuanqu', 'X', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (165, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '万全区', '130708', 3, 'wanquanqu', 'W', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (166, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '崇礼区', '130709', 3, 'chongliqu', 'C', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (167, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '张北县', '130722', 3, 'zhangbeixian', 'Z', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (168, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '康保县', '130723', 3, 'kangbaoxian', 'K', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (169, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '沽源县', '130724', 3, 'guyuanxian', 'G', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (170, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '尚义县', '130725', 3, 'shangyixian', 'S', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (171, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '蔚县', '130726', 3, 'yuxian', 'Y', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (172, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '阳原县', '130727', 3, 'yangyuanxian', 'Y', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (173, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '怀安县', '130728', 3, 'huaianxian', 'H', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (174, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '怀来县', '130730', 3, 'huailaixian', 'H', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (175, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '涿鹿县', '130731', 3, 'zhuoluxian', 'Z', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (176, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '赤城县', '130732', 3, 'chichengxian', 'C', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (177, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '张家口经济开发区', '130771', 3, 'zhangjiakoujingjikaifaqu', 'Z', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (178, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '张家口市察北管理区', '130772', 3, 'zhangjiakoushichabeiguanliqu', 'Z', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (179, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '张家口市塞北管理区', '130773', 3, 'zhangjiakoushisaibeiguanliqu', 'Z', 1, NULL, '1307');
INSERT INTO `st_system_area` VALUES (180, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '承德市', '1308', 2, 'chengdeshi', 'C', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (181, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '双桥区', '130802', 3, 'shuangqiaoqu', 'S', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (182, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '双滦区', '130803', 3, 'shuangluanqu', 'S', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (183, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '鹰手营子矿区', '130804', 3, 'yingshouyingzikuangqu', 'Y', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (184, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '承德县', '130821', 3, 'chengdexian', 'C', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (185, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '兴隆县', '130822', 3, 'xinglongxian', 'X', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (186, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '滦平县', '130824', 3, 'luanpingxian', 'L', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (187, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '隆化县', '130825', 3, 'longhuaxian', 'L', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (188, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '丰宁满族自治县', '130826', 3, 'fengningmanzuzizhixian', 'F', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (189, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '宽城满族自治县', '130827', 3, 'kuanchengmanzuzizhixian', 'K', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (190, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '围场满族蒙古族自治县', '130828', 3, 'weichangmanzumengguzuzizhixian', 'W', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (191, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '承德高新技术产业开发区', '130871', 3, 'chengdegaoxinjishuchanyekaifaqu', 'C', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (192, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '平泉市', '130881', 3, 'pingquanshi', 'P', 1, NULL, '1308');
INSERT INTO `st_system_area` VALUES (193, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '沧州市', '1309', 2, 'cangzhoushi', 'C', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (194, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '新华区', '130902', 3, 'xinhuaqu', 'X', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (195, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '运河区', '130903', 3, 'yunhequ', 'Y', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (196, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '沧县', '130921', 3, 'cangxian', 'C', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (197, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '青县', '130922', 3, 'qingxian', 'Q', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (198, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '东光县', '130923', 3, 'dongguangxian', 'D', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (199, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '海兴县', '130924', 3, 'haixingxian', 'H', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (200, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '盐山县', '130925', 3, 'yanshanxian', 'Y', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (201, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '肃宁县', '130926', 3, 'suningxian', 'S', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (202, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '南皮县', '130927', 3, 'nanpixian', 'N', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (203, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '吴桥县', '130928', 3, 'wuqiaoxian', 'W', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (204, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '献县', '130929', 3, 'xianxian', 'X', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (205, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '孟村回族自治县', '130930', 3, 'mengcunhuizuzizhixian', 'M', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (206, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '河北沧州经济开发区', '130971', 3, 'hebeicangzhoujingjikaifaqu', 'H', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (207, NULL, NULL, NULL, '2025-06-20 13:16:18.353142', '2025-06-20 13:16:18.353142', '沧州高新技术产业开发区', '130972', 3, 'cangzhougaoxinjishuchanyekaifaqu', 'C', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (208, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '沧州渤海新区', '130973', 3, 'cangzhoubohaixinqu', 'C', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (209, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '泊头市', '130981', 3, 'potoushi', 'P', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (210, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '任丘市', '130982', 3, 'renqiushi', 'R', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (211, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '黄骅市', '130983', 3, 'huanghuashi', 'H', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (212, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '河间市', '130984', 3, 'hejianshi', 'H', 1, NULL, '1309');
INSERT INTO `st_system_area` VALUES (213, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '廊坊市', '1310', 2, 'langfangshi', 'L', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (214, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '安次区', '131002', 3, 'anciqu', 'A', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (215, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '广阳区', '131003', 3, 'guangyangqu', 'G', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (216, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '固安县', '131022', 3, 'guanxian', 'G', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (217, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '永清县', '131023', 3, 'yongqingxian', 'Y', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (218, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '香河县', '131024', 3, 'xianghexian', 'X', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (219, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '大城县', '131025', 3, 'dachengxian', 'D', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (220, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '文安县', '131026', 3, 'wenanxian', 'W', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (221, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '大厂回族自治县', '131028', 3, 'dachanghuizuzizhixian', 'D', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (222, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '廊坊经济技术开发区', '131071', 3, 'langfangjingjijishukaifaqu', 'L', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (223, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '霸州市', '131081', 3, 'bazhoushi', 'B', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (224, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '三河市', '131082', 3, 'sanheshi', 'S', 1, NULL, '1310');
INSERT INTO `st_system_area` VALUES (225, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '衡水市', '1311', 2, 'hengshuishi', 'H', 1, NULL, '13');
INSERT INTO `st_system_area` VALUES (226, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '桃城区', '131102', 3, 'taochengqu', 'T', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (227, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '冀州区', '131103', 3, 'jizhouqu', 'J', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (228, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '枣强县', '131121', 3, 'zaoqiangxian', 'Z', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (229, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '武邑县', '131122', 3, 'wuyixian', 'W', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (230, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '武强县', '131123', 3, 'wuqiangxian', 'W', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (231, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '饶阳县', '131124', 3, 'raoyangxian', 'R', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (232, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '安平县', '131125', 3, 'anpingxian', 'A', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (233, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '故城县', '131126', 3, 'guchengxian', 'G', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (234, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '景县', '131127', 3, 'jingxian', 'J', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (235, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '阜城县', '131128', 3, 'fuchengxian', 'F', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (236, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '河北衡水高新技术产业开发区', '131171', 3, 'hebeihengshuigaoxinjishuchanyekaifaqu', 'H', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (237, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '衡水滨湖新区', '131172', 3, 'hengshuibinhuxinqu', 'H', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (238, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '深州市', '131182', 3, 'shenzhoushi', 'S', 1, NULL, '1311');
INSERT INTO `st_system_area` VALUES (239, NULL, NULL, NULL, '2025-06-20 13:16:18.354140', '2025-06-20 13:16:18.354140', '山西省', '14', 1, 'shanxisheng', 'S', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (240, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '太原市', '1401', 2, 'taiyuanshi', 'T', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (241, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '小店区', '140105', 3, 'xiaodianqu', 'X', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (242, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '迎泽区', '140106', 3, 'yingzequ', 'Y', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (243, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '杏花岭区', '140107', 3, 'xinghualingqu', 'X', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (244, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '尖草坪区', '140108', 3, 'jiancaopingqu', 'J', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (245, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '万柏林区', '140109', 3, 'wanbolinqu', 'W', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (246, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '晋源区', '140110', 3, 'jinyuanqu', 'J', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (247, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '清徐县', '140121', 3, 'qingxuxian', 'Q', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (248, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '阳曲县', '140122', 3, 'yangquxian', 'Y', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (249, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '娄烦县', '140123', 3, 'loufanxian', 'L', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (250, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '山西转型综合改革示范区', '140171', 3, 'shanxizhuanxingzonghegaigeshifanqu', 'S', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (251, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '古交市', '140181', 3, 'gujiaoshi', 'G', 1, NULL, '1401');
INSERT INTO `st_system_area` VALUES (252, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '大同市', '1402', 2, 'datongshi', 'D', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (253, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '新荣区', '140212', 3, 'xinrongqu', 'X', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (254, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '平城区', '140213', 3, 'pingchengqu', 'P', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (255, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '云冈区', '140214', 3, 'yungangqu', 'Y', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (256, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '云州区', '140215', 3, 'yunzhouqu', 'Y', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (257, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '阳高县', '140221', 3, 'yanggaoxian', 'Y', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (258, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '天镇县', '140222', 3, 'tianzhenxian', 'T', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (259, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '广灵县', '140223', 3, 'guanglingxian', 'G', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (260, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '灵丘县', '140224', 3, 'lingqiuxian', 'L', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (261, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '浑源县', '140225', 3, 'hunyuanxian', 'H', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (262, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '左云县', '140226', 3, 'zuoyunxian', 'Z', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (263, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '山西大同经济开发区', '140271', 3, 'shanxidatongjingjikaifaqu', 'S', 1, NULL, '1402');
INSERT INTO `st_system_area` VALUES (264, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '阳泉市', '1403', 2, 'yangquanshi', 'Y', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (265, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '城区', '140302', 3, 'chengqu', 'C', 1, NULL, '1403');
INSERT INTO `st_system_area` VALUES (266, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '矿区', '140303', 3, 'kuangqu', 'K', 1, NULL, '1403');
INSERT INTO `st_system_area` VALUES (267, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '郊区', '140311', 3, 'jiaoqu', 'J', 1, NULL, '1403');
INSERT INTO `st_system_area` VALUES (268, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '平定县', '140321', 3, 'pingdingxian', 'P', 1, NULL, '1403');
INSERT INTO `st_system_area` VALUES (269, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '盂县', '140322', 3, 'yuxian', 'Y', 1, NULL, '1403');
INSERT INTO `st_system_area` VALUES (270, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '长治市', '1404', 2, 'zhangzhishi', 'Z', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (271, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '潞州区', '140403', 3, 'luzhouqu', 'L', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (272, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '上党区', '140404', 3, 'shangdangqu', 'S', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (273, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '屯留区', '140405', 3, 'tunliuqu', 'T', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (274, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '潞城区', '140406', 3, 'luchengqu', 'L', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (275, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '襄垣县', '140423', 3, 'xiangyuanxian', 'X', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (276, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '平顺县', '140425', 3, 'pingshunxian', 'P', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (277, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '黎城县', '140426', 3, 'lichengxian', 'L', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (278, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '壶关县', '140427', 3, 'huguanxian', 'H', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (279, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '长子县', '140428', 3, 'zhangzixian', 'Z', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (280, NULL, NULL, NULL, '2025-06-20 13:16:18.355139', '2025-06-20 13:16:18.355139', '武乡县', '140429', 3, 'wuxiangxian', 'W', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (281, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '沁县', '140430', 3, 'qinxian', 'Q', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (282, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '沁源县', '140431', 3, 'qinyuanxian', 'Q', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (283, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '山西长治高新技术产业园区', '140471', 3, 'shanxizhangzhigaoxinjishuchanyeyuanqu', 'S', 1, NULL, '1404');
INSERT INTO `st_system_area` VALUES (284, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '晋城市', '1405', 2, 'jinchengshi', 'J', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (285, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '城区', '140502', 3, 'chengqu', 'C', 1, NULL, '1405');
INSERT INTO `st_system_area` VALUES (286, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '沁水县', '140521', 3, 'qinshuixian', 'Q', 1, NULL, '1405');
INSERT INTO `st_system_area` VALUES (287, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '阳城县', '140522', 3, 'yangchengxian', 'Y', 1, NULL, '1405');
INSERT INTO `st_system_area` VALUES (288, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '陵川县', '140524', 3, 'lingchuanxian', 'L', 1, NULL, '1405');
INSERT INTO `st_system_area` VALUES (289, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '泽州县', '140525', 3, 'zezhouxian', 'Z', 1, NULL, '1405');
INSERT INTO `st_system_area` VALUES (290, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '高平市', '140581', 3, 'gaopingshi', 'G', 1, NULL, '1405');
INSERT INTO `st_system_area` VALUES (291, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '朔州市', '1406', 2, 'shuozhoushi', 'S', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (292, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '朔城区', '140602', 3, 'shuochengqu', 'S', 1, NULL, '1406');
INSERT INTO `st_system_area` VALUES (293, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '平鲁区', '140603', 3, 'pingluqu', 'P', 1, NULL, '1406');
INSERT INTO `st_system_area` VALUES (294, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '山阴县', '140621', 3, 'shanyinxian', 'S', 1, NULL, '1406');
INSERT INTO `st_system_area` VALUES (295, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '应县', '140622', 3, 'yingxian', 'Y', 1, NULL, '1406');
INSERT INTO `st_system_area` VALUES (296, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '右玉县', '140623', 3, 'youyuxian', 'Y', 1, NULL, '1406');
INSERT INTO `st_system_area` VALUES (297, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '山西朔州经济开发区', '140671', 3, 'shanxishuozhoujingjikaifaqu', 'S', 1, NULL, '1406');
INSERT INTO `st_system_area` VALUES (298, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '怀仁市', '140681', 3, 'huairenshi', 'H', 1, NULL, '1406');
INSERT INTO `st_system_area` VALUES (299, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '晋中市', '1407', 2, 'jinzhongshi', 'J', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (300, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '榆次区', '140702', 3, 'yuciqu', 'Y', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (301, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '太谷区', '140703', 3, 'taiguqu', 'T', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (302, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '榆社县', '140721', 3, 'yushexian', 'Y', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (303, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '左权县', '140722', 3, 'zuoquanxian', 'Z', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (304, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '和顺县', '140723', 3, 'heshunxian', 'H', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (305, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '昔阳县', '140724', 3, 'xiyangxian', 'X', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (306, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '寿阳县', '140725', 3, 'shouyangxian', 'S', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (307, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '祁县', '140727', 3, 'qixian', 'Q', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (308, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '平遥县', '140728', 3, 'pingyaoxian', 'P', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (309, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '灵石县', '140729', 3, 'lingshixian', 'L', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (310, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '介休市', '140781', 3, 'jiexiushi', 'J', 1, NULL, '1407');
INSERT INTO `st_system_area` VALUES (311, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '运城市', '1408', 2, 'yunchengshi', 'Y', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (312, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '盐湖区', '140802', 3, 'yanhuqu', 'Y', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (313, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '临猗县', '140821', 3, 'linyixian', 'L', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (314, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '万荣县', '140822', 3, 'wanrongxian', 'W', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (315, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '闻喜县', '140823', 3, 'wenxixian', 'W', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (316, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '稷山县', '140824', 3, 'jishanxian', 'J', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (317, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '新绛县', '140825', 3, 'xinjiangxian', 'X', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (318, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '绛县', '140826', 3, 'jiangxian', 'J', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (319, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '垣曲县', '140827', 3, 'yuanquxian', 'Y', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (320, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '夏县', '140828', 3, 'xiaxian', 'X', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (321, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '平陆县', '140829', 3, 'pingluxian', 'P', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (322, NULL, NULL, NULL, '2025-06-20 13:16:18.356139', '2025-06-20 13:16:18.356139', '芮城县', '140830', 3, 'ruichengxian', 'R', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (323, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '永济市', '140881', 3, 'yongjishi', 'Y', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (324, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '河津市', '140882', 3, 'hejinshi', 'H', 1, NULL, '1408');
INSERT INTO `st_system_area` VALUES (325, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '忻州市', '1409', 2, 'xinzhoushi', 'X', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (326, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '忻府区', '140902', 3, 'xinfuqu', 'X', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (327, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '定襄县', '140921', 3, 'dingxiangxian', 'D', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (328, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '五台县', '140922', 3, 'wutaixian', 'W', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (329, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '代县', '140923', 3, 'daixian', 'D', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (330, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '繁峙县', '140924', 3, 'fanzhixian', 'F', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (331, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '宁武县', '140925', 3, 'ningwuxian', 'N', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (332, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '静乐县', '140926', 3, 'jinglexian', 'J', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (333, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '神池县', '140927', 3, 'shenchixian', 'S', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (334, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '五寨县', '140928', 3, 'wuzhaixian', 'W', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (335, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '岢岚县', '140929', 3, 'kelanxian', 'K', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (336, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '河曲县', '140930', 3, 'hequxian', 'H', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (337, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '保德县', '140931', 3, 'baodexian', 'B', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (338, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '偏关县', '140932', 3, 'pianguanxian', 'P', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (339, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '五台山风景名胜区', '140971', 3, 'wutaishanfengjingmingshengqu', 'W', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (340, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '原平市', '140981', 3, 'yuanpingshi', 'Y', 1, NULL, '1409');
INSERT INTO `st_system_area` VALUES (341, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '临汾市', '1410', 2, 'linfenshi', 'L', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (342, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '尧都区', '141002', 3, 'yaodouqu', 'Y', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (343, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '曲沃县', '141021', 3, 'quwoxian', 'Q', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (344, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '翼城县', '141022', 3, 'yichengxian', 'Y', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (345, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '襄汾县', '141023', 3, 'xiangfenxian', 'X', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (346, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '洪洞县', '141024', 3, 'hongdongxian', 'H', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (347, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '古县', '141025', 3, 'guxian', 'G', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (348, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '安泽县', '141026', 3, 'anzexian', 'A', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (349, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '浮山县', '141027', 3, 'fushanxian', 'F', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (350, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '吉县', '141028', 3, 'jixian', 'J', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (351, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '乡宁县', '141029', 3, 'xiangningxian', 'X', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (352, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '大宁县', '141030', 3, 'daningxian', 'D', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (353, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '隰县', '141031', 3, 'xixian', 'X', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (354, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '永和县', '141032', 3, 'yonghexian', 'Y', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (355, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '蒲县', '141033', 3, 'puxian', 'P', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (356, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '汾西县', '141034', 3, 'fenxixian', 'F', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (357, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '侯马市', '141081', 3, 'houmashi', 'H', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (358, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '霍州市', '141082', 3, 'huozhoushi', 'H', 1, NULL, '1410');
INSERT INTO `st_system_area` VALUES (359, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '吕梁市', '1411', 2, 'lvliangshi', 'L', 1, NULL, '14');
INSERT INTO `st_system_area` VALUES (360, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '离石区', '141102', 3, 'lishiqu', 'L', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (361, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '文水县', '141121', 3, 'wenshuixian', 'W', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (362, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.357138', '交城县', '141122', 3, 'jiaochengxian', 'J', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (363, NULL, NULL, NULL, '2025-06-20 13:16:18.357138', '2025-06-20 13:16:18.358137', '兴县', '141123', 3, 'xingxian', 'X', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (364, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '临县', '141124', 3, 'linxian', 'L', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (365, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '柳林县', '141125', 3, 'liulinxian', 'L', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (366, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '石楼县', '141126', 3, 'shilouxian', 'S', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (367, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '岚县', '141127', 3, 'lanxian', 'L', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (368, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '方山县', '141128', 3, 'fangshanxian', 'F', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (369, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '中阳县', '141129', 3, 'zhongyangxian', 'Z', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (370, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '交口县', '141130', 3, 'jiaokouxian', 'J', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (371, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '孝义市', '141181', 3, 'xiaoyishi', 'X', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (372, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '汾阳市', '141182', 3, 'fenyangshi', 'F', 1, NULL, '1411');
INSERT INTO `st_system_area` VALUES (373, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '内蒙古自治区', '15', 1, 'neimengguzizhiqu', 'N', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (374, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '呼和浩特市', '1501', 2, 'huhehaoteshi', 'H', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (375, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '新城区', '150102', 3, 'xinchengqu', 'X', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (376, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '回民区', '150103', 3, 'huiminqu', 'H', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (377, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '玉泉区', '150104', 3, 'yuquanqu', 'Y', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (378, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '赛罕区', '150105', 3, 'saihanqu', 'S', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (379, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '土默特左旗', '150121', 3, 'tumotezuoqi', 'T', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (380, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '托克托县', '150122', 3, 'tuoketuoxian', 'T', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (381, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '和林格尔县', '150123', 3, 'helingeerxian', 'H', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (382, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '清水河县', '150124', 3, 'qingshuihexian', 'Q', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (383, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '武川县', '150125', 3, 'wuchuanxian', 'W', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (384, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '呼和浩特经济技术开发区', '150172', 3, 'huhehaotejingjijishukaifaqu', 'H', 1, NULL, '1501');
INSERT INTO `st_system_area` VALUES (385, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '包头市', '1502', 2, 'baotoushi', 'B', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (386, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '东河区', '150202', 3, 'donghequ', 'D', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (387, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '昆都仑区', '150203', 3, 'kundoulunqu', 'K', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (388, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '青山区', '150204', 3, 'qingshanqu', 'Q', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (389, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '石拐区', '150205', 3, 'shiguaiqu', 'S', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (390, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '白云鄂博矿区', '150206', 3, 'baiyunebokuangqu', 'B', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (391, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '九原区', '150207', 3, 'jiuyuanqu', 'J', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (392, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '土默特右旗', '150221', 3, 'tumoteyouqi', 'T', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (393, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '固阳县', '150222', 3, 'guyangxian', 'G', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (394, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '达尔罕茂明安联合旗', '150223', 3, 'daerhanmaominganlianheqi', 'D', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (395, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '包头稀土高新技术产业开发区', '150271', 3, 'baotouxitugaoxinjishuchanyekaifaqu', 'B', 1, NULL, '1502');
INSERT INTO `st_system_area` VALUES (396, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '乌海市', '1503', 2, 'wuhaishi', 'W', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (397, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '海勃湾区', '150302', 3, 'haibowanqu', 'H', 1, NULL, '1503');
INSERT INTO `st_system_area` VALUES (398, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '海南区', '150303', 3, 'hainanqu', 'H', 1, NULL, '1503');
INSERT INTO `st_system_area` VALUES (399, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '乌达区', '150304', 3, 'wudaqu', 'W', 1, NULL, '1503');
INSERT INTO `st_system_area` VALUES (400, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '赤峰市', '1504', 2, 'chifengshi', 'C', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (401, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '红山区', '150402', 3, 'hongshanqu', 'H', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (402, NULL, NULL, NULL, '2025-06-20 13:16:18.358137', '2025-06-20 13:16:18.358137', '元宝山区', '150403', 3, 'yuanbaoshanqu', 'Y', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (403, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '松山区', '150404', 3, 'songshanqu', 'S', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (404, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '阿鲁科尔沁旗', '150421', 3, 'alukeerqinqi', 'A', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (405, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '巴林左旗', '150422', 3, 'balinzuoqi', 'B', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (406, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '巴林右旗', '150423', 3, 'balinyouqi', 'B', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (407, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '林西县', '150424', 3, 'linxixian', 'L', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (408, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '克什克腾旗', '150425', 3, 'keshenketengqi', 'K', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (409, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '翁牛特旗', '150426', 3, 'wengniuteqi', 'W', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (410, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '喀喇沁旗', '150428', 3, 'kalaqinqi', 'K', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (411, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '宁城县', '150429', 3, 'ningchengxian', 'N', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (412, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '敖汉旗', '150430', 3, 'aohanqi', 'A', 1, NULL, '1504');
INSERT INTO `st_system_area` VALUES (413, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '通辽市', '1505', 2, 'tongliaoshi', 'T', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (414, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '科尔沁区', '150502', 3, 'keerqinqu', 'K', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (415, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '科尔沁左翼中旗', '150521', 3, 'keerqinzuoyizhongqi', 'K', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (416, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '科尔沁左翼后旗', '150522', 3, 'keerqinzuoyihouqi', 'K', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (417, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '开鲁县', '150523', 3, 'kailuxian', 'K', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (418, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '库伦旗', '150524', 3, 'kulunqi', 'K', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (419, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '奈曼旗', '150525', 3, 'naimanqi', 'N', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (420, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '扎鲁特旗', '150526', 3, 'zhaluteqi', 'Z', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (421, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '通辽经济技术开发区', '150571', 3, 'tongliaojingjijishukaifaqu', 'T', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (422, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '霍林郭勒市', '150581', 3, 'huolinguoleishi', 'H', 1, NULL, '1505');
INSERT INTO `st_system_area` VALUES (423, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '鄂尔多斯市', '1506', 2, 'eerduosishi', 'E', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (424, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '东胜区', '150602', 3, 'dongshengqu', 'D', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (425, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '康巴什区', '150603', 3, 'kangbashenqu', 'K', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (426, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '达拉特旗', '150621', 3, 'dalateqi', 'D', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (427, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '准格尔旗', '150622', 3, 'zhungeerqi', 'Z', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (428, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '鄂托克前旗', '150623', 3, 'etuokeqianqi', 'E', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (429, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '鄂托克旗', '150624', 3, 'etuokeqi', 'E', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (430, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '杭锦旗', '150625', 3, 'hangjinqi', 'H', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (431, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '乌审旗', '150626', 3, 'wushenqi', 'W', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (432, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '伊金霍洛旗', '150627', 3, 'yijinhuoluoqi', 'Y', 1, NULL, '1506');
INSERT INTO `st_system_area` VALUES (433, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '呼伦贝尔市', '1507', 2, 'hulunbeiershi', 'H', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (434, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '海拉尔区', '150702', 3, 'hailaerqu', 'H', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (435, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '扎赉诺尔区', '150703', 3, 'zhalainuoerqu', 'Z', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (436, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '阿荣旗', '150721', 3, 'arongqi', 'A', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (437, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '莫力达瓦达斡尔族自治旗', '150722', 3, 'molidawadawoerzuzizhiqi', 'M', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (438, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '鄂伦春自治旗', '150723', 3, 'elunchunzizhiqi', 'E', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (439, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '鄂温克族自治旗', '150724', 3, 'ewenkezuzizhiqi', 'E', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (440, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '陈巴尔虎旗', '150725', 3, 'chenbaerhuqi', 'C', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (441, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '新巴尔虎左旗', '150726', 3, 'xinbaerhuzuoqi', 'X', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (442, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '新巴尔虎右旗', '150727', 3, 'xinbaerhuyouqi', 'X', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (443, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.359137', '满洲里市', '150781', 3, 'manzhoulishi', 'M', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (444, NULL, NULL, NULL, '2025-06-20 13:16:18.359137', '2025-06-20 13:16:18.360136', '牙克石市', '150782', 3, 'yakeshishi', 'Y', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (445, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '扎兰屯市', '150783', 3, 'zhalantunshi', 'Z', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (446, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '额尔古纳市', '150784', 3, 'eergunashi', 'E', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (447, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '根河市', '150785', 3, 'genheshi', 'G', 1, NULL, '1507');
INSERT INTO `st_system_area` VALUES (448, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '巴彦淖尔市', '1508', 2, 'bayannaoershi', 'B', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (449, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '临河区', '150802', 3, 'linhequ', 'L', 1, NULL, '1508');
INSERT INTO `st_system_area` VALUES (450, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '五原县', '150821', 3, 'wuyuanxian', 'W', 1, NULL, '1508');
INSERT INTO `st_system_area` VALUES (451, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '磴口县', '150822', 3, 'dengkouxian', 'D', 1, NULL, '1508');
INSERT INTO `st_system_area` VALUES (452, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '乌拉特前旗', '150823', 3, 'wulateqianqi', 'W', 1, NULL, '1508');
INSERT INTO `st_system_area` VALUES (453, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '乌拉特中旗', '150824', 3, 'wulatezhongqi', 'W', 1, NULL, '1508');
INSERT INTO `st_system_area` VALUES (454, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '乌拉特后旗', '150825', 3, 'wulatehouqi', 'W', 1, NULL, '1508');
INSERT INTO `st_system_area` VALUES (455, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '杭锦后旗', '150826', 3, 'hangjinhouqi', 'H', 1, NULL, '1508');
INSERT INTO `st_system_area` VALUES (456, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '乌兰察布市', '1509', 2, 'wulanchabushi', 'W', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (457, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '集宁区', '150902', 3, 'jiningqu', 'J', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (458, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '卓资县', '150921', 3, 'zhuozixian', 'Z', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (459, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '化德县', '150922', 3, 'huadexian', 'H', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (460, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '商都县', '150923', 3, 'shangdouxian', 'S', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (461, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '兴和县', '150924', 3, 'xinghexian', 'X', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (462, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '凉城县', '150925', 3, 'liangchengxian', 'L', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (463, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '察哈尔右翼前旗', '150926', 3, 'chahaeryouyiqianqi', 'C', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (464, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '察哈尔右翼中旗', '150927', 3, 'chahaeryouyizhongqi', 'C', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (465, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '察哈尔右翼后旗', '150928', 3, 'chahaeryouyihouqi', 'C', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (466, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '四子王旗', '150929', 3, 'siziwangqi', 'S', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (467, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '丰镇市', '150981', 3, 'fengzhenshi', 'F', 1, NULL, '1509');
INSERT INTO `st_system_area` VALUES (468, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '兴安盟', '1522', 2, 'xinganmeng', 'X', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (469, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '乌兰浩特市', '152201', 3, 'wulanhaoteshi', 'W', 1, NULL, '1522');
INSERT INTO `st_system_area` VALUES (470, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '阿尔山市', '152202', 3, 'aershanshi', 'A', 1, NULL, '1522');
INSERT INTO `st_system_area` VALUES (471, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '科尔沁右翼前旗', '152221', 3, 'keerqinyouyiqianqi', 'K', 1, NULL, '1522');
INSERT INTO `st_system_area` VALUES (472, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '科尔沁右翼中旗', '152222', 3, 'keerqinyouyizhongqi', 'K', 1, NULL, '1522');
INSERT INTO `st_system_area` VALUES (473, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '扎赉特旗', '152223', 3, 'zhalaiteqi', 'Z', 1, NULL, '1522');
INSERT INTO `st_system_area` VALUES (474, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '突泉县', '152224', 3, 'tuquanxian', 'T', 1, NULL, '1522');
INSERT INTO `st_system_area` VALUES (475, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '锡林郭勒盟', '1525', 2, 'xilinguoleimeng', 'X', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (476, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '二连浩特市', '152501', 3, 'erlianhaoteshi', 'E', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (477, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '锡林浩特市', '152502', 3, 'xilinhaoteshi', 'X', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (478, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '阿巴嘎旗', '152522', 3, 'abagaqi', 'A', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (479, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '苏尼特左旗', '152523', 3, 'sunitezuoqi', 'S', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (480, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '苏尼特右旗', '152524', 3, 'suniteyouqi', 'S', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (481, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '东乌珠穆沁旗', '152525', 3, 'dongwuzhumuqinqi', 'D', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (482, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '西乌珠穆沁旗', '152526', 3, 'xiwuzhumuqinqi', 'X', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (483, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '太仆寺旗', '152527', 3, 'taipusiqi', 'T', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (484, NULL, NULL, NULL, '2025-06-20 13:16:18.360136', '2025-06-20 13:16:18.360136', '镶黄旗', '152528', 3, 'xianghuangqi', 'X', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (485, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '正镶白旗', '152529', 3, 'zhengxiangbaiqi', 'Z', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (486, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '正蓝旗', '152530', 3, 'zhenglanqi', 'Z', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (487, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '多伦县', '152531', 3, 'duolunxian', 'D', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (488, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '乌拉盖管委会', '152571', 3, 'wulagaiguanweihui', 'W', 1, NULL, '1525');
INSERT INTO `st_system_area` VALUES (489, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '阿拉善盟', '1529', 2, 'alashanmeng', 'A', 1, NULL, '15');
INSERT INTO `st_system_area` VALUES (490, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '阿拉善左旗', '152921', 3, 'alashanzuoqi', 'A', 1, NULL, '1529');
INSERT INTO `st_system_area` VALUES (491, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '阿拉善右旗', '152922', 3, 'alashanyouqi', 'A', 1, NULL, '1529');
INSERT INTO `st_system_area` VALUES (492, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '额济纳旗', '152923', 3, 'ejinaqi', 'E', 1, NULL, '1529');
INSERT INTO `st_system_area` VALUES (493, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '内蒙古阿拉善经济开发区', '152971', 3, 'neimenggualashanjingjikaifaqu', 'N', 1, NULL, '1529');
INSERT INTO `st_system_area` VALUES (494, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '辽宁省', '21', 1, 'liaoningsheng', 'L', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (495, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '沈阳市', '2101', 2, 'shenyangshi', 'S', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (496, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '和平区', '210102', 3, 'hepingqu', 'H', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (497, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '沈河区', '210103', 3, 'shenhequ', 'S', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (498, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '大东区', '210104', 3, 'dadongqu', 'D', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (499, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '皇姑区', '210105', 3, 'huangguqu', 'H', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (500, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '铁西区', '210106', 3, 'tiexiqu', 'T', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (501, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '苏家屯区', '210111', 3, 'sujiatunqu', 'S', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (502, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '浑南区', '210112', 3, 'hunnanqu', 'H', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (503, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '沈北新区', '210113', 3, 'shenbeixinqu', 'S', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (504, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '于洪区', '210114', 3, 'yuhongqu', 'Y', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (505, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '辽中区', '210115', 3, 'liaozhongqu', 'L', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (506, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '康平县', '210123', 3, 'kangpingxian', 'K', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (507, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '法库县', '210124', 3, 'fakuxian', 'F', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (508, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '新民市', '210181', 3, 'xinminshi', 'X', 1, NULL, '2101');
INSERT INTO `st_system_area` VALUES (509, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '大连市', '2102', 2, 'dalianshi', 'D', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (510, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '中山区', '210202', 3, 'zhongshanqu', 'Z', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (511, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '西岗区', '210203', 3, 'xigangqu', 'X', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (512, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '沙河口区', '210204', 3, 'shahekouqu', 'S', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (513, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '甘井子区', '210211', 3, 'ganjingziqu', 'G', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (514, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '旅顺口区', '210212', 3, 'lvshunkouqu', 'L', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (515, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '金州区', '210213', 3, 'jinzhouqu', 'J', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (516, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '普兰店区', '210214', 3, 'pulandianqu', 'P', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (517, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '长海县', '210224', 3, 'zhanghaixian', 'Z', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (518, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.361136', '瓦房店市', '210281', 3, 'wafangdianshi', 'W', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (519, NULL, NULL, NULL, '2025-06-20 13:16:18.361136', '2025-06-20 13:16:18.362135', '庄河市', '210283', 3, 'zhuangheshi', 'Z', 1, NULL, '2102');
INSERT INTO `st_system_area` VALUES (520, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '鞍山市', '2103', 2, 'anshanshi', 'A', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (521, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '铁东区', '210302', 3, 'tiedongqu', 'T', 1, NULL, '2103');
INSERT INTO `st_system_area` VALUES (522, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '铁西区', '210303', 3, 'tiexiqu', 'T', 1, NULL, '2103');
INSERT INTO `st_system_area` VALUES (523, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '立山区', '210304', 3, 'lishanqu', 'L', 1, NULL, '2103');
INSERT INTO `st_system_area` VALUES (524, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '千山区', '210311', 3, 'qianshanqu', 'Q', 1, NULL, '2103');
INSERT INTO `st_system_area` VALUES (525, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '台安县', '210321', 3, 'taianxian', 'T', 1, NULL, '2103');
INSERT INTO `st_system_area` VALUES (526, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '岫岩满族自治县', '210323', 3, 'xiuyanmanzuzizhixian', 'X', 1, NULL, '2103');
INSERT INTO `st_system_area` VALUES (527, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '海城市', '210381', 3, 'haichengshi', 'H', 1, NULL, '2103');
INSERT INTO `st_system_area` VALUES (528, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '抚顺市', '2104', 2, 'fushunshi', 'F', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (529, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '新抚区', '210402', 3, 'xinfuqu', 'X', 1, NULL, '2104');
INSERT INTO `st_system_area` VALUES (530, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '东洲区', '210403', 3, 'dongzhouqu', 'D', 1, NULL, '2104');
INSERT INTO `st_system_area` VALUES (531, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '望花区', '210404', 3, 'wanghuaqu', 'W', 1, NULL, '2104');
INSERT INTO `st_system_area` VALUES (532, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '顺城区', '210411', 3, 'shunchengqu', 'S', 1, NULL, '2104');
INSERT INTO `st_system_area` VALUES (533, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '抚顺县', '210421', 3, 'fushunxian', 'F', 1, NULL, '2104');
INSERT INTO `st_system_area` VALUES (534, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '新宾满族自治县', '210422', 3, 'xinbinmanzuzizhixian', 'X', 1, NULL, '2104');
INSERT INTO `st_system_area` VALUES (535, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '清原满族自治县', '210423', 3, 'qingyuanmanzuzizhixian', 'Q', 1, NULL, '2104');
INSERT INTO `st_system_area` VALUES (536, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '本溪市', '2105', 2, 'benxishi', 'B', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (537, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '平山区', '210502', 3, 'pingshanqu', 'P', 1, NULL, '2105');
INSERT INTO `st_system_area` VALUES (538, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '溪湖区', '210503', 3, 'xihuqu', 'X', 1, NULL, '2105');
INSERT INTO `st_system_area` VALUES (539, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '明山区', '210504', 3, 'mingshanqu', 'M', 1, NULL, '2105');
INSERT INTO `st_system_area` VALUES (540, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '南芬区', '210505', 3, 'nanfenqu', 'N', 1, NULL, '2105');
INSERT INTO `st_system_area` VALUES (541, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '本溪满族自治县', '210521', 3, 'benximanzuzizhixian', 'B', 1, NULL, '2105');
INSERT INTO `st_system_area` VALUES (542, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '桓仁满族自治县', '210522', 3, 'huanrenmanzuzizhixian', 'H', 1, NULL, '2105');
INSERT INTO `st_system_area` VALUES (543, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '丹东市', '2106', 2, 'dandongshi', 'D', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (544, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '元宝区', '210602', 3, 'yuanbaoqu', 'Y', 1, NULL, '2106');
INSERT INTO `st_system_area` VALUES (545, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '振兴区', '210603', 3, 'zhenxingqu', 'Z', 1, NULL, '2106');
INSERT INTO `st_system_area` VALUES (546, NULL, NULL, NULL, '2025-06-20 13:16:18.362135', '2025-06-20 13:16:18.362135', '振安区', '210604', 3, 'zhenanqu', 'Z', 1, NULL, '2106');
INSERT INTO `st_system_area` VALUES (547, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '宽甸满族自治县', '210624', 3, 'kuandianmanzuzizhixian', 'K', 1, NULL, '2106');
INSERT INTO `st_system_area` VALUES (548, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '东港市', '210681', 3, 'donggangshi', 'D', 1, NULL, '2106');
INSERT INTO `st_system_area` VALUES (549, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '凤城市', '210682', 3, 'fengchengshi', 'F', 1, NULL, '2106');
INSERT INTO `st_system_area` VALUES (550, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '锦州市', '2107', 2, 'jinzhoushi', 'J', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (551, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '古塔区', '210702', 3, 'gutaqu', 'G', 1, NULL, '2107');
INSERT INTO `st_system_area` VALUES (552, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '凌河区', '210703', 3, 'linghequ', 'L', 1, NULL, '2107');
INSERT INTO `st_system_area` VALUES (553, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '太和区', '210711', 3, 'taihequ', 'T', 1, NULL, '2107');
INSERT INTO `st_system_area` VALUES (554, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '黑山县', '210726', 3, 'heishanxian', 'H', 1, NULL, '2107');
INSERT INTO `st_system_area` VALUES (555, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '义县', '210727', 3, 'yixian', 'Y', 1, NULL, '2107');
INSERT INTO `st_system_area` VALUES (556, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '凌海市', '210781', 3, 'linghaishi', 'L', 1, NULL, '2107');
INSERT INTO `st_system_area` VALUES (557, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '北镇市', '210782', 3, 'beizhenshi', 'B', 1, NULL, '2107');
INSERT INTO `st_system_area` VALUES (558, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '营口市', '2108', 2, 'yingkoushi', 'Y', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (559, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '站前区', '210802', 3, 'zhanqianqu', 'Z', 1, NULL, '2108');
INSERT INTO `st_system_area` VALUES (560, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '西市区', '210803', 3, 'xishiqu', 'X', 1, NULL, '2108');
INSERT INTO `st_system_area` VALUES (561, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '鲅鱼圈区', '210804', 3, 'bayuquanqu', 'B', 1, NULL, '2108');
INSERT INTO `st_system_area` VALUES (562, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '老边区', '210811', 3, 'laobianqu', 'L', 1, NULL, '2108');
INSERT INTO `st_system_area` VALUES (563, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '盖州市', '210881', 3, 'gaizhoushi', 'G', 1, NULL, '2108');
INSERT INTO `st_system_area` VALUES (564, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '大石桥市', '210882', 3, 'dashiqiaoshi', 'D', 1, NULL, '2108');
INSERT INTO `st_system_area` VALUES (565, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '阜新市', '2109', 2, 'fuxinshi', 'F', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (566, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '海州区', '210902', 3, 'haizhouqu', 'H', 1, NULL, '2109');
INSERT INTO `st_system_area` VALUES (567, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '新邱区', '210903', 3, 'xinqiuqu', 'X', 1, NULL, '2109');
INSERT INTO `st_system_area` VALUES (568, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '太平区', '210904', 3, 'taipingqu', 'T', 1, NULL, '2109');
INSERT INTO `st_system_area` VALUES (569, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '清河门区', '210905', 3, 'qinghemenqu', 'Q', 1, NULL, '2109');
INSERT INTO `st_system_area` VALUES (570, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '细河区', '210911', 3, 'xihequ', 'X', 1, NULL, '2109');
INSERT INTO `st_system_area` VALUES (571, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '阜新蒙古族自治县', '210921', 3, 'fuxinmengguzuzizhixian', 'F', 1, NULL, '2109');
INSERT INTO `st_system_area` VALUES (572, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '彰武县', '210922', 3, 'zhangwuxian', 'Z', 1, NULL, '2109');
INSERT INTO `st_system_area` VALUES (573, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.363135', '辽阳市', '2110', 2, 'liaoyangshi', 'L', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (574, NULL, NULL, NULL, '2025-06-20 13:16:18.363135', '2025-06-20 13:16:18.364134', '白塔区', '211002', 3, 'baitaqu', 'B', 1, NULL, '2110');
INSERT INTO `st_system_area` VALUES (575, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '文圣区', '211003', 3, 'wenshengqu', 'W', 1, NULL, '2110');
INSERT INTO `st_system_area` VALUES (576, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '宏伟区', '211004', 3, 'hongweiqu', 'H', 1, NULL, '2110');
INSERT INTO `st_system_area` VALUES (577, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '弓长岭区', '211005', 3, 'gongzhanglingqu', 'G', 1, NULL, '2110');
INSERT INTO `st_system_area` VALUES (578, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '太子河区', '211011', 3, 'taizihequ', 'T', 1, NULL, '2110');
INSERT INTO `st_system_area` VALUES (579, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '辽阳县', '211021', 3, 'liaoyangxian', 'L', 1, NULL, '2110');
INSERT INTO `st_system_area` VALUES (580, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '灯塔市', '211081', 3, 'dengtashi', 'D', 1, NULL, '2110');
INSERT INTO `st_system_area` VALUES (581, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '盘锦市', '2111', 2, 'panjinshi', 'P', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (582, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '双台子区', '211102', 3, 'shuangtaiziqu', 'S', 1, NULL, '2111');
INSERT INTO `st_system_area` VALUES (583, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '兴隆台区', '211103', 3, 'xinglongtaiqu', 'X', 1, NULL, '2111');
INSERT INTO `st_system_area` VALUES (584, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '大洼区', '211104', 3, 'dawaqu', 'D', 1, NULL, '2111');
INSERT INTO `st_system_area` VALUES (585, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '盘山县', '211122', 3, 'panshanxian', 'P', 1, NULL, '2111');
INSERT INTO `st_system_area` VALUES (586, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '铁岭市', '2112', 2, 'tielingshi', 'T', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (587, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '银州区', '211202', 3, 'yinzhouqu', 'Y', 1, NULL, '2112');
INSERT INTO `st_system_area` VALUES (588, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '清河区', '211204', 3, 'qinghequ', 'Q', 1, NULL, '2112');
INSERT INTO `st_system_area` VALUES (589, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '铁岭县', '211221', 3, 'tielingxian', 'T', 1, NULL, '2112');
INSERT INTO `st_system_area` VALUES (590, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '西丰县', '211223', 3, 'xifengxian', 'X', 1, NULL, '2112');
INSERT INTO `st_system_area` VALUES (591, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '昌图县', '211224', 3, 'changtuxian', 'C', 1, NULL, '2112');
INSERT INTO `st_system_area` VALUES (592, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '调兵山市', '211281', 3, 'diaobingshanshi', 'D', 1, NULL, '2112');
INSERT INTO `st_system_area` VALUES (593, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '开原市', '211282', 3, 'kaiyuanshi', 'K', 1, NULL, '2112');
INSERT INTO `st_system_area` VALUES (594, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '朝阳市', '2113', 2, 'zhaoyangshi', 'Z', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (595, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '双塔区', '211302', 3, 'shuangtaqu', 'S', 1, NULL, '2113');
INSERT INTO `st_system_area` VALUES (596, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '龙城区', '211303', 3, 'longchengqu', 'L', 1, NULL, '2113');
INSERT INTO `st_system_area` VALUES (597, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '朝阳县', '211321', 3, 'zhaoyangxian', 'Z', 1, NULL, '2113');
INSERT INTO `st_system_area` VALUES (598, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '建平县', '211322', 3, 'jianpingxian', 'J', 1, NULL, '2113');
INSERT INTO `st_system_area` VALUES (599, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '喀喇沁左翼蒙古族自治县', '211324', 3, 'kalaqinzuoyimengguzuzizhixian', 'K', 1, NULL, '2113');
INSERT INTO `st_system_area` VALUES (600, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '北票市', '211381', 3, 'beipiaoshi', 'B', 1, NULL, '2113');
INSERT INTO `st_system_area` VALUES (601, NULL, NULL, NULL, '2025-06-20 13:16:18.364134', '2025-06-20 13:16:18.364134', '凌源市', '211382', 3, 'lingyuanshi', 'L', 1, NULL, '2113');
INSERT INTO `st_system_area` VALUES (602, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '葫芦岛市', '2114', 2, 'huludaoshi', 'H', 1, NULL, '21');
INSERT INTO `st_system_area` VALUES (603, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '连山区', '211402', 3, 'lianshanqu', 'L', 1, NULL, '2114');
INSERT INTO `st_system_area` VALUES (604, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '龙港区', '211403', 3, 'longgangqu', 'L', 1, NULL, '2114');
INSERT INTO `st_system_area` VALUES (605, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '南票区', '211404', 3, 'nanpiaoqu', 'N', 1, NULL, '2114');
INSERT INTO `st_system_area` VALUES (606, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '绥中县', '211421', 3, 'suizhongxian', 'S', 1, NULL, '2114');
INSERT INTO `st_system_area` VALUES (607, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '建昌县', '211422', 3, 'jianchangxian', 'J', 1, NULL, '2114');
INSERT INTO `st_system_area` VALUES (608, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '兴城市', '211481', 3, 'xingchengshi', 'X', 1, NULL, '2114');
INSERT INTO `st_system_area` VALUES (609, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '吉林省', '22', 1, 'jilinsheng', 'J', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (610, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '长春市', '2201', 2, 'changchunshi', 'C', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (611, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '南关区', '220102', 3, 'nanguanqu', 'N', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (612, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '宽城区', '220103', 3, 'kuanchengqu', 'K', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (613, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '朝阳区', '220104', 3, 'chaoyangqu', 'C', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (614, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '二道区', '220105', 3, 'erdaoqu', 'E', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (615, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '绿园区', '220106', 3, 'lvyuanqu', 'L', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (616, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '双阳区', '220112', 3, 'shuangyangqu', 'S', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (617, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '九台区', '220113', 3, 'jiutaiqu', 'J', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (618, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '农安县', '220122', 3, 'nonganxian', 'N', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (619, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '长春经济技术开发区', '220171', 3, 'changchunjingjijishukaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (620, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '长春净月高新技术产业开发区', '220172', 3, 'changchunjingyuegaoxinjishuchanyekaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (621, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '长春高新技术产业开发区', '220173', 3, 'changchungaoxinjishuchanyekaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (622, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '长春汽车经济技术开发区', '220174', 3, 'changchunqichejingjijishukaifaqu', 'C', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (623, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '榆树市', '220182', 3, 'yushushi', 'Y', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (624, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '德惠市', '220183', 3, 'dehuishi', 'D', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (625, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '公主岭市', '220184', 3, 'gongzhulingshi', 'G', 1, NULL, '2201');
INSERT INTO `st_system_area` VALUES (626, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '吉林市', '2202', 2, 'jilinshi', 'J', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (627, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '昌邑区', '220202', 3, 'changyiqu', 'C', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (628, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '龙潭区', '220203', 3, 'longtanqu', 'L', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (629, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '船营区', '220204', 3, 'chuanyingqu', 'C', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (630, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '丰满区', '220211', 3, 'fengmanqu', 'F', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (631, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '永吉县', '220221', 3, 'yongjixian', 'Y', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (632, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '吉林经济开发区', '220271', 3, 'jilinjingjikaifaqu', 'J', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (633, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '吉林高新技术产业开发区', '220272', 3, 'jilingaoxinjishuchanyekaifaqu', 'J', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (634, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '吉林中国新加坡食品区', '220273', 3, 'jilinzhongguoxinjiaposhipinqu', 'J', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (635, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '蛟河市', '220281', 3, 'jiaoheshi', 'J', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (636, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '桦甸市', '220282', 3, 'huadianshi', 'H', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (637, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '舒兰市', '220283', 3, 'shulanshi', 'S', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (638, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '磐石市', '220284', 3, 'panshishi', 'P', 1, NULL, '2202');
INSERT INTO `st_system_area` VALUES (639, NULL, NULL, NULL, '2025-06-20 13:16:18.365133', '2025-06-20 13:16:18.365133', '四平市', '2203', 2, 'sipingshi', 'S', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (640, NULL, NULL, NULL, '2025-06-20 13:16:18.366133', '2025-06-20 13:16:18.366133', '铁西区', '220302', 3, 'tiexiqu', 'T', 1, NULL, '2203');
INSERT INTO `st_system_area` VALUES (641, NULL, NULL, NULL, '2025-06-20 13:16:18.366133', '2025-06-20 13:16:18.366133', '铁东区', '220303', 3, 'tiedongqu', 'T', 1, NULL, '2203');
INSERT INTO `st_system_area` VALUES (642, NULL, NULL, NULL, '2025-06-20 13:16:18.366133', '2025-06-20 13:16:18.366133', '梨树县', '220322', 3, 'lishuxian', 'L', 1, NULL, '2203');
INSERT INTO `st_system_area` VALUES (643, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '伊通满族自治县', '220323', 3, 'yitongmanzuzizhixian', 'Y', 1, NULL, '2203');
INSERT INTO `st_system_area` VALUES (644, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '双辽市', '220382', 3, 'shuangliaoshi', 'S', 1, NULL, '2203');
INSERT INTO `st_system_area` VALUES (645, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '辽源市', '2204', 2, 'liaoyuanshi', 'L', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (646, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '龙山区', '220402', 3, 'longshanqu', 'L', 1, NULL, '2204');
INSERT INTO `st_system_area` VALUES (647, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '西安区', '220403', 3, 'xianqu', 'X', 1, NULL, '2204');
INSERT INTO `st_system_area` VALUES (648, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '东丰县', '220421', 3, 'dongfengxian', 'D', 1, NULL, '2204');
INSERT INTO `st_system_area` VALUES (649, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '东辽县', '220422', 3, 'dongliaoxian', 'D', 1, NULL, '2204');
INSERT INTO `st_system_area` VALUES (650, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '通化市', '2205', 2, 'tonghuashi', 'T', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (651, NULL, NULL, NULL, '2025-06-20 13:16:18.366433', '2025-06-20 13:16:18.366433', '东昌区', '220502', 3, 'dongchangqu', 'D', 1, NULL, '2205');
INSERT INTO `st_system_area` VALUES (652, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '二道江区', '220503', 3, 'erdaojiangqu', 'E', 1, NULL, '2205');
INSERT INTO `st_system_area` VALUES (653, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '通化县', '220521', 3, 'tonghuaxian', 'T', 1, NULL, '2205');
INSERT INTO `st_system_area` VALUES (654, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '辉南县', '220523', 3, 'huinanxian', 'H', 1, NULL, '2205');
INSERT INTO `st_system_area` VALUES (655, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '柳河县', '220524', 3, 'liuhexian', 'L', 1, NULL, '2205');
INSERT INTO `st_system_area` VALUES (656, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '梅河口市', '220581', 3, 'meihekoushi', 'M', 1, NULL, '2205');
INSERT INTO `st_system_area` VALUES (657, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '集安市', '220582', 3, 'jianshi', 'J', 1, NULL, '2205');
INSERT INTO `st_system_area` VALUES (658, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '白山市', '2206', 2, 'baishanshi', 'B', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (659, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '浑江区', '220602', 3, 'hunjiangqu', 'H', 1, NULL, '2206');
INSERT INTO `st_system_area` VALUES (660, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '江源区', '220605', 3, 'jiangyuanqu', 'J', 1, NULL, '2206');
INSERT INTO `st_system_area` VALUES (661, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '抚松县', '220621', 3, 'fusongxian', 'F', 1, NULL, '2206');
INSERT INTO `st_system_area` VALUES (662, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '靖宇县', '220622', 3, 'jingyuxian', 'J', 1, NULL, '2206');
INSERT INTO `st_system_area` VALUES (663, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '长白朝鲜族自治县', '220623', 3, 'zhangbaichaoxianzuzizhixian', 'Z', 1, NULL, '2206');
INSERT INTO `st_system_area` VALUES (664, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '临江市', '220681', 3, 'linjiangshi', 'L', 1, NULL, '2206');
INSERT INTO `st_system_area` VALUES (665, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '松原市', '2207', 2, 'songyuanshi', 'S', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (666, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '宁江区', '220702', 3, 'ningjiangqu', 'N', 1, NULL, '2207');
INSERT INTO `st_system_area` VALUES (667, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '前郭尔罗斯蒙古族自治县', '220721', 3, 'qianguoerluosimengguzuzizhixian', 'Q', 1, NULL, '2207');
INSERT INTO `st_system_area` VALUES (668, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '长岭县', '220722', 3, 'zhanglingxian', 'Z', 1, NULL, '2207');
INSERT INTO `st_system_area` VALUES (669, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '乾安县', '220723', 3, 'qiananxian', 'Q', 1, NULL, '2207');
INSERT INTO `st_system_area` VALUES (670, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '吉林松原经济开发区', '220771', 3, 'jilinsongyuanjingjikaifaqu', 'J', 1, NULL, '2207');
INSERT INTO `st_system_area` VALUES (671, NULL, NULL, NULL, '2025-06-20 13:16:18.367131', '2025-06-20 13:16:18.367131', '扶余市', '220781', 3, 'fuyushi', 'F', 1, NULL, '2207');
INSERT INTO `st_system_area` VALUES (672, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '白城市', '2208', 2, 'baichengshi', 'B', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (673, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '洮北区', '220802', 3, 'taobeiqu', 'T', 1, NULL, '2208');
INSERT INTO `st_system_area` VALUES (674, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '镇赉县', '220821', 3, 'zhenlaixian', 'Z', 1, NULL, '2208');
INSERT INTO `st_system_area` VALUES (675, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '通榆县', '220822', 3, 'tongyuxian', 'T', 1, NULL, '2208');
INSERT INTO `st_system_area` VALUES (676, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '吉林白城经济开发区', '220871', 3, 'jilinbaichengjingjikaifaqu', 'J', 1, NULL, '2208');
INSERT INTO `st_system_area` VALUES (677, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '洮南市', '220881', 3, 'taonanshi', 'T', 1, NULL, '2208');
INSERT INTO `st_system_area` VALUES (678, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '大安市', '220882', 3, 'daanshi', 'D', 1, NULL, '2208');
INSERT INTO `st_system_area` VALUES (679, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '延边朝鲜族自治州', '2224', 2, 'yanbianchaoxianzuzizhizhou', 'Y', 1, NULL, '22');
INSERT INTO `st_system_area` VALUES (680, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '延吉市', '222401', 3, 'yanjishi', 'Y', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (681, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '图们市', '222402', 3, 'tumenshi', 'T', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (682, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '敦化市', '222403', 3, 'dunhuashi', 'D', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (683, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '珲春市', '222404', 3, 'huichunshi', 'H', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (684, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '龙井市', '222405', 3, 'longjingshi', 'L', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (685, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '和龙市', '222406', 3, 'helongshi', 'H', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (686, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '汪清县', '222424', 3, 'wangqingxian', 'W', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (687, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '安图县', '222426', 3, 'antuxian', 'A', 1, NULL, '2224');
INSERT INTO `st_system_area` VALUES (688, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '黑龙江省', '23', 1, 'heilongjiangsheng', 'H', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (689, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '哈尔滨市', '2301', 2, 'haerbinshi', 'H', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (690, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '道里区', '230102', 3, 'daoliqu', 'D', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (691, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '南岗区', '230103', 3, 'nangangqu', 'N', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (692, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '道外区', '230104', 3, 'daowaiqu', 'D', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (693, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '平房区', '230108', 3, 'pingfangqu', 'P', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (694, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '松北区', '230109', 3, 'songbeiqu', 'S', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (695, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '香坊区', '230110', 3, 'xiangfangqu', 'X', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (696, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '呼兰区', '230111', 3, 'hulanqu', 'H', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (697, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '阿城区', '230112', 3, 'achengqu', 'A', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (698, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '双城区', '230113', 3, 'shuangchengqu', 'S', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (699, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '依兰县', '230123', 3, 'yilanxian', 'Y', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (700, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '方正县', '230124', 3, 'fangzhengxian', 'F', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (701, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '宾县', '230125', 3, 'binxian', 'B', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (702, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '巴彦县', '230126', 3, 'bayanxian', 'B', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (703, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '木兰县', '230127', 3, 'mulanxian', 'M', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (704, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '通河县', '230128', 3, 'tonghexian', 'T', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (705, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '延寿县', '230129', 3, 'yanshouxian', 'Y', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (706, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '尚志市', '230183', 3, 'shangzhishi', 'S', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (707, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '五常市', '230184', 3, 'wuchangshi', 'W', 1, NULL, '2301');
INSERT INTO `st_system_area` VALUES (708, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '齐齐哈尔市', '2302', 2, 'qiqihaershi', 'Q', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (709, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '龙沙区', '230202', 3, 'longshaqu', 'L', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (710, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '建华区', '230203', 3, 'jianhuaqu', 'J', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (711, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '铁锋区', '230204', 3, 'tiefengqu', 'T', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (712, NULL, NULL, NULL, '2025-06-20 13:16:18.368134', '2025-06-20 13:16:18.368134', '昂昂溪区', '230205', 3, 'angangxiqu', 'A', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (713, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '富拉尔基区', '230206', 3, 'fulaerjiqu', 'F', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (714, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '碾子山区', '230207', 3, 'nianzishanqu', 'N', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (715, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '梅里斯达斡尔族区', '230208', 3, 'meilisidawoerzuqu', 'M', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (716, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '龙江县', '230221', 3, 'longjiangxian', 'L', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (717, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '依安县', '230223', 3, 'yianxian', 'Y', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (718, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '泰来县', '230224', 3, 'tailaixian', 'T', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (719, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '甘南县', '230225', 3, 'gannanxian', 'G', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (720, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '富裕县', '230227', 3, 'fuyuxian', 'F', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (721, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '克山县', '230229', 3, 'keshanxian', 'K', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (722, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '克东县', '230230', 3, 'kedongxian', 'K', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (723, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '拜泉县', '230231', 3, 'baiquanxian', 'B', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (724, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '讷河市', '230281', 3, 'neheshi', 'N', 1, NULL, '2302');
INSERT INTO `st_system_area` VALUES (725, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '鸡西市', '2303', 2, 'jixishi', 'J', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (726, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '鸡冠区', '230302', 3, 'jiguanqu', 'J', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (727, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '恒山区', '230303', 3, 'hengshanqu', 'H', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (728, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '滴道区', '230304', 3, 'didaoqu', 'D', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (729, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '梨树区', '230305', 3, 'lishuqu', 'L', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (730, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '城子河区', '230306', 3, 'chengzihequ', 'C', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (731, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '麻山区', '230307', 3, 'mashanqu', 'M', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (732, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '鸡东县', '230321', 3, 'jidongxian', 'J', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (733, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '虎林市', '230381', 3, 'hulinshi', 'H', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (734, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '密山市', '230382', 3, 'mishanshi', 'M', 1, NULL, '2303');
INSERT INTO `st_system_area` VALUES (735, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '鹤岗市', '2304', 2, 'hegangshi', 'H', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (736, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '向阳区', '230402', 3, 'xiangyangqu', 'X', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (737, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '工农区', '230403', 3, 'gongnongqu', 'G', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (738, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '南山区', '230404', 3, 'nanshanqu', 'N', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (739, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '兴安区', '230405', 3, 'xinganqu', 'X', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (740, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '东山区', '230406', 3, 'dongshanqu', 'D', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (741, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '兴山区', '230407', 3, 'xingshanqu', 'X', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (742, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '萝北县', '230421', 3, 'luobeixian', 'L', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (743, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '绥滨县', '230422', 3, 'suibinxian', 'S', 1, NULL, '2304');
INSERT INTO `st_system_area` VALUES (744, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '双鸭山市', '2305', 2, 'shuangyashanshi', 'S', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (745, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '尖山区', '230502', 3, 'jianshanqu', 'J', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (746, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '岭东区', '230503', 3, 'lingdongqu', 'L', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (747, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '四方台区', '230505', 3, 'sifangtaiqu', 'S', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (748, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '宝山区', '230506', 3, 'baoshanqu', 'B', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (749, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '集贤县', '230521', 3, 'jixianxian', 'J', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (750, NULL, NULL, NULL, '2025-06-20 13:16:18.369131', '2025-06-20 13:16:18.369131', '友谊县', '230522', 3, 'youyixian', 'Y', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (751, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '宝清县', '230523', 3, 'baoqingxian', 'B', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (752, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '饶河县', '230524', 3, 'raohexian', 'R', 1, NULL, '2305');
INSERT INTO `st_system_area` VALUES (753, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '大庆市', '2306', 2, 'daqingshi', 'D', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (754, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '萨尔图区', '230602', 3, 'saertuqu', 'S', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (755, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '龙凤区', '230603', 3, 'longfengqu', 'L', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (756, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '让胡路区', '230604', 3, 'ranghuluqu', 'R', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (757, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '红岗区', '230605', 3, 'honggangqu', 'H', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (758, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '大同区', '230606', 3, 'datongqu', 'D', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (759, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '肇州县', '230621', 3, 'zhaozhouxian', 'Z', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (760, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '肇源县', '230622', 3, 'zhaoyuanxian', 'Z', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (761, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '林甸县', '230623', 3, 'lindianxian', 'L', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (762, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '杜尔伯特蒙古族自治县', '230624', 3, 'duerbotemengguzuzizhixian', 'D', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (763, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '大庆高新技术产业开发区', '230671', 3, 'daqinggaoxinjishuchanyekaifaqu', 'D', 1, NULL, '2306');
INSERT INTO `st_system_area` VALUES (764, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '伊春市', '2307', 2, 'yichunshi', 'Y', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (765, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '伊美区', '230717', 3, 'yimeiqu', 'Y', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (766, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '乌翠区', '230718', 3, 'wucuiqu', 'W', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (767, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '友好区', '230719', 3, 'youhaoqu', 'Y', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (768, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '嘉荫县', '230722', 3, 'jiayinxian', 'J', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (769, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '汤旺县', '230723', 3, 'tangwangxian', 'T', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (770, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '丰林县', '230724', 3, 'fenglinxian', 'F', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (771, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '大箐山县', '230725', 3, 'daqingshanxian', 'D', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (772, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '南岔县', '230726', 3, 'nanchaxian', 'N', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (773, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '金林区', '230751', 3, 'jinlinqu', 'J', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (774, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '铁力市', '230781', 3, 'tielishi', 'T', 1, NULL, '2307');
INSERT INTO `st_system_area` VALUES (775, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '佳木斯市', '2308', 2, 'jiamusishi', 'J', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (776, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '向阳区', '230803', 3, 'xiangyangqu', 'X', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (777, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '前进区', '230804', 3, 'qianjinqu', 'Q', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (778, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '东风区', '230805', 3, 'dongfengqu', 'D', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (779, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '郊区', '230811', 3, 'jiaoqu', 'J', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (780, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '桦南县', '230822', 3, 'huananxian', 'H', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (781, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '桦川县', '230826', 3, 'huachuanxian', 'H', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (782, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '汤原县', '230828', 3, 'tangyuanxian', 'T', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (783, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '同江市', '230881', 3, 'tongjiangshi', 'T', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (784, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '富锦市', '230882', 3, 'fujinshi', 'F', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (785, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '抚远市', '230883', 3, 'fuyuanshi', 'F', 1, NULL, '2308');
INSERT INTO `st_system_area` VALUES (786, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '七台河市', '2309', 2, 'qitaiheshi', 'Q', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (787, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '新兴区', '230902', 3, 'xinxingqu', 'X', 1, NULL, '2309');
INSERT INTO `st_system_area` VALUES (788, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '桃山区', '230903', 3, 'taoshanqu', 'T', 1, NULL, '2309');
INSERT INTO `st_system_area` VALUES (789, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '茄子河区', '230904', 3, 'qiezihequ', 'Q', 1, NULL, '2309');
INSERT INTO `st_system_area` VALUES (790, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '勃利县', '230921', 3, 'bolixian', 'B', 1, NULL, '2309');
INSERT INTO `st_system_area` VALUES (791, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '牡丹江市', '2310', 2, 'mudanjiangshi', 'M', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (792, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '东安区', '231002', 3, 'donganqu', 'D', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (793, NULL, NULL, NULL, '2025-06-20 13:16:18.370132', '2025-06-20 13:16:18.370132', '阳明区', '231003', 3, 'yangmingqu', 'Y', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (794, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '爱民区', '231004', 3, 'aiminqu', 'A', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (795, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '西安区', '231005', 3, 'xianqu', 'X', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (796, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '林口县', '231025', 3, 'linkouxian', 'L', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (797, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '牡丹江经济技术开发区', '231071', 3, 'mudanjiangjingjijishukaifaqu', 'M', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (798, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '绥芬河市', '231081', 3, 'suifenheshi', 'S', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (799, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '海林市', '231083', 3, 'hailinshi', 'H', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (800, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '宁安市', '231084', 3, 'ninganshi', 'N', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (801, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '穆棱市', '231085', 3, 'mulengshi', 'M', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (802, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '东宁市', '231086', 3, 'dongningshi', 'D', 1, NULL, '2310');
INSERT INTO `st_system_area` VALUES (803, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '黑河市', '2311', 2, 'heiheshi', 'H', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (804, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '爱辉区', '231102', 3, 'aihuiqu', 'A', 1, NULL, '2311');
INSERT INTO `st_system_area` VALUES (805, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '逊克县', '231123', 3, 'xunkexian', 'X', 1, NULL, '2311');
INSERT INTO `st_system_area` VALUES (806, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '孙吴县', '231124', 3, 'sunwuxian', 'S', 1, NULL, '2311');
INSERT INTO `st_system_area` VALUES (807, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '北安市', '231181', 3, 'beianshi', 'B', 1, NULL, '2311');
INSERT INTO `st_system_area` VALUES (808, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '五大连池市', '231182', 3, 'wudalianchishi', 'W', 1, NULL, '2311');
INSERT INTO `st_system_area` VALUES (809, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '嫩江市', '231183', 3, 'nenjiangshi', 'N', 1, NULL, '2311');
INSERT INTO `st_system_area` VALUES (810, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '绥化市', '2312', 2, 'suihuashi', 'S', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (811, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '北林区', '231202', 3, 'beilinqu', 'B', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (812, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '望奎县', '231221', 3, 'wangkuixian', 'W', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (813, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '兰西县', '231222', 3, 'lanxixian', 'L', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (814, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '青冈县', '231223', 3, 'qinggangxian', 'Q', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (815, NULL, NULL, NULL, '2025-06-20 13:16:18.371130', '2025-06-20 13:16:18.371130', '庆安县', '231224', 3, 'qinganxian', 'Q', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (816, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '明水县', '231225', 3, 'mingshuixian', 'M', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (817, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '绥棱县', '231226', 3, 'suilengxian', 'S', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (818, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '安达市', '231281', 3, 'andashi', 'A', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (819, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '肇东市', '231282', 3, 'zhaodongshi', 'Z', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (820, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '海伦市', '231283', 3, 'hailunshi', 'H', 1, NULL, '2312');
INSERT INTO `st_system_area` VALUES (821, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '大兴安岭地区', '2327', 2, 'daxinganlingdiqu', 'D', 1, NULL, '23');
INSERT INTO `st_system_area` VALUES (822, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '漠河市', '232701', 3, 'moheshi', 'M', 1, NULL, '2327');
INSERT INTO `st_system_area` VALUES (823, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '呼玛县', '232721', 3, 'humaxian', 'H', 1, NULL, '2327');
INSERT INTO `st_system_area` VALUES (824, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '塔河县', '232722', 3, 'tahexian', 'T', 1, NULL, '2327');
INSERT INTO `st_system_area` VALUES (825, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '加格达奇区', '232761', 3, 'jiagedaqiqu', 'J', 1, NULL, '2327');
INSERT INTO `st_system_area` VALUES (826, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '松岭区', '232762', 3, 'songlingqu', 'S', 1, NULL, '2327');
INSERT INTO `st_system_area` VALUES (827, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '新林区', '232763', 3, 'xinlinqu', 'X', 1, NULL, '2327');
INSERT INTO `st_system_area` VALUES (828, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '呼中区', '232764', 3, 'huzhongqu', 'H', 1, NULL, '2327');
INSERT INTO `st_system_area` VALUES (829, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '上海市', '31', 1, 'shanghaishi', 'S', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (830, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '市辖区', '3101', 2, 'shixiaqu', 'S', 1, NULL, '31');
INSERT INTO `st_system_area` VALUES (831, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '黄浦区', '310101', 3, 'huangpuqu', 'H', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (832, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '徐汇区', '310104', 3, 'xuhuiqu', 'X', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (833, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '长宁区', '310105', 3, 'zhangningqu', 'Z', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (834, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '静安区', '310106', 3, 'jinganqu', 'J', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (835, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '普陀区', '310107', 3, 'putuoqu', 'P', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (836, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '虹口区', '310109', 3, 'hongkouqu', 'H', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (837, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '杨浦区', '310110', 3, 'yangpuqu', 'Y', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (838, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.372128', '闵行区', '310112', 3, 'minxingqu', 'M', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (839, NULL, NULL, NULL, '2025-06-20 13:16:18.372128', '2025-06-20 13:16:18.373130', '宝山区', '310113', 3, 'baoshanqu', 'B', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (840, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '嘉定区', '310114', 3, 'jiadingqu', 'J', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (841, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '浦东新区', '310115', 3, 'pudongxinqu', 'P', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (842, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '金山区', '310116', 3, 'jinshanqu', 'J', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (843, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '松江区', '310117', 3, 'songjiangqu', 'S', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (844, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '青浦区', '310118', 3, 'qingpuqu', 'Q', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (845, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '奉贤区', '310120', 3, 'fengxianqu', 'F', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (846, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '崇明区', '310151', 3, 'chongmingqu', 'C', 1, NULL, '3101');
INSERT INTO `st_system_area` VALUES (847, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '江苏省', '32', 1, 'jiangsusheng', 'J', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (848, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '南京市', '3201', 2, 'nanjingshi', 'N', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (849, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '玄武区', '320102', 3, 'xuanwuqu', 'X', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (850, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '秦淮区', '320104', 3, 'qinhuaiqu', 'Q', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (851, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '建邺区', '320105', 3, 'jianyequ', 'J', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (852, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '鼓楼区', '320106', 3, 'gulouqu', 'G', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (853, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '浦口区', '320111', 3, 'pukouqu', 'P', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (854, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '栖霞区', '320113', 3, 'qixiaqu', 'Q', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (855, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '雨花台区', '320114', 3, 'yuhuataiqu', 'Y', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (856, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '江宁区', '320115', 3, 'jiangningqu', 'J', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (857, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '六合区', '320116', 3, 'liuhequ', 'L', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (858, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '溧水区', '320117', 3, 'lishuiqu', 'L', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (859, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '高淳区', '320118', 3, 'gaochunqu', 'G', 1, NULL, '3201');
INSERT INTO `st_system_area` VALUES (860, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '无锡市', '3202', 2, 'wuxishi', 'W', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (861, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '锡山区', '320205', 3, 'xishanqu', 'X', 1, NULL, '3202');
INSERT INTO `st_system_area` VALUES (862, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '惠山区', '320206', 3, 'huishanqu', 'H', 1, NULL, '3202');
INSERT INTO `st_system_area` VALUES (863, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '滨湖区', '320211', 3, 'binhuqu', 'B', 1, NULL, '3202');
INSERT INTO `st_system_area` VALUES (864, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '梁溪区', '320213', 3, 'liangxiqu', 'L', 1, NULL, '3202');
INSERT INTO `st_system_area` VALUES (865, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '新吴区', '320214', 3, 'xinwuqu', 'X', 1, NULL, '3202');
INSERT INTO `st_system_area` VALUES (866, NULL, NULL, NULL, '2025-06-20 13:16:18.373130', '2025-06-20 13:16:18.373130', '江阴市', '320281', 3, 'jiangyinshi', 'J', 1, NULL, '3202');
INSERT INTO `st_system_area` VALUES (867, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '宜兴市', '320282', 3, 'yixingshi', 'Y', 1, NULL, '3202');
INSERT INTO `st_system_area` VALUES (868, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '徐州市', '3203', 2, 'xuzhoushi', 'X', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (869, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '鼓楼区', '320302', 3, 'gulouqu', 'G', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (870, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '云龙区', '320303', 3, 'yunlongqu', 'Y', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (871, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '贾汪区', '320305', 3, 'jiawangqu', 'J', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (872, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '泉山区', '320311', 3, 'quanshanqu', 'Q', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (873, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '铜山区', '320312', 3, 'tongshanqu', 'T', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (874, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '丰县', '320321', 3, 'fengxian', 'F', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (875, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '沛县', '320322', 3, 'peixian', 'P', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (876, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '睢宁县', '320324', 3, 'suiningxian', 'S', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (877, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '徐州经济技术开发区', '320371', 3, 'xuzhoujingjijishukaifaqu', 'X', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (878, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '新沂市', '320381', 3, 'xinyishi', 'X', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (879, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '邳州市', '320382', 3, 'pizhoushi', 'P', 1, NULL, '3203');
INSERT INTO `st_system_area` VALUES (880, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '常州市', '3204', 2, 'changzhoushi', 'C', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (881, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '天宁区', '320402', 3, 'tianningqu', 'T', 1, NULL, '3204');
INSERT INTO `st_system_area` VALUES (882, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '钟楼区', '320404', 3, 'zhonglouqu', 'Z', 1, NULL, '3204');
INSERT INTO `st_system_area` VALUES (883, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '新北区', '320411', 3, 'xinbeiqu', 'X', 1, NULL, '3204');
INSERT INTO `st_system_area` VALUES (884, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '武进区', '320412', 3, 'wujinqu', 'W', 1, NULL, '3204');
INSERT INTO `st_system_area` VALUES (885, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '金坛区', '320413', 3, 'jintanqu', 'J', 1, NULL, '3204');
INSERT INTO `st_system_area` VALUES (886, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '溧阳市', '320481', 3, 'liyangshi', 'L', 1, NULL, '3204');
INSERT INTO `st_system_area` VALUES (887, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '苏州市', '3205', 2, 'suzhoushi', 'S', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (888, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '虎丘区', '320505', 3, 'huqiuqu', 'H', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (889, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '吴中区', '320506', 3, 'wuzhongqu', 'W', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (890, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '相城区', '320507', 3, 'xiangchengqu', 'X', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (891, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '姑苏区', '320508', 3, 'gusuqu', 'G', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (892, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '吴江区', '320509', 3, 'wujiangqu', 'W', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (893, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '苏州工业园区', '320571', 3, 'suzhougongyeyuanqu', 'S', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (894, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '常熟市', '320581', 3, 'changshushi', 'C', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (895, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '张家港市', '320582', 3, 'zhangjiagangshi', 'Z', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (896, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '昆山市', '320583', 3, 'kunshanshi', 'K', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (897, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '太仓市', '320585', 3, 'taicangshi', 'T', 1, NULL, '3205');
INSERT INTO `st_system_area` VALUES (898, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '南通市', '3206', 2, 'nantongshi', 'N', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (899, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '崇川区', '320602', 3, 'chongchuanqu', 'C', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (900, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '港闸区', '320611', 3, 'gangzhaqu', 'G', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (901, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '通州区', '320612', 3, 'tongzhouqu', 'T', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (902, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '如东县', '320623', 3, 'rudongxian', 'R', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (903, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '南通经济技术开发区', '320671', 3, 'nantongjingjijishukaifaqu', 'N', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (904, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '启东市', '320681', 3, 'qidongshi', 'Q', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (905, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '如皋市', '320682', 3, 'rugaoshi', 'R', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (906, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '海门市', '320684', 3, 'haimenshi', 'H', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (907, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '海安市', '320685', 3, 'haianshi', 'H', 1, NULL, '3206');
INSERT INTO `st_system_area` VALUES (908, NULL, NULL, NULL, '2025-06-20 13:16:18.374128', '2025-06-20 13:16:18.374128', '连云港市', '3207', 2, 'lianyungangshi', 'L', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (909, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '连云区', '320703', 3, 'lianyunqu', 'L', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (910, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '海州区', '320706', 3, 'haizhouqu', 'H', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (911, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '赣榆区', '320707', 3, 'ganyuqu', 'G', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (912, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '东海县', '320722', 3, 'donghaixian', 'D', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (913, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '灌云县', '320723', 3, 'guanyunxian', 'G', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (914, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '灌南县', '320724', 3, 'guannanxian', 'G', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (915, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '连云港经济技术开发区', '320771', 3, 'lianyungangjingjijishukaifaqu', 'L', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (916, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '连云港高新技术产业开发区', '320772', 3, 'lianyunganggaoxinjishuchanyekaifaqu', 'L', 1, NULL, '3207');
INSERT INTO `st_system_area` VALUES (917, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '淮安市', '3208', 2, 'huaianshi', 'H', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (918, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '淮安区', '320803', 3, 'huaianqu', 'H', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (919, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '淮阴区', '320804', 3, 'huaiyinqu', 'H', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (920, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '清江浦区', '320812', 3, 'qingjiangpuqu', 'Q', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (921, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '洪泽区', '320813', 3, 'hongzequ', 'H', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (922, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '涟水县', '320826', 3, 'lianshuixian', 'L', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (923, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '盱眙县', '320830', 3, 'xuyixian', 'X', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (924, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '金湖县', '320831', 3, 'jinhuxian', 'J', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (925, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '淮安经济技术开发区', '320871', 3, 'huaianjingjijishukaifaqu', 'H', 1, NULL, '3208');
INSERT INTO `st_system_area` VALUES (926, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '盐城市', '3209', 2, 'yanchengshi', 'Y', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (927, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '亭湖区', '320902', 3, 'tinghuqu', 'T', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (928, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '盐都区', '320903', 3, 'yandouqu', 'Y', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (929, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '大丰区', '320904', 3, 'dafengqu', 'D', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (930, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '响水县', '320921', 3, 'xiangshuixian', 'X', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (931, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '滨海县', '320922', 3, 'binhaixian', 'B', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (932, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '阜宁县', '320923', 3, 'funingxian', 'F', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (933, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '射阳县', '320924', 3, 'sheyangxian', 'S', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (934, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '建湖县', '320925', 3, 'jianhuxian', 'J', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (935, NULL, NULL, NULL, '2025-06-20 13:16:18.375128', '2025-06-20 13:16:18.375128', '盐城经济技术开发区', '320971', 3, 'yanchengjingjijishukaifaqu', 'Y', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (936, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '东台市', '320981', 3, 'dongtaishi', 'D', 1, NULL, '3209');
INSERT INTO `st_system_area` VALUES (937, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '扬州市', '3210', 2, 'yangzhoushi', 'Y', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (938, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '广陵区', '321002', 3, 'guanglingqu', 'G', 1, NULL, '3210');
INSERT INTO `st_system_area` VALUES (939, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '邗江区', '321003', 3, 'hanjiangqu', 'H', 1, NULL, '3210');
INSERT INTO `st_system_area` VALUES (940, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '江都区', '321012', 3, 'jiangduqu', 'J', 1, NULL, '3210');
INSERT INTO `st_system_area` VALUES (941, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '宝应县', '321023', 3, 'baoyingxian', 'B', 1, NULL, '3210');
INSERT INTO `st_system_area` VALUES (942, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '扬州经济技术开发区', '321071', 3, 'yangzhoujingjijishukaifaqu', 'Y', 1, NULL, '3210');
INSERT INTO `st_system_area` VALUES (943, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '仪征市', '321081', 3, 'yizhengshi', 'Y', 1, NULL, '3210');
INSERT INTO `st_system_area` VALUES (944, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '高邮市', '321084', 3, 'gaoyoushi', 'G', 1, NULL, '3210');
INSERT INTO `st_system_area` VALUES (945, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '镇江市', '3211', 2, 'zhenjiangshi', 'Z', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (946, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '京口区', '321102', 3, 'jingkouqu', 'J', 1, NULL, '3211');
INSERT INTO `st_system_area` VALUES (947, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '润州区', '321111', 3, 'runzhouqu', 'R', 1, NULL, '3211');
INSERT INTO `st_system_area` VALUES (948, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '丹徒区', '321112', 3, 'dantuqu', 'D', 1, NULL, '3211');
INSERT INTO `st_system_area` VALUES (949, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '镇江新区', '321171', 3, 'zhenjiangxinqu', 'Z', 1, NULL, '3211');
INSERT INTO `st_system_area` VALUES (950, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '丹阳市', '321181', 3, 'danyangshi', 'D', 1, NULL, '3211');
INSERT INTO `st_system_area` VALUES (951, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '扬中市', '321182', 3, 'yangzhongshi', 'Y', 1, NULL, '3211');
INSERT INTO `st_system_area` VALUES (952, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '句容市', '321183', 3, 'jurongshi', 'J', 1, NULL, '3211');
INSERT INTO `st_system_area` VALUES (953, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '泰州市', '3212', 2, 'taizhoushi', 'T', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (954, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '海陵区', '321202', 3, 'hailingqu', 'H', 1, NULL, '3212');
INSERT INTO `st_system_area` VALUES (955, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '高港区', '321203', 3, 'gaogangqu', 'G', 1, NULL, '3212');
INSERT INTO `st_system_area` VALUES (956, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '姜堰区', '321204', 3, 'jiangyanqu', 'J', 1, NULL, '3212');
INSERT INTO `st_system_area` VALUES (957, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '泰州医药高新技术产业开发区', '321271', 3, 'taizhouyiyaogaoxinjishuchanyekaifaqu', 'T', 1, NULL, '3212');
INSERT INTO `st_system_area` VALUES (958, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '兴化市', '321281', 3, 'xinghuashi', 'X', 1, NULL, '3212');
INSERT INTO `st_system_area` VALUES (959, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '靖江市', '321282', 3, 'jingjiangshi', 'J', 1, NULL, '3212');
INSERT INTO `st_system_area` VALUES (960, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '泰兴市', '321283', 3, 'taixingshi', 'T', 1, NULL, '3212');
INSERT INTO `st_system_area` VALUES (961, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '宿迁市', '3213', 2, 'suqianshi', 'S', 1, NULL, '32');
INSERT INTO `st_system_area` VALUES (962, NULL, NULL, NULL, '2025-06-20 13:16:18.376127', '2025-06-20 13:16:18.376127', '宿城区', '321302', 3, 'suchengqu', 'S', 1, NULL, '3213');
INSERT INTO `st_system_area` VALUES (963, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '宿豫区', '321311', 3, 'suyuqu', 'S', 1, NULL, '3213');
INSERT INTO `st_system_area` VALUES (964, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '沭阳县', '321322', 3, 'shuyangxian', 'S', 1, NULL, '3213');
INSERT INTO `st_system_area` VALUES (965, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '泗阳县', '321323', 3, 'siyangxian', 'S', 1, NULL, '3213');
INSERT INTO `st_system_area` VALUES (966, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '泗洪县', '321324', 3, 'sihongxian', 'S', 1, NULL, '3213');
INSERT INTO `st_system_area` VALUES (967, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '宿迁经济技术开发区', '321371', 3, 'suqianjingjijishukaifaqu', 'S', 1, NULL, '3213');
INSERT INTO `st_system_area` VALUES (968, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '浙江省', '33', 1, 'zhejiangsheng', 'Z', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (969, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '杭州市', '3301', 2, 'hangzhoushi', 'H', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (970, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '上城区', '330102', 3, 'shangchengqu', 'S', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (971, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '下城区', '330103', 3, 'xiachengqu', 'X', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (972, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '江干区', '330104', 3, 'jiangganqu', 'J', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (973, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '拱墅区', '330105', 3, 'gongshuqu', 'G', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (974, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '西湖区', '330106', 3, 'xihuqu', 'X', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (975, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '滨江区', '330108', 3, 'binjiangqu', 'B', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (976, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '萧山区', '330109', 3, 'xiaoshanqu', 'X', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (977, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '余杭区', '330110', 3, 'yuhangqu', 'Y', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (978, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '富阳区', '330111', 3, 'fuyangqu', 'F', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (979, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '临安区', '330112', 3, 'linanqu', 'L', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (980, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '桐庐县', '330122', 3, 'tongluxian', 'T', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (981, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '淳安县', '330127', 3, 'chunanxian', 'C', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (982, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '建德市', '330182', 3, 'jiandeshi', 'J', 1, NULL, '3301');
INSERT INTO `st_system_area` VALUES (983, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '宁波市', '3302', 2, 'ningboshi', 'N', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (984, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '海曙区', '330203', 3, 'haishuqu', 'H', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (985, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '江北区', '330205', 3, 'jiangbeiqu', 'J', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (986, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '北仑区', '330206', 3, 'beilunqu', 'B', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (987, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '镇海区', '330211', 3, 'zhenhaiqu', 'Z', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (988, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '鄞州区', '330212', 3, 'yinzhouqu', 'Y', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (989, NULL, NULL, NULL, '2025-06-20 13:16:18.377127', '2025-06-20 13:16:18.377127', '奉化区', '330213', 3, 'fenghuaqu', 'F', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (990, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '象山县', '330225', 3, 'xiangshanxian', 'X', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (991, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '宁海县', '330226', 3, 'ninghaixian', 'N', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (992, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '余姚市', '330281', 3, 'yuyaoshi', 'Y', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (993, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '慈溪市', '330282', 3, 'cixishi', 'C', 1, NULL, '3302');
INSERT INTO `st_system_area` VALUES (994, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '温州市', '3303', 2, 'wenzhoushi', 'W', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (995, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '鹿城区', '330302', 3, 'luchengqu', 'L', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (996, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '龙湾区', '330303', 3, 'longwanqu', 'L', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (997, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '瓯海区', '330304', 3, 'ouhaiqu', 'O', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (998, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '洞头区', '330305', 3, 'dongtouqu', 'D', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (999, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '永嘉县', '330324', 3, 'yongjiaxian', 'Y', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1000, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '平阳县', '330326', 3, 'pingyangxian', 'P', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1001, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '苍南县', '330327', 3, 'cangnanxian', 'C', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1002, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '文成县', '330328', 3, 'wenchengxian', 'W', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1003, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '泰顺县', '330329', 3, 'taishunxian', 'T', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1004, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '温州经济技术开发区', '330371', 3, 'wenzhoujingjijishukaifaqu', 'W', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1005, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '瑞安市', '330381', 3, 'ruianshi', 'R', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1006, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '乐清市', '330382', 3, 'yueqingshi', 'Y', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1007, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '龙港市', '330383', 3, 'longgangshi', 'L', 1, NULL, '3303');
INSERT INTO `st_system_area` VALUES (1008, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '嘉兴市', '3304', 2, 'jiaxingshi', 'J', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1009, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '南湖区', '330402', 3, 'nanhuqu', 'N', 1, NULL, '3304');
INSERT INTO `st_system_area` VALUES (1010, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '秀洲区', '330411', 3, 'xiuzhouqu', 'X', 1, NULL, '3304');
INSERT INTO `st_system_area` VALUES (1011, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '嘉善县', '330421', 3, 'jiashanxian', 'J', 1, NULL, '3304');
INSERT INTO `st_system_area` VALUES (1012, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '海盐县', '330424', 3, 'haiyanxian', 'H', 1, NULL, '3304');
INSERT INTO `st_system_area` VALUES (1013, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '海宁市', '330481', 3, 'hainingshi', 'H', 1, NULL, '3304');
INSERT INTO `st_system_area` VALUES (1014, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '平湖市', '330482', 3, 'pinghushi', 'P', 1, NULL, '3304');
INSERT INTO `st_system_area` VALUES (1015, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '桐乡市', '330483', 3, 'tongxiangshi', 'T', 1, NULL, '3304');
INSERT INTO `st_system_area` VALUES (1016, NULL, NULL, NULL, '2025-06-20 13:16:18.378127', '2025-06-20 13:16:18.378127', '湖州市', '3305', 2, 'huzhoushi', 'H', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1017, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '吴兴区', '330502', 3, 'wuxingqu', 'W', 1, NULL, '3305');
INSERT INTO `st_system_area` VALUES (1018, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '南浔区', '330503', 3, 'nanxunqu', 'N', 1, NULL, '3305');
INSERT INTO `st_system_area` VALUES (1019, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '德清县', '330521', 3, 'deqingxian', 'D', 1, NULL, '3305');
INSERT INTO `st_system_area` VALUES (1020, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '长兴县', '330522', 3, 'changxingxian', 'C', 1, NULL, '3305');
INSERT INTO `st_system_area` VALUES (1021, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '安吉县', '330523', 3, 'anjixian', 'A', 1, NULL, '3305');
INSERT INTO `st_system_area` VALUES (1022, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '绍兴市', '3306', 2, 'shaoxingshi', 'S', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1023, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '越城区', '330602', 3, 'yuechengqu', 'Y', 1, NULL, '3306');
INSERT INTO `st_system_area` VALUES (1024, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '柯桥区', '330603', 3, 'keqiaoqu', 'K', 1, NULL, '3306');
INSERT INTO `st_system_area` VALUES (1025, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '上虞区', '330604', 3, 'shangyuqu', 'S', 1, NULL, '3306');
INSERT INTO `st_system_area` VALUES (1026, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '新昌县', '330624', 3, 'xinchangxian', 'X', 1, NULL, '3306');
INSERT INTO `st_system_area` VALUES (1027, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '诸暨市', '330681', 3, 'zhujishi', 'Z', 1, NULL, '3306');
INSERT INTO `st_system_area` VALUES (1028, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '嵊州市', '330683', 3, 'shengzhoushi', 'S', 1, NULL, '3306');
INSERT INTO `st_system_area` VALUES (1029, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '金华市', '3307', 2, 'jinhuashi', 'J', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1030, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '婺城区', '330702', 3, 'wuchengqu', 'W', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1031, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '金东区', '330703', 3, 'jindongqu', 'J', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1032, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '武义县', '330723', 3, 'wuyixian', 'W', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1033, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '浦江县', '330726', 3, 'pujiangxian', 'P', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1034, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '磐安县', '330727', 3, 'pananxian', 'P', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1035, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '兰溪市', '330781', 3, 'lanxishi', 'L', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1036, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '义乌市', '330782', 3, 'yiwushi', 'Y', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1037, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '东阳市', '330783', 3, 'dongyangshi', 'D', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1038, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '永康市', '330784', 3, 'yongkangshi', 'Y', 1, NULL, '3307');
INSERT INTO `st_system_area` VALUES (1039, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '衢州市', '3308', 2, 'quzhoushi', 'Q', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1040, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '柯城区', '330802', 3, 'kechengqu', 'K', 1, NULL, '3308');
INSERT INTO `st_system_area` VALUES (1041, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '衢江区', '330803', 3, 'qujiangqu', 'Q', 1, NULL, '3308');
INSERT INTO `st_system_area` VALUES (1042, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '常山县', '330822', 3, 'changshanxian', 'C', 1, NULL, '3308');
INSERT INTO `st_system_area` VALUES (1043, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '开化县', '330824', 3, 'kaihuaxian', 'K', 1, NULL, '3308');
INSERT INTO `st_system_area` VALUES (1044, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '龙游县', '330825', 3, 'longyouxian', 'L', 1, NULL, '3308');
INSERT INTO `st_system_area` VALUES (1045, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '江山市', '330881', 3, 'jiangshanshi', 'J', 1, NULL, '3308');
INSERT INTO `st_system_area` VALUES (1046, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '舟山市', '3309', 2, 'zhoushanshi', 'Z', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1047, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '定海区', '330902', 3, 'dinghaiqu', 'D', 1, NULL, '3309');
INSERT INTO `st_system_area` VALUES (1048, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '普陀区', '330903', 3, 'putuoqu', 'P', 1, NULL, '3309');
INSERT INTO `st_system_area` VALUES (1049, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '岱山县', '330921', 3, 'daishanxian', 'D', 1, NULL, '3309');
INSERT INTO `st_system_area` VALUES (1050, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '嵊泗县', '330922', 3, 'shengsixian', 'S', 1, NULL, '3309');
INSERT INTO `st_system_area` VALUES (1051, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '台州市', '3310', 2, 'taizhoushi', 'T', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1052, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '椒江区', '331002', 3, 'jiaojiangqu', 'J', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1053, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '黄岩区', '331003', 3, 'huangyanqu', 'H', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1054, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '路桥区', '331004', 3, 'luqiaoqu', 'L', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1055, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '三门县', '331022', 3, 'sanmenxian', 'S', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1056, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '天台县', '331023', 3, 'tiantaixian', 'T', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1057, NULL, NULL, NULL, '2025-06-20 13:16:18.379126', '2025-06-20 13:16:18.379126', '仙居县', '331024', 3, 'xianjuxian', 'X', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1058, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '温岭市', '331081', 3, 'wenlingshi', 'W', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1059, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '临海市', '331082', 3, 'linhaishi', 'L', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1060, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '玉环市', '331083', 3, 'yuhuanshi', 'Y', 1, NULL, '3310');
INSERT INTO `st_system_area` VALUES (1061, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '丽水市', '3311', 2, 'lishuishi', 'L', 1, NULL, '33');
INSERT INTO `st_system_area` VALUES (1062, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '莲都区', '331102', 3, 'liandouqu', 'L', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1063, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '青田县', '331121', 3, 'qingtianxian', 'Q', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1064, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '缙云县', '331122', 3, 'jinyunxian', 'J', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1065, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '遂昌县', '331123', 3, 'suichangxian', 'S', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1066, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '松阳县', '331124', 3, 'songyangxian', 'S', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1067, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '云和县', '331125', 3, 'yunhexian', 'Y', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1068, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '庆元县', '331126', 3, 'qingyuanxian', 'Q', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1069, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '景宁畲族自治县', '331127', 3, 'jingningshezuzizhixian', 'J', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1070, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '龙泉市', '331181', 3, 'longquanshi', 'L', 1, NULL, '3311');
INSERT INTO `st_system_area` VALUES (1071, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '安徽省', '34', 1, 'anhuisheng', 'A', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (1072, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '合肥市', '3401', 2, 'hefeishi', 'H', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1073, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '瑶海区', '340102', 3, 'yaohaiqu', 'Y', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1074, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '庐阳区', '340103', 3, 'luyangqu', 'L', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1075, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '蜀山区', '340104', 3, 'shushanqu', 'S', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1076, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '包河区', '340111', 3, 'baohequ', 'B', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1077, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '长丰县', '340121', 3, 'zhangfengxian', 'Z', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1078, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '肥东县', '340122', 3, 'feidongxian', 'F', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1079, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '肥西县', '340123', 3, 'feixixian', 'F', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1080, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '庐江县', '340124', 3, 'lujiangxian', 'L', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1081, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '合肥高新技术产业开发区', '340171', 3, 'hefeigaoxinjishuchanyekaifaqu', 'H', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1082, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '合肥经济技术开发区', '340172', 3, 'hefeijingjijishukaifaqu', 'H', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1083, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '合肥新站高新技术产业开发区', '340173', 3, 'hefeixinzhangaoxinjishuchanyekaifaqu', 'H', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1084, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.380125', '巢湖市', '340181', 3, 'chaohushi', 'C', 1, NULL, '3401');
INSERT INTO `st_system_area` VALUES (1085, NULL, NULL, NULL, '2025-06-20 13:16:18.380125', '2025-06-20 13:16:18.381124', '芜湖市', '3402', 2, 'wuhushi', 'W', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1086, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '镜湖区', '340202', 3, 'jinghuqu', 'J', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1087, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '弋江区', '340203', 3, 'yijiangqu', 'Y', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1088, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '鸠江区', '340207', 3, 'jiujiangqu', 'J', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1089, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '三山区', '340208', 3, 'sanshanqu', 'S', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1090, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '芜湖县', '340221', 3, 'wuhuxian', 'W', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1091, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '繁昌县', '340222', 3, 'fanchangxian', 'F', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1092, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '南陵县', '340223', 3, 'nanlingxian', 'N', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1093, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '芜湖经济技术开发区', '340271', 3, 'wuhujingjijishukaifaqu', 'W', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1094, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '安徽芜湖长江大桥经济开发区', '340272', 3, 'anhuiwuhuchangjiangdaqiaojingjikaifaqu', 'A', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1095, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '无为市', '340281', 3, 'wuweishi', 'W', 1, NULL, '3402');
INSERT INTO `st_system_area` VALUES (1096, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '蚌埠市', '3403', 2, 'bengbushi', 'B', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1097, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '龙子湖区', '340302', 3, 'longzihuqu', 'L', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1098, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '蚌山区', '340303', 3, 'bangshanqu', 'B', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1099, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '禹会区', '340304', 3, 'yuhuiqu', 'Y', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1100, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '淮上区', '340311', 3, 'huaishangqu', 'H', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1101, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '怀远县', '340321', 3, 'huaiyuanxian', 'H', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1102, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '五河县', '340322', 3, 'wuhexian', 'W', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1103, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '固镇县', '340323', 3, 'guzhenxian', 'G', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1104, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '蚌埠市高新技术开发区', '340371', 3, 'bengbushigaoxinjishukaifaqu', 'B', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1105, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '蚌埠市经济开发区', '340372', 3, 'bengbushijingjikaifaqu', 'B', 1, NULL, '3403');
INSERT INTO `st_system_area` VALUES (1106, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '淮南市', '3404', 2, 'huainanshi', 'H', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1107, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '大通区', '340402', 3, 'datongqu', 'D', 1, NULL, '3404');
INSERT INTO `st_system_area` VALUES (1108, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '田家庵区', '340403', 3, 'tianjiaanqu', 'T', 1, NULL, '3404');
INSERT INTO `st_system_area` VALUES (1109, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '谢家集区', '340404', 3, 'xiejiajiqu', 'X', 1, NULL, '3404');
INSERT INTO `st_system_area` VALUES (1110, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '八公山区', '340405', 3, 'bagongshanqu', 'B', 1, NULL, '3404');
INSERT INTO `st_system_area` VALUES (1111, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '潘集区', '340406', 3, 'panjiqu', 'P', 1, NULL, '3404');
INSERT INTO `st_system_area` VALUES (1112, NULL, NULL, NULL, '2025-06-20 13:16:18.381124', '2025-06-20 13:16:18.381124', '凤台县', '340421', 3, 'fengtaixian', 'F', 1, NULL, '3404');
INSERT INTO `st_system_area` VALUES (1113, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '寿县', '340422', 3, 'shouxian', 'S', 1, NULL, '3404');
INSERT INTO `st_system_area` VALUES (1114, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '马鞍山市', '3405', 2, 'maanshanshi', 'M', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1115, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '花山区', '340503', 3, 'huashanqu', 'H', 1, NULL, '3405');
INSERT INTO `st_system_area` VALUES (1116, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '雨山区', '340504', 3, 'yushanqu', 'Y', 1, NULL, '3405');
INSERT INTO `st_system_area` VALUES (1117, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '博望区', '340506', 3, 'bowangqu', 'B', 1, NULL, '3405');
INSERT INTO `st_system_area` VALUES (1118, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '当涂县', '340521', 3, 'dangtuxian', 'D', 1, NULL, '3405');
INSERT INTO `st_system_area` VALUES (1119, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '含山县', '340522', 3, 'hanshanxian', 'H', 1, NULL, '3405');
INSERT INTO `st_system_area` VALUES (1120, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '和县', '340523', 3, 'hexian', 'H', 1, NULL, '3405');
INSERT INTO `st_system_area` VALUES (1121, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '淮北市', '3406', 2, 'huaibeishi', 'H', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1122, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '杜集区', '340602', 3, 'dujiqu', 'D', 1, NULL, '3406');
INSERT INTO `st_system_area` VALUES (1123, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '相山区', '340603', 3, 'xiangshanqu', 'X', 1, NULL, '3406');
INSERT INTO `st_system_area` VALUES (1124, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '烈山区', '340604', 3, 'lieshanqu', 'L', 1, NULL, '3406');
INSERT INTO `st_system_area` VALUES (1125, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '濉溪县', '340621', 3, 'suixixian', 'S', 1, NULL, '3406');
INSERT INTO `st_system_area` VALUES (1126, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '铜陵市', '3407', 2, 'tonglingshi', 'T', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1127, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '铜官区', '340705', 3, 'tongguanqu', 'T', 1, NULL, '3407');
INSERT INTO `st_system_area` VALUES (1128, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '义安区', '340706', 3, 'yianqu', 'Y', 1, NULL, '3407');
INSERT INTO `st_system_area` VALUES (1129, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '郊区', '340711', 3, 'jiaoqu', 'J', 1, NULL, '3407');
INSERT INTO `st_system_area` VALUES (1130, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '枞阳县', '340722', 3, 'zongyangxian', 'Z', 1, NULL, '3407');
INSERT INTO `st_system_area` VALUES (1131, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '安庆市', '3408', 2, 'anqingshi', 'A', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1132, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '迎江区', '340802', 3, 'yingjiangqu', 'Y', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1133, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '大观区', '340803', 3, 'daguanqu', 'D', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1134, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '宜秀区', '340811', 3, 'yixiuqu', 'Y', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1135, NULL, NULL, NULL, '2025-06-20 13:16:18.382124', '2025-06-20 13:16:18.382124', '怀宁县', '340822', 3, 'huainingxian', 'H', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1136, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '太湖县', '340825', 3, 'taihuxian', 'T', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1137, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '宿松县', '340826', 3, 'susongxian', 'S', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1138, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '望江县', '340827', 3, 'wangjiangxian', 'W', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1139, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '岳西县', '340828', 3, 'yuexixian', 'Y', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1140, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '安徽安庆经济开发区', '340871', 3, 'anhuianqingjingjikaifaqu', 'A', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1141, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '桐城市', '340881', 3, 'tongchengshi', 'T', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1142, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '潜山市', '340882', 3, 'qianshanshi', 'Q', 1, NULL, '3408');
INSERT INTO `st_system_area` VALUES (1143, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '黄山市', '3410', 2, 'huangshanshi', 'H', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1144, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '屯溪区', '341002', 3, 'tunxiqu', 'T', 1, NULL, '3410');
INSERT INTO `st_system_area` VALUES (1145, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '黄山区', '341003', 3, 'huangshanqu', 'H', 1, NULL, '3410');
INSERT INTO `st_system_area` VALUES (1146, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '徽州区', '341004', 3, 'huizhouqu', 'H', 1, NULL, '3410');
INSERT INTO `st_system_area` VALUES (1147, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '歙县', '341021', 3, 'shexian', 'S', 1, NULL, '3410');
INSERT INTO `st_system_area` VALUES (1148, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '休宁县', '341022', 3, 'xiuningxian', 'X', 1, NULL, '3410');
INSERT INTO `st_system_area` VALUES (1149, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '黟县', '341023', 3, 'yixian', 'Y', 1, NULL, '3410');
INSERT INTO `st_system_area` VALUES (1150, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '祁门县', '341024', 3, 'qimenxian', 'Q', 1, NULL, '3410');
INSERT INTO `st_system_area` VALUES (1151, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '滁州市', '3411', 2, 'chuzhoushi', 'C', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1152, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '琅琊区', '341102', 3, 'langyaqu', 'L', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1153, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '南谯区', '341103', 3, 'nanqiaoqu', 'N', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1154, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '来安县', '341122', 3, 'laianxian', 'L', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1155, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '全椒县', '341124', 3, 'quanjiaoxian', 'Q', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1156, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '定远县', '341125', 3, 'dingyuanxian', 'D', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1157, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '凤阳县', '341126', 3, 'fengyangxian', 'F', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1158, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '苏滁现代产业园', '341171', 3, 'suchuxiandaichanyeyuan', 'S', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1159, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '滁州经济技术开发区', '341172', 3, 'chuzhoujingjijishukaifaqu', 'C', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1160, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '天长市', '341181', 3, 'tianzhangshi', 'T', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1161, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '明光市', '341182', 3, 'mingguangshi', 'M', 1, NULL, '3411');
INSERT INTO `st_system_area` VALUES (1162, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '阜阳市', '3412', 2, 'fuyangshi', 'F', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1163, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '颍州区', '341202', 3, 'yingzhouqu', 'Y', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1164, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '颍东区', '341203', 3, 'yingdongqu', 'Y', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1165, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '颍泉区', '341204', 3, 'yingquanqu', 'Y', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1166, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '临泉县', '341221', 3, 'linquanxian', 'L', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1167, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '太和县', '341222', 3, 'taihexian', 'T', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1168, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '阜南县', '341225', 3, 'funanxian', 'F', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1169, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '颍上县', '341226', 3, 'yingshangxian', 'Y', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1170, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '阜阳合肥现代产业园区', '341271', 3, 'fuyanghefeixiandaichanyeyuanqu', 'F', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1171, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '阜阳经济技术开发区', '341272', 3, 'fuyangjingjijishukaifaqu', 'F', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1172, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '界首市', '341282', 3, 'jieshoushi', 'J', 1, NULL, '3412');
INSERT INTO `st_system_area` VALUES (1173, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '宿州市', '3413', 2, 'suzhoushi', 'S', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1174, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '埇桥区', '341302', 3, 'yongqiaoqu', 'Y', 1, NULL, '3413');
INSERT INTO `st_system_area` VALUES (1175, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '砀山县', '341321', 3, 'dangshanxian', 'D', 1, NULL, '3413');
INSERT INTO `st_system_area` VALUES (1176, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '萧县', '341322', 3, 'xiaoxian', 'X', 1, NULL, '3413');
INSERT INTO `st_system_area` VALUES (1177, NULL, NULL, NULL, '2025-06-20 13:16:18.383144', '2025-06-20 13:16:18.383144', '灵璧县', '341323', 3, 'lingbixian', 'L', 1, NULL, '3413');
INSERT INTO `st_system_area` VALUES (1178, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '泗县', '341324', 3, 'sixian', 'S', 1, NULL, '3413');
INSERT INTO `st_system_area` VALUES (1179, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '宿州马鞍山现代产业园区', '341371', 3, 'suzhoumaanshanxiandaichanyeyuanqu', 'S', 1, NULL, '3413');
INSERT INTO `st_system_area` VALUES (1180, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '宿州经济技术开发区', '341372', 3, 'suzhoujingjijishukaifaqu', 'S', 1, NULL, '3413');
INSERT INTO `st_system_area` VALUES (1181, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '六安市', '3415', 2, 'luanshi', 'L', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1182, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '金安区', '341502', 3, 'jinanqu', 'J', 1, NULL, '3415');
INSERT INTO `st_system_area` VALUES (1183, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '裕安区', '341503', 3, 'yuanqu', 'Y', 1, NULL, '3415');
INSERT INTO `st_system_area` VALUES (1184, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '叶集区', '341504', 3, 'yejiqu', 'Y', 1, NULL, '3415');
INSERT INTO `st_system_area` VALUES (1185, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '霍邱县', '341522', 3, 'huoqiuxian', 'H', 1, NULL, '3415');
INSERT INTO `st_system_area` VALUES (1186, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '舒城县', '341523', 3, 'shuchengxian', 'S', 1, NULL, '3415');
INSERT INTO `st_system_area` VALUES (1187, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '金寨县', '341524', 3, 'jinzhaixian', 'J', 1, NULL, '3415');
INSERT INTO `st_system_area` VALUES (1188, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '霍山县', '341525', 3, 'huoshanxian', 'H', 1, NULL, '3415');
INSERT INTO `st_system_area` VALUES (1189, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '亳州市', '3416', 2, 'bozhoushi', 'B', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1190, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '谯城区', '341602', 3, 'qiaochengqu', 'Q', 1, NULL, '3416');
INSERT INTO `st_system_area` VALUES (1191, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '涡阳县', '341621', 3, 'woyangxian', 'W', 1, NULL, '3416');
INSERT INTO `st_system_area` VALUES (1192, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '蒙城县', '341622', 3, 'mengchengxian', 'M', 1, NULL, '3416');
INSERT INTO `st_system_area` VALUES (1193, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '利辛县', '341623', 3, 'lixinxian', 'L', 1, NULL, '3416');
INSERT INTO `st_system_area` VALUES (1194, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '池州市', '3417', 2, 'chizhoushi', 'C', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1195, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '贵池区', '341702', 3, 'guichiqu', 'G', 1, NULL, '3417');
INSERT INTO `st_system_area` VALUES (1196, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '东至县', '341721', 3, 'dongzhixian', 'D', 1, NULL, '3417');
INSERT INTO `st_system_area` VALUES (1197, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '石台县', '341722', 3, 'shitaixian', 'S', 1, NULL, '3417');
INSERT INTO `st_system_area` VALUES (1198, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '青阳县', '341723', 3, 'qingyangxian', 'Q', 1, NULL, '3417');
INSERT INTO `st_system_area` VALUES (1199, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '宣城市', '3418', 2, 'xuanchengshi', 'X', 1, NULL, '34');
INSERT INTO `st_system_area` VALUES (1200, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '宣州区', '341802', 3, 'xuanzhouqu', 'X', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1201, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '郎溪县', '341821', 3, 'langxixian', 'L', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1202, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '泾县', '341823', 3, 'jingxian', 'J', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1203, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '绩溪县', '341824', 3, 'jixixian', 'J', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1204, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '旌德县', '341825', 3, 'jingdexian', 'J', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1205, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '宣城市经济开发区', '341871', 3, 'xuanchengshijingjikaifaqu', 'X', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1206, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '宁国市', '341881', 3, 'ningguoshi', 'N', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1207, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '广德市', '341882', 3, 'guangdeshi', 'G', 1, NULL, '3418');
INSERT INTO `st_system_area` VALUES (1208, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '福建省', '35', 1, 'fujiansheng', 'F', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (1209, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '福州市', '3501', 2, 'fuzhoushi', 'F', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1210, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '鼓楼区', '350102', 3, 'gulouqu', 'G', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1211, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '台江区', '350103', 3, 'taijiangqu', 'T', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1212, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '仓山区', '350104', 3, 'cangshanqu', 'C', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1213, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '马尾区', '350105', 3, 'mayiqu', 'M', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1214, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '晋安区', '350111', 3, 'jinanqu', 'J', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1215, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '长乐区', '350112', 3, 'changlequ', 'C', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1216, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '闽侯县', '350121', 3, 'minhouxian', 'M', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1217, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '连江县', '350122', 3, 'lianjiangxian', 'L', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1218, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '罗源县', '350123', 3, 'luoyuanxian', 'L', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1219, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.384142', '闽清县', '350124', 3, 'minqingxian', 'M', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1220, NULL, NULL, NULL, '2025-06-20 13:16:18.384142', '2025-06-20 13:16:18.385142', '永泰县', '350125', 3, 'yongtaixian', 'Y', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1221, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '平潭县', '350128', 3, 'pingtanxian', 'P', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1222, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '福清市', '350181', 3, 'fuqingshi', 'F', 1, NULL, '3501');
INSERT INTO `st_system_area` VALUES (1223, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '厦门市', '3502', 2, 'xiamenshi', 'X', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1224, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '思明区', '350203', 3, 'simingqu', 'S', 1, NULL, '3502');
INSERT INTO `st_system_area` VALUES (1225, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '海沧区', '350205', 3, 'haicangqu', 'H', 1, NULL, '3502');
INSERT INTO `st_system_area` VALUES (1226, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '湖里区', '350206', 3, 'huliqu', 'H', 1, NULL, '3502');
INSERT INTO `st_system_area` VALUES (1227, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '集美区', '350211', 3, 'jimeiqu', 'J', 1, NULL, '3502');
INSERT INTO `st_system_area` VALUES (1228, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '同安区', '350212', 3, 'tonganqu', 'T', 1, NULL, '3502');
INSERT INTO `st_system_area` VALUES (1229, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '翔安区', '350213', 3, 'xianganqu', 'X', 1, NULL, '3502');
INSERT INTO `st_system_area` VALUES (1230, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '莆田市', '3503', 2, 'putianshi', 'P', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1231, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '城厢区', '350302', 3, 'chengxiangqu', 'C', 1, NULL, '3503');
INSERT INTO `st_system_area` VALUES (1232, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '涵江区', '350303', 3, 'hanjiangqu', 'H', 1, NULL, '3503');
INSERT INTO `st_system_area` VALUES (1233, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '荔城区', '350304', 3, 'lichengqu', 'L', 1, NULL, '3503');
INSERT INTO `st_system_area` VALUES (1234, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '秀屿区', '350305', 3, 'xiuyuqu', 'X', 1, NULL, '3503');
INSERT INTO `st_system_area` VALUES (1235, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '仙游县', '350322', 3, 'xianyouxian', 'X', 1, NULL, '3503');
INSERT INTO `st_system_area` VALUES (1236, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '三明市', '3504', 2, 'sanmingshi', 'S', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1237, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '梅列区', '350402', 3, 'meiliequ', 'M', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1238, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '三元区', '350403', 3, 'sanyuanqu', 'S', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1239, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '明溪县', '350421', 3, 'mingxixian', 'M', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1240, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '清流县', '350423', 3, 'qingliuxian', 'Q', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1241, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '宁化县', '350424', 3, 'ninghuaxian', 'N', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1242, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '大田县', '350425', 3, 'datianxian', 'D', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1243, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '尤溪县', '350426', 3, 'youxixian', 'Y', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1244, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '沙县', '350427', 3, 'shaxian', 'S', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1245, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '将乐县', '350428', 3, 'jianglexian', 'J', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1246, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '泰宁县', '350429', 3, 'tainingxian', 'T', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1247, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '建宁县', '350430', 3, 'jianningxian', 'J', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1248, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '永安市', '350481', 3, 'yonganshi', 'Y', 1, NULL, '3504');
INSERT INTO `st_system_area` VALUES (1249, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '泉州市', '3505', 2, 'quanzhoushi', 'Q', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1250, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '鲤城区', '350502', 3, 'lichengqu', 'L', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1251, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '丰泽区', '350503', 3, 'fengzequ', 'F', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1252, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '洛江区', '350504', 3, 'luojiangqu', 'L', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1253, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '泉港区', '350505', 3, 'quangangqu', 'Q', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1254, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '惠安县', '350521', 3, 'huianxian', 'H', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1255, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '安溪县', '350524', 3, 'anxixian', 'A', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1256, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.385142', '永春县', '350525', 3, 'yongchunxian', 'Y', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1257, NULL, NULL, NULL, '2025-06-20 13:16:18.385142', '2025-06-20 13:16:18.386120', '德化县', '350526', 3, 'dehuaxian', 'D', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1258, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '金门县', '350527', 3, 'jinmenxian', 'J', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1259, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '石狮市', '350581', 3, 'shishishi', 'S', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1260, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '晋江市', '350582', 3, 'jinjiangshi', 'J', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1261, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '南安市', '350583', 3, 'nananshi', 'N', 1, NULL, '3505');
INSERT INTO `st_system_area` VALUES (1262, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '漳州市', '3506', 2, 'zhangzhoushi', 'Z', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1263, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '芗城区', '350602', 3, 'xiangchengqu', 'X', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1264, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '龙文区', '350603', 3, 'longwenqu', 'L', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1265, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '云霄县', '350622', 3, 'yunxiaoxian', 'Y', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1266, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '漳浦县', '350623', 3, 'zhangpuxian', 'Z', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1267, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '诏安县', '350624', 3, 'zhaoanxian', 'Z', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1268, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '长泰县', '350625', 3, 'zhangtaixian', 'Z', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1269, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '东山县', '350626', 3, 'dongshanxian', 'D', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1270, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '南靖县', '350627', 3, 'nanjingxian', 'N', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1271, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '平和县', '350628', 3, 'pinghexian', 'P', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1272, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '华安县', '350629', 3, 'huaanxian', 'H', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1273, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '龙海市', '350681', 3, 'longhaishi', 'L', 1, NULL, '3506');
INSERT INTO `st_system_area` VALUES (1274, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '南平市', '3507', 2, 'nanpingshi', 'N', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1275, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '延平区', '350702', 3, 'yanpingqu', 'Y', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1276, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '建阳区', '350703', 3, 'jianyangqu', 'J', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1277, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '顺昌县', '350721', 3, 'shunchangxian', 'S', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1278, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '浦城县', '350722', 3, 'puchengxian', 'P', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1279, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '光泽县', '350723', 3, 'guangzexian', 'G', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1280, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '松溪县', '350724', 3, 'songxixian', 'S', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1281, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '政和县', '350725', 3, 'zhenghexian', 'Z', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1282, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '邵武市', '350781', 3, 'shaowushi', 'S', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1283, NULL, NULL, NULL, '2025-06-20 13:16:18.386120', '2025-06-20 13:16:18.386120', '武夷山市', '350782', 3, 'wuyishanshi', 'W', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1284, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '建瓯市', '350783', 3, 'jianoushi', 'J', 1, NULL, '3507');
INSERT INTO `st_system_area` VALUES (1285, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '龙岩市', '3508', 2, 'longyanshi', 'L', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1286, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '新罗区', '350802', 3, 'xinluoqu', 'X', 1, NULL, '3508');
INSERT INTO `st_system_area` VALUES (1287, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '永定区', '350803', 3, 'yongdingqu', 'Y', 1, NULL, '3508');
INSERT INTO `st_system_area` VALUES (1288, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '长汀县', '350821', 3, 'changtingxian', 'C', 1, NULL, '3508');
INSERT INTO `st_system_area` VALUES (1289, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '上杭县', '350823', 3, 'shanghangxian', 'S', 1, NULL, '3508');
INSERT INTO `st_system_area` VALUES (1290, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '武平县', '350824', 3, 'wupingxian', 'W', 1, NULL, '3508');
INSERT INTO `st_system_area` VALUES (1291, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '连城县', '350825', 3, 'lianchengxian', 'L', 1, NULL, '3508');
INSERT INTO `st_system_area` VALUES (1292, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '漳平市', '350881', 3, 'zhangpingshi', 'Z', 1, NULL, '3508');
INSERT INTO `st_system_area` VALUES (1293, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '宁德市', '3509', 2, 'ningdeshi', 'N', 1, NULL, '35');
INSERT INTO `st_system_area` VALUES (1294, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '蕉城区', '350902', 3, 'jiaochengqu', 'J', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1295, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '霞浦县', '350921', 3, 'xiapuxian', 'X', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1296, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '古田县', '350922', 3, 'gutianxian', 'G', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1297, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '屏南县', '350923', 3, 'pingnanxian', 'P', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1298, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '寿宁县', '350924', 3, 'shouningxian', 'S', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1299, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '周宁县', '350925', 3, 'zhouningxian', 'Z', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1300, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '柘荣县', '350926', 3, 'zherongxian', 'Z', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1301, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '福安市', '350981', 3, 'fuanshi', 'F', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1302, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '福鼎市', '350982', 3, 'fudingshi', 'F', 1, NULL, '3509');
INSERT INTO `st_system_area` VALUES (1303, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '江西省', '36', 1, 'jiangxisheng', 'J', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (1304, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '南昌市', '3601', 2, 'nanchangshi', 'N', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1305, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '东湖区', '360102', 3, 'donghuqu', 'D', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1306, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '西湖区', '360103', 3, 'xihuqu', 'X', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1307, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '青云谱区', '360104', 3, 'qingyunpuqu', 'Q', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1308, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '青山湖区', '360111', 3, 'qingshanhuqu', 'Q', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1309, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '新建区', '360112', 3, 'xinjianqu', 'X', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1310, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '红谷滩区', '360113', 3, 'honggutanqu', 'H', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1311, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '南昌县', '360121', 3, 'nanchangxian', 'N', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1312, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '安义县', '360123', 3, 'anyixian', 'A', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1313, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '进贤县', '360124', 3, 'jinxianxian', 'J', 1, NULL, '3601');
INSERT INTO `st_system_area` VALUES (1314, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '景德镇市', '3602', 2, 'jingdezhenshi', 'J', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1315, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '昌江区', '360202', 3, 'changjiangqu', 'C', 1, NULL, '3602');
INSERT INTO `st_system_area` VALUES (1316, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '珠山区', '360203', 3, 'zhushanqu', 'Z', 1, NULL, '3602');
INSERT INTO `st_system_area` VALUES (1317, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '浮梁县', '360222', 3, 'fuliangxian', 'F', 1, NULL, '3602');
INSERT INTO `st_system_area` VALUES (1318, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '乐平市', '360281', 3, 'lepingshi', 'L', 1, NULL, '3602');
INSERT INTO `st_system_area` VALUES (1319, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '萍乡市', '3603', 2, 'pingxiangshi', 'P', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1320, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '安源区', '360302', 3, 'anyuanqu', 'A', 1, NULL, '3603');
INSERT INTO `st_system_area` VALUES (1321, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '湘东区', '360313', 3, 'xiangdongqu', 'X', 1, NULL, '3603');
INSERT INTO `st_system_area` VALUES (1322, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '莲花县', '360321', 3, 'lianhuaxian', 'L', 1, NULL, '3603');
INSERT INTO `st_system_area` VALUES (1323, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '上栗县', '360322', 3, 'shanglixian', 'S', 1, NULL, '3603');
INSERT INTO `st_system_area` VALUES (1324, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '芦溪县', '360323', 3, 'luxixian', 'L', 1, NULL, '3603');
INSERT INTO `st_system_area` VALUES (1325, NULL, NULL, NULL, '2025-06-20 13:16:18.387140', '2025-06-20 13:16:18.387140', '九江市', '3604', 2, 'jiujiangshi', 'J', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1326, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '濂溪区', '360402', 3, 'lianxiqu', 'L', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1327, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '浔阳区', '360403', 3, 'xunyangqu', 'X', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1328, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '柴桑区', '360404', 3, 'chaisangqu', 'C', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1329, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '武宁县', '360423', 3, 'wuningxian', 'W', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1330, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '修水县', '360424', 3, 'xiushuixian', 'X', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1331, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '永修县', '360425', 3, 'yongxiuxian', 'Y', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1332, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '德安县', '360426', 3, 'deanxian', 'D', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1333, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '都昌县', '360428', 3, 'douchangxian', 'D', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1334, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '湖口县', '360429', 3, 'hukouxian', 'H', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1335, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '彭泽县', '360430', 3, 'pengzexian', 'P', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1336, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '瑞昌市', '360481', 3, 'ruichangshi', 'R', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1337, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '共青城市', '360482', 3, 'gongqingchengshi', 'G', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1338, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '庐山市', '360483', 3, 'lushanshi', 'L', 1, NULL, '3604');
INSERT INTO `st_system_area` VALUES (1339, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '新余市', '3605', 2, 'xinyushi', 'X', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1340, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '渝水区', '360502', 3, 'yushuiqu', 'Y', 1, NULL, '3605');
INSERT INTO `st_system_area` VALUES (1341, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '分宜县', '360521', 3, 'fenyixian', 'F', 1, NULL, '3605');
INSERT INTO `st_system_area` VALUES (1342, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '鹰潭市', '3606', 2, 'yingtanshi', 'Y', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1343, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '月湖区', '360602', 3, 'yuehuqu', 'Y', 1, NULL, '3606');
INSERT INTO `st_system_area` VALUES (1344, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '余江区', '360603', 3, 'yujiangqu', 'Y', 1, NULL, '3606');
INSERT INTO `st_system_area` VALUES (1345, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '贵溪市', '360681', 3, 'guixishi', 'G', 1, NULL, '3606');
INSERT INTO `st_system_area` VALUES (1346, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '赣州市', '3607', 2, 'ganzhoushi', 'G', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1347, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '章贡区', '360702', 3, 'zhanggongqu', 'Z', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1348, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '南康区', '360703', 3, 'nankangqu', 'N', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1349, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '赣县区', '360704', 3, 'ganxianqu', 'G', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1350, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '信丰县', '360722', 3, 'xinfengxian', 'X', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1351, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '大余县', '360723', 3, 'dayuxian', 'D', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1352, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '上犹县', '360724', 3, 'shangyouxian', 'S', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1353, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '崇义县', '360725', 3, 'chongyixian', 'C', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1354, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '安远县', '360726', 3, 'anyuanxian', 'A', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1355, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '定南县', '360728', 3, 'dingnanxian', 'D', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1356, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '全南县', '360729', 3, 'quannanxian', 'Q', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1357, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '宁都县', '360730', 3, 'ningdouxian', 'N', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1358, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '于都县', '360731', 3, 'yudouxian', 'Y', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1359, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '兴国县', '360732', 3, 'xingguoxian', 'X', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1360, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '会昌县', '360733', 3, 'huichangxian', 'H', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1361, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '寻乌县', '360734', 3, 'xunwuxian', 'X', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1362, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '石城县', '360735', 3, 'shichengxian', 'S', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1363, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '瑞金市', '360781', 3, 'ruijinshi', 'R', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1364, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '龙南市', '360783', 3, 'longnanshi', 'L', 1, NULL, '3607');
INSERT INTO `st_system_area` VALUES (1365, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '吉安市', '3608', 2, 'jianshi', 'J', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1366, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '吉州区', '360802', 3, 'jizhouqu', 'J', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1367, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '青原区', '360803', 3, 'qingyuanqu', 'Q', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1368, NULL, NULL, NULL, '2025-06-20 13:16:18.388140', '2025-06-20 13:16:18.388140', '吉安县', '360821', 3, 'jianxian', 'J', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1369, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '吉水县', '360822', 3, 'jishuixian', 'J', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1370, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '峡江县', '360823', 3, 'xiajiangxian', 'X', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1371, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '新干县', '360824', 3, 'xinganxian', 'X', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1372, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '永丰县', '360825', 3, 'yongfengxian', 'Y', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1373, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '泰和县', '360826', 3, 'taihexian', 'T', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1374, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '遂川县', '360827', 3, 'suichuanxian', 'S', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1375, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '万安县', '360828', 3, 'wananxian', 'W', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1376, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '安福县', '360829', 3, 'anfuxian', 'A', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1377, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '永新县', '360830', 3, 'yongxinxian', 'Y', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1378, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '井冈山市', '360881', 3, 'jinggangshanshi', 'J', 1, NULL, '3608');
INSERT INTO `st_system_area` VALUES (1379, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '宜春市', '3609', 2, 'yichunshi', 'Y', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1380, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '袁州区', '360902', 3, 'yuanzhouqu', 'Y', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1381, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '奉新县', '360921', 3, 'fengxinxian', 'F', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1382, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '万载县', '360922', 3, 'wanzaixian', 'W', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1383, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '上高县', '360923', 3, 'shanggaoxian', 'S', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1384, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '宜丰县', '360924', 3, 'yifengxian', 'Y', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1385, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '靖安县', '360925', 3, 'jinganxian', 'J', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1386, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '铜鼓县', '360926', 3, 'tongguxian', 'T', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1387, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '丰城市', '360981', 3, 'fengchengshi', 'F', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1388, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '樟树市', '360982', 3, 'zhangshushi', 'Z', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1389, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '高安市', '360983', 3, 'gaoanshi', 'G', 1, NULL, '3609');
INSERT INTO `st_system_area` VALUES (1390, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '抚州市', '3610', 2, 'fuzhoushi', 'F', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1391, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '临川区', '361002', 3, 'linchuanqu', 'L', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1392, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '东乡区', '361003', 3, 'dongxiangqu', 'D', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1393, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '南城县', '361021', 3, 'nanchengxian', 'N', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1394, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '黎川县', '361022', 3, 'lichuanxian', 'L', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1395, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '南丰县', '361023', 3, 'nanfengxian', 'N', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1396, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '崇仁县', '361024', 3, 'chongrenxian', 'C', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1397, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '乐安县', '361025', 3, 'leanxian', 'L', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1398, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '宜黄县', '361026', 3, 'yihuangxian', 'Y', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1399, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '金溪县', '361027', 3, 'jinxixian', 'J', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1400, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '资溪县', '361028', 3, 'zixixian', 'Z', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1401, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '广昌县', '361030', 3, 'guangchangxian', 'G', 1, NULL, '3610');
INSERT INTO `st_system_area` VALUES (1402, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '上饶市', '3611', 2, 'shangraoshi', 'S', 1, NULL, '36');
INSERT INTO `st_system_area` VALUES (1403, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '信州区', '361102', 3, 'xinzhouqu', 'X', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1404, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '广丰区', '361103', 3, 'guangfengqu', 'G', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1405, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '广信区', '361104', 3, 'guangxinqu', 'G', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1406, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '玉山县', '361123', 3, 'yushanxian', 'Y', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1407, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '铅山县', '361124', 3, 'yanshanxian', 'Y', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1408, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '横峰县', '361125', 3, 'hengfengxian', 'H', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1409, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '弋阳县', '361126', 3, 'yiyangxian', 'Y', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1410, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '余干县', '361127', 3, 'yuganxian', 'Y', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1411, NULL, NULL, NULL, '2025-06-20 13:16:18.389139', '2025-06-20 13:16:18.389139', '鄱阳县', '361128', 3, 'poyangxian', 'P', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1412, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '万年县', '361129', 3, 'wannianxian', 'W', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1413, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '婺源县', '361130', 3, 'wuyuanxian', 'W', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1414, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '德兴市', '361181', 3, 'dexingshi', 'D', 1, NULL, '3611');
INSERT INTO `st_system_area` VALUES (1415, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '山东省', '37', 1, 'shandongsheng', 'S', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (1416, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '济南市', '3701', 2, 'jinanshi', 'J', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1417, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '历下区', '370102', 3, 'lixiaqu', 'L', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1418, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '市中区', '370103', 3, 'shizhongqu', 'S', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1419, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '槐荫区', '370104', 3, 'huaiyinqu', 'H', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1420, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '天桥区', '370105', 3, 'tianqiaoqu', 'T', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1421, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '历城区', '370112', 3, 'lichengqu', 'L', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1422, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '长清区', '370113', 3, 'zhangqingqu', 'Z', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1423, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '章丘区', '370114', 3, 'zhangqiuqu', 'Z', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1424, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '济阳区', '370115', 3, 'jiyangqu', 'J', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1425, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '莱芜区', '370116', 3, 'laiwuqu', 'L', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1426, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '钢城区', '370117', 3, 'gangchengqu', 'G', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1427, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '平阴县', '370124', 3, 'pingyinxian', 'P', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1428, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '商河县', '370126', 3, 'shanghexian', 'S', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1429, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '济南高新技术产业开发区', '370171', 3, 'jinangaoxinjishuchanyekaifaqu', 'J', 1, NULL, '3701');
INSERT INTO `st_system_area` VALUES (1430, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '青岛市', '3702', 2, 'qingdaoshi', 'Q', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1431, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '市南区', '370202', 3, 'shinanqu', 'S', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1432, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '市北区', '370203', 3, 'shibeiqu', 'S', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1433, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '黄岛区', '370211', 3, 'huangdaoqu', 'H', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1434, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '崂山区', '370212', 3, 'laoshanqu', 'L', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1435, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '李沧区', '370213', 3, 'licangqu', 'L', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1436, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '城阳区', '370214', 3, 'chengyangqu', 'C', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1437, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '即墨区', '370215', 3, 'jimoqu', 'J', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1438, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '青岛高新技术产业开发区', '370271', 3, 'qingdaogaoxinjishuchanyekaifaqu', 'Q', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1439, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '胶州市', '370281', 3, 'jiaozhoushi', 'J', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1440, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '平度市', '370283', 3, 'pingdushi', 'P', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1441, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '莱西市', '370285', 3, 'laixishi', 'L', 1, NULL, '3702');
INSERT INTO `st_system_area` VALUES (1442, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '淄博市', '3703', 2, 'ziboshi', 'Z', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1443, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '淄川区', '370302', 3, 'zichuanqu', 'Z', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1444, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '张店区', '370303', 3, 'zhangdianqu', 'Z', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1445, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '博山区', '370304', 3, 'boshanqu', 'B', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1446, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '临淄区', '370305', 3, 'linziqu', 'L', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1447, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '周村区', '370306', 3, 'zhoucunqu', 'Z', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1448, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '桓台县', '370321', 3, 'huantaixian', 'H', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1449, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '高青县', '370322', 3, 'gaoqingxian', 'G', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1450, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '沂源县', '370323', 3, 'yiyuanxian', 'Y', 1, NULL, '3703');
INSERT INTO `st_system_area` VALUES (1451, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '枣庄市', '3704', 2, 'zaozhuangshi', 'Z', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1452, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '市中区', '370402', 3, 'shizhongqu', 'S', 1, NULL, '3704');
INSERT INTO `st_system_area` VALUES (1453, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '薛城区', '370403', 3, 'xuechengqu', 'X', 1, NULL, '3704');
INSERT INTO `st_system_area` VALUES (1454, NULL, NULL, NULL, '2025-06-20 13:16:18.390139', '2025-06-20 13:16:18.390139', '峄城区', '370404', 3, 'yichengqu', 'Y', 1, NULL, '3704');
INSERT INTO `st_system_area` VALUES (1455, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '台儿庄区', '370405', 3, 'taierzhuangqu', 'T', 1, NULL, '3704');
INSERT INTO `st_system_area` VALUES (1456, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '山亭区', '370406', 3, 'shantingqu', 'S', 1, NULL, '3704');
INSERT INTO `st_system_area` VALUES (1457, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '滕州市', '370481', 3, 'tengzhoushi', 'T', 1, NULL, '3704');
INSERT INTO `st_system_area` VALUES (1458, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '东营市', '3705', 2, 'dongyingshi', 'D', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1459, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '东营区', '370502', 3, 'dongyingqu', 'D', 1, NULL, '3705');
INSERT INTO `st_system_area` VALUES (1460, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '河口区', '370503', 3, 'hekouqu', 'H', 1, NULL, '3705');
INSERT INTO `st_system_area` VALUES (1461, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '垦利区', '370505', 3, 'kenliqu', 'K', 1, NULL, '3705');
INSERT INTO `st_system_area` VALUES (1462, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '利津县', '370522', 3, 'lijinxian', 'L', 1, NULL, '3705');
INSERT INTO `st_system_area` VALUES (1463, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '广饶县', '370523', 3, 'guangraoxian', 'G', 1, NULL, '3705');
INSERT INTO `st_system_area` VALUES (1464, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '东营经济技术开发区', '370571', 3, 'dongyingjingjijishukaifaqu', 'D', 1, NULL, '3705');
INSERT INTO `st_system_area` VALUES (1465, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '东营港经济开发区', '370572', 3, 'dongyinggangjingjikaifaqu', 'D', 1, NULL, '3705');
INSERT INTO `st_system_area` VALUES (1466, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '烟台市', '3706', 2, 'yantaishi', 'Y', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1467, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '芝罘区', '370602', 3, 'zhifuqu', 'Z', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1468, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '福山区', '370611', 3, 'fushanqu', 'F', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1469, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '牟平区', '370612', 3, 'mupingqu', 'M', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1470, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '莱山区', '370613', 3, 'laishanqu', 'L', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1471, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '蓬莱区', '370614', 3, 'penglaiqu', 'P', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1472, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '烟台高新技术产业开发区', '370671', 3, 'yantaigaoxinjishuchanyekaifaqu', 'Y', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1473, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '烟台经济技术开发区', '370672', 3, 'yantaijingjijishukaifaqu', 'Y', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1474, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '龙口市', '370681', 3, 'longkoushi', 'L', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1475, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '莱阳市', '370682', 3, 'laiyangshi', 'L', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1476, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '莱州市', '370683', 3, 'laizhoushi', 'L', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1477, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '招远市', '370685', 3, 'zhaoyuanshi', 'Z', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1478, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '栖霞市', '370686', 3, 'qixiashi', 'Q', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1479, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '海阳市', '370687', 3, 'haiyangshi', 'H', 1, NULL, '3706');
INSERT INTO `st_system_area` VALUES (1480, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '潍坊市', '3707', 2, 'weifangshi', 'W', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1481, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '潍城区', '370702', 3, 'weichengqu', 'W', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1482, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '寒亭区', '370703', 3, 'hantingqu', 'H', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1483, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '坊子区', '370704', 3, 'fangziqu', 'F', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1484, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '奎文区', '370705', 3, 'kuiwenqu', 'K', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1485, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '临朐县', '370724', 3, 'linquxian', 'L', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1486, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '昌乐县', '370725', 3, 'changlexian', 'C', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1487, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '潍坊滨海经济技术开发区', '370772', 3, 'weifangbinhaijingjijishukaifaqu', 'W', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1488, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '青州市', '370781', 3, 'qingzhoushi', 'Q', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1489, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '诸城市', '370782', 3, 'zhuchengshi', 'Z', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1490, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '寿光市', '370783', 3, 'shouguangshi', 'S', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1491, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '安丘市', '370784', 3, 'anqiushi', 'A', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1492, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '高密市', '370785', 3, 'gaomishi', 'G', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1493, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '昌邑市', '370786', 3, 'changyishi', 'C', 1, NULL, '3707');
INSERT INTO `st_system_area` VALUES (1494, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '济宁市', '3708', 2, 'jiningshi', 'J', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1495, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '任城区', '370811', 3, 'renchengqu', 'R', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1496, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '兖州区', '370812', 3, 'yanzhouqu', 'Y', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1497, NULL, NULL, NULL, '2025-06-20 13:16:18.391138', '2025-06-20 13:16:18.391138', '微山县', '370826', 3, 'weishanxian', 'W', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1498, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '鱼台县', '370827', 3, 'yutaixian', 'Y', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1499, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '金乡县', '370828', 3, 'jinxiangxian', 'J', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1500, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '嘉祥县', '370829', 3, 'jiaxiangxian', 'J', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1501, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '汶上县', '370830', 3, 'wenshangxian', 'W', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1502, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '泗水县', '370831', 3, 'sishuixian', 'S', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1503, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '梁山县', '370832', 3, 'liangshanxian', 'L', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1504, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '济宁高新技术产业开发区', '370871', 3, 'jininggaoxinjishuchanyekaifaqu', 'J', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1505, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '曲阜市', '370881', 3, 'qufushi', 'Q', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1506, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '邹城市', '370883', 3, 'zouchengshi', 'Z', 1, NULL, '3708');
INSERT INTO `st_system_area` VALUES (1507, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '泰安市', '3709', 2, 'taianshi', 'T', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1508, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '泰山区', '370902', 3, 'taishanqu', 'T', 1, NULL, '3709');
INSERT INTO `st_system_area` VALUES (1509, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '岱岳区', '370911', 3, 'daiyuequ', 'D', 1, NULL, '3709');
INSERT INTO `st_system_area` VALUES (1510, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '宁阳县', '370921', 3, 'ningyangxian', 'N', 1, NULL, '3709');
INSERT INTO `st_system_area` VALUES (1511, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '东平县', '370923', 3, 'dongpingxian', 'D', 1, NULL, '3709');
INSERT INTO `st_system_area` VALUES (1512, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '新泰市', '370982', 3, 'xintaishi', 'X', 1, NULL, '3709');
INSERT INTO `st_system_area` VALUES (1513, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '肥城市', '370983', 3, 'feichengshi', 'F', 1, NULL, '3709');
INSERT INTO `st_system_area` VALUES (1514, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '威海市', '3710', 2, 'weihaishi', 'W', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1515, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '环翠区', '371002', 3, 'huancuiqu', 'H', 1, NULL, '3710');
INSERT INTO `st_system_area` VALUES (1516, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '文登区', '371003', 3, 'wendengqu', 'W', 1, NULL, '3710');
INSERT INTO `st_system_area` VALUES (1517, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '威海火炬高技术产业开发区', '371071', 3, 'weihaihuojugaojishuchanyekaifaqu', 'W', 1, NULL, '3710');
INSERT INTO `st_system_area` VALUES (1518, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '威海经济技术开发区', '371072', 3, 'weihaijingjijishukaifaqu', 'W', 1, NULL, '3710');
INSERT INTO `st_system_area` VALUES (1519, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '威海临港经济技术开发区', '371073', 3, 'weihailingangjingjijishukaifaqu', 'W', 1, NULL, '3710');
INSERT INTO `st_system_area` VALUES (1520, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '荣成市', '371082', 3, 'rongchengshi', 'R', 1, NULL, '3710');
INSERT INTO `st_system_area` VALUES (1521, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '乳山市', '371083', 3, 'rushanshi', 'R', 1, NULL, '3710');
INSERT INTO `st_system_area` VALUES (1522, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '日照市', '3711', 2, 'rizhaoshi', 'R', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1523, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '东港区', '371102', 3, 'donggangqu', 'D', 1, NULL, '3711');
INSERT INTO `st_system_area` VALUES (1524, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '岚山区', '371103', 3, 'lanshanqu', 'L', 1, NULL, '3711');
INSERT INTO `st_system_area` VALUES (1525, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '五莲县', '371121', 3, 'wulianxian', 'W', 1, NULL, '3711');
INSERT INTO `st_system_area` VALUES (1526, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '莒县', '371122', 3, 'juxian', 'J', 1, NULL, '3711');
INSERT INTO `st_system_area` VALUES (1527, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '日照经济技术开发区', '371171', 3, 'rizhaojingjijishukaifaqu', 'R', 1, NULL, '3711');
INSERT INTO `st_system_area` VALUES (1528, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '临沂市', '3713', 2, 'linyishi', 'L', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1529, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '兰山区', '371302', 3, 'lanshanqu', 'L', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1530, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '罗庄区', '371311', 3, 'luozhuangqu', 'L', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1531, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '河东区', '371312', 3, 'hedongqu', 'H', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1532, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '沂南县', '371321', 3, 'yinanxian', 'Y', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1533, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '郯城县', '371322', 3, 'tanchengxian', 'T', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1534, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '沂水县', '371323', 3, 'yishuixian', 'Y', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1535, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '兰陵县', '371324', 3, 'lanlingxian', 'L', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1536, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.392137', '费县', '371325', 3, 'feixian', 'F', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1537, NULL, NULL, NULL, '2025-06-20 13:16:18.392137', '2025-06-20 13:16:18.393137', '平邑县', '371326', 3, 'pingyixian', 'P', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1538, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '莒南县', '371327', 3, 'junanxian', 'J', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1539, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '蒙阴县', '371328', 3, 'mengyinxian', 'M', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1540, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '临沭县', '371329', 3, 'linshuxian', 'L', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1541, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '临沂高新技术产业开发区', '371371', 3, 'linyigaoxinjishuchanyekaifaqu', 'L', 1, NULL, '3713');
INSERT INTO `st_system_area` VALUES (1542, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '德州市', '3714', 2, 'dezhoushi', 'D', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1543, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '德城区', '371402', 3, 'dechengqu', 'D', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1544, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '陵城区', '371403', 3, 'lingchengqu', 'L', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1545, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '宁津县', '371422', 3, 'ningjinxian', 'N', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1546, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '庆云县', '371423', 3, 'qingyunxian', 'Q', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1547, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '临邑县', '371424', 3, 'linyixian', 'L', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1548, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '齐河县', '371425', 3, 'qihexian', 'Q', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1549, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '平原县', '371426', 3, 'pingyuanxian', 'P', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1550, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '夏津县', '371427', 3, 'xiajinxian', 'X', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1551, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '武城县', '371428', 3, 'wuchengxian', 'W', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1552, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '德州经济技术开发区', '371471', 3, 'dezhoujingjijishukaifaqu', 'D', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1553, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '德州运河经济开发区', '371472', 3, 'dezhouyunhejingjikaifaqu', 'D', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1554, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.393137', '乐陵市', '371481', 3, 'lelingshi', 'L', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1555, NULL, NULL, NULL, '2025-06-20 13:16:18.393137', '2025-06-20 13:16:18.394116', '禹城市', '371482', 3, 'yuchengshi', 'Y', 1, NULL, '3714');
INSERT INTO `st_system_area` VALUES (1556, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '聊城市', '3715', 2, 'liaochengshi', 'L', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1557, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '东昌府区', '371502', 3, 'dongchangfuqu', 'D', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1558, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '茌平区', '371503', 3, 'chipingqu', 'C', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1559, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '阳谷县', '371521', 3, 'yangguxian', 'Y', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1560, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '莘县', '371522', 3, 'shenxian', 'S', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1561, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '东阿县', '371524', 3, 'dongexian', 'D', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1562, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '冠县', '371525', 3, 'guanxian', 'G', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1563, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '高唐县', '371526', 3, 'gaotangxian', 'G', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1564, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '临清市', '371581', 3, 'linqingshi', 'L', 1, NULL, '3715');
INSERT INTO `st_system_area` VALUES (1565, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '滨州市', '3716', 2, 'binzhoushi', 'B', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1566, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '滨城区', '371602', 3, 'binchengqu', 'B', 1, NULL, '3716');
INSERT INTO `st_system_area` VALUES (1567, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '沾化区', '371603', 3, 'zhanhuaqu', 'Z', 1, NULL, '3716');
INSERT INTO `st_system_area` VALUES (1568, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '惠民县', '371621', 3, 'huiminxian', 'H', 1, NULL, '3716');
INSERT INTO `st_system_area` VALUES (1569, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '阳信县', '371622', 3, 'yangxinxian', 'Y', 1, NULL, '3716');
INSERT INTO `st_system_area` VALUES (1570, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '无棣县', '371623', 3, 'wudixian', 'W', 1, NULL, '3716');
INSERT INTO `st_system_area` VALUES (1571, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '博兴县', '371625', 3, 'boxingxian', 'B', 1, NULL, '3716');
INSERT INTO `st_system_area` VALUES (1572, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '邹平市', '371681', 3, 'zoupingshi', 'Z', 1, NULL, '3716');
INSERT INTO `st_system_area` VALUES (1573, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '菏泽市', '3717', 2, 'hezeshi', 'H', 1, NULL, '37');
INSERT INTO `st_system_area` VALUES (1574, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '牡丹区', '371702', 3, 'mudanqu', 'M', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1575, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '定陶区', '371703', 3, 'dingtaoqu', 'D', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1576, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '曹县', '371721', 3, 'caoxian', 'C', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1577, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '单县', '371722', 3, 'danxian', 'D', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1578, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '成武县', '371723', 3, 'chengwuxian', 'C', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1579, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '巨野县', '371724', 3, 'juyexian', 'J', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1580, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '郓城县', '371725', 3, 'yunchengxian', 'Y', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1581, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '鄄城县', '371726', 3, 'juanchengxian', 'J', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1582, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '东明县', '371728', 3, 'dongmingxian', 'D', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1583, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '菏泽经济技术开发区', '371771', 3, 'hezejingjijishukaifaqu', 'H', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1584, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '菏泽高新技术开发区', '371772', 3, 'hezegaoxinjishukaifaqu', 'H', 1, NULL, '3717');
INSERT INTO `st_system_area` VALUES (1585, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '河南省', '41', 1, 'henansheng', 'H', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (1586, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '郑州市', '4101', 2, 'zhengzhoushi', 'Z', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1587, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '中原区', '410102', 3, 'zhongyuanqu', 'Z', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1588, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '二七区', '410103', 3, 'erqiqu', 'E', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1589, NULL, NULL, NULL, '2025-06-20 13:16:18.394116', '2025-06-20 13:16:18.394116', '管城回族区', '410104', 3, 'guanchenghuizuqu', 'G', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1590, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '金水区', '410105', 3, 'jinshuiqu', 'J', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1591, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '上街区', '410106', 3, 'shangjiequ', 'S', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1592, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '惠济区', '410108', 3, 'huijiqu', 'H', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1593, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '中牟县', '410122', 3, 'zhongmuxian', 'Z', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1594, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '郑州经济技术开发区', '410171', 3, 'zhengzhoujingjijishukaifaqu', 'Z', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1595, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '郑州高新技术产业开发区', '410172', 3, 'zhengzhougaoxinjishuchanyekaifaqu', 'Z', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1596, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '郑州航空港经济综合实验区', '410173', 3, 'zhengzhouhangkonggangjingjizongheshiyanqu', 'Z', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1597, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '巩义市', '410181', 3, 'gongyishi', 'G', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1598, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '荥阳市', '410182', 3, 'xingyangshi', 'X', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1599, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '新密市', '410183', 3, 'xinmishi', 'X', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1600, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '新郑市', '410184', 3, 'xinzhengshi', 'X', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1601, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '登封市', '410185', 3, 'dengfengshi', 'D', 1, NULL, '4101');
INSERT INTO `st_system_area` VALUES (1602, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '开封市', '4102', 2, 'kaifengshi', 'K', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1603, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '龙亭区', '410202', 3, 'longtingqu', 'L', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1604, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '顺河回族区', '410203', 3, 'shunhehuizuqu', 'S', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1605, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '鼓楼区', '410204', 3, 'gulouqu', 'G', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1606, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '禹王台区', '410205', 3, 'yuwangtaiqu', 'Y', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1607, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '祥符区', '410212', 3, 'xiangfuqu', 'X', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1608, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '杞县', '410221', 3, 'qixian', 'Q', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1609, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '通许县', '410222', 3, 'tongxuxian', 'T', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1610, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '尉氏县', '410223', 3, 'weishixian', 'W', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1611, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '兰考县', '410225', 3, 'lankaoxian', 'L', 1, NULL, '4102');
INSERT INTO `st_system_area` VALUES (1612, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '洛阳市', '4103', 2, 'luoyangshi', 'L', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1613, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '老城区', '410302', 3, 'laochengqu', 'L', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1614, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '西工区', '410303', 3, 'xigongqu', 'X', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1615, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '瀍河回族区', '410304', 3, 'chanhehuizuqu', 'C', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1616, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '涧西区', '410305', 3, 'jianxiqu', 'J', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1617, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '吉利区', '410306', 3, 'jiliqu', 'J', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1618, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '洛龙区', '410311', 3, 'luolongqu', 'L', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1619, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '孟津县', '410322', 3, 'mengjinxian', 'M', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1620, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '新安县', '410323', 3, 'xinanxian', 'X', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1621, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '栾川县', '410324', 3, 'luanchuanxian', 'L', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1622, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '嵩县', '410325', 3, 'songxian', 'S', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1623, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '汝阳县', '410326', 3, 'ruyangxian', 'R', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1624, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '宜阳县', '410327', 3, 'yiyangxian', 'Y', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1625, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '洛宁县', '410328', 3, 'luoningxian', 'L', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1626, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '伊川县', '410329', 3, 'yichuanxian', 'Y', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1627, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '洛阳高新技术产业开发区', '410371', 3, 'luoyanggaoxinjishuchanyekaifaqu', 'L', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1628, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '偃师市', '410381', 3, 'yanshishi', 'Y', 1, NULL, '4103');
INSERT INTO `st_system_area` VALUES (1629, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '平顶山市', '4104', 2, 'pingdingshanshi', 'P', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1630, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '新华区', '410402', 3, 'xinhuaqu', 'X', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1631, NULL, NULL, NULL, '2025-06-20 13:16:18.395115', '2025-06-20 13:16:18.395115', '卫东区', '410403', 3, 'weidongqu', 'W', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1632, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '石龙区', '410404', 3, 'shilongqu', 'S', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1633, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '湛河区', '410411', 3, 'zhanhequ', 'Z', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1634, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '宝丰县', '410421', 3, 'baofengxian', 'B', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1635, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '叶县', '410422', 3, 'yexian', 'Y', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1636, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '鲁山县', '410423', 3, 'lushanxian', 'L', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1637, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '郏县', '410425', 3, 'jiaxian', 'J', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1638, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '平顶山高新技术产业开发区', '410471', 3, 'pingdingshangaoxinjishuchanyekaifaqu', 'P', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1639, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '平顶山市城乡一体化示范区', '410472', 3, 'pingdingshanshichengxiangyitihuashifanqu', 'P', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1640, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '舞钢市', '410481', 3, 'wugangshi', 'W', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1641, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '汝州市', '410482', 3, 'ruzhoushi', 'R', 1, NULL, '4104');
INSERT INTO `st_system_area` VALUES (1642, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '安阳市', '4105', 2, 'anyangshi', 'A', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1643, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '文峰区', '410502', 3, 'wenfengqu', 'W', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1644, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '北关区', '410503', 3, 'beiguanqu', 'B', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1645, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '殷都区', '410505', 3, 'yindouqu', 'Y', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1646, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '龙安区', '410506', 3, 'longanqu', 'L', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1647, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '安阳县', '410522', 3, 'anyangxian', 'A', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1648, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '汤阴县', '410523', 3, 'tangyinxian', 'T', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1649, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '滑县', '410526', 3, 'huaxian', 'H', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1650, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '内黄县', '410527', 3, 'neihuangxian', 'N', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1651, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '安阳高新技术产业开发区', '410571', 3, 'anyanggaoxinjishuchanyekaifaqu', 'A', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1652, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '林州市', '410581', 3, 'linzhoushi', 'L', 1, NULL, '4105');
INSERT INTO `st_system_area` VALUES (1653, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '鹤壁市', '4106', 2, 'hebishi', 'H', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1654, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '鹤山区', '410602', 3, 'heshanqu', 'H', 1, NULL, '4106');
INSERT INTO `st_system_area` VALUES (1655, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '山城区', '410603', 3, 'shanchengqu', 'S', 1, NULL, '4106');
INSERT INTO `st_system_area` VALUES (1656, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '淇滨区', '410611', 3, 'qibinqu', 'Q', 1, NULL, '4106');
INSERT INTO `st_system_area` VALUES (1657, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '浚县', '410621', 3, 'junxian', 'J', 1, NULL, '4106');
INSERT INTO `st_system_area` VALUES (1658, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '淇县', '410622', 3, 'qixian', 'Q', 1, NULL, '4106');
INSERT INTO `st_system_area` VALUES (1659, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '鹤壁经济技术开发区', '410671', 3, 'hebijingjijishukaifaqu', 'H', 1, NULL, '4106');
INSERT INTO `st_system_area` VALUES (1660, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '新乡市', '4107', 2, 'xinxiangshi', 'X', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1661, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '红旗区', '410702', 3, 'hongqiqu', 'H', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1662, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '卫滨区', '410703', 3, 'weibinqu', 'W', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1663, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '凤泉区', '410704', 3, 'fengquanqu', 'F', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1664, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '牧野区', '410711', 3, 'muyequ', 'M', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1665, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '新乡县', '410721', 3, 'xinxiangxian', 'X', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1666, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '获嘉县', '410724', 3, 'huojiaxian', 'H', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1667, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '原阳县', '410725', 3, 'yuanyangxian', 'Y', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1668, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '延津县', '410726', 3, 'yanjinxian', 'Y', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1669, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '封丘县', '410727', 3, 'fengqiuxian', 'F', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1670, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '新乡高新技术产业开发区', '410771', 3, 'xinxianggaoxinjishuchanyekaifaqu', 'X', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1671, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '新乡经济技术开发区', '410772', 3, 'xinxiangjingjijishukaifaqu', 'X', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1672, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '新乡市平原城乡一体化示范区', '410773', 3, 'xinxiangshipingyuanchengxiangyitihuashifanqu', 'X', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1673, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '卫辉市', '410781', 3, 'weihuishi', 'W', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1674, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '辉县市', '410782', 3, 'huixianshi', 'H', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1675, NULL, NULL, NULL, '2025-06-20 13:16:18.396114', '2025-06-20 13:16:18.396114', '长垣市', '410783', 3, 'zhangyuanshi', 'Z', 1, NULL, '4107');
INSERT INTO `st_system_area` VALUES (1676, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '焦作市', '4108', 2, 'jiaozuoshi', 'J', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1677, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '解放区', '410802', 3, 'jiefangqu', 'J', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1678, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '中站区', '410803', 3, 'zhongzhanqu', 'Z', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1679, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '马村区', '410804', 3, 'macunqu', 'M', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1680, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '山阳区', '410811', 3, 'shanyangqu', 'S', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1681, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '修武县', '410821', 3, 'xiuwuxian', 'X', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1682, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '博爱县', '410822', 3, 'boaixian', 'B', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1683, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '武陟县', '410823', 3, 'wuzhixian', 'W', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1684, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '温县', '410825', 3, 'wenxian', 'W', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1685, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '焦作城乡一体化示范区', '410871', 3, 'jiaozuochengxiangyitihuashifanqu', 'J', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1686, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '沁阳市', '410882', 3, 'qinyangshi', 'Q', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1687, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '孟州市', '410883', 3, 'mengzhoushi', 'M', 1, NULL, '4108');
INSERT INTO `st_system_area` VALUES (1688, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '濮阳市', '4109', 2, 'puyangshi', 'P', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1689, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '华龙区', '410902', 3, 'hualongqu', 'H', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1690, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '清丰县', '410922', 3, 'qingfengxian', 'Q', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1691, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '南乐县', '410923', 3, 'nanlexian', 'N', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1692, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '范县', '410926', 3, 'fanxian', 'F', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1693, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '台前县', '410927', 3, 'taiqianxian', 'T', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1694, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '濮阳县', '410928', 3, 'puyangxian', 'P', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1695, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '河南濮阳工业园区', '410971', 3, 'henanpuyanggongyeyuanqu', 'H', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1696, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '濮阳经济技术开发区', '410972', 3, 'puyangjingjijishukaifaqu', 'P', 1, NULL, '4109');
INSERT INTO `st_system_area` VALUES (1697, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '许昌市', '4110', 2, 'xuchangshi', 'X', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1698, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '魏都区', '411002', 3, 'weidouqu', 'W', 1, NULL, '4110');
INSERT INTO `st_system_area` VALUES (1699, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '建安区', '411003', 3, 'jiananqu', 'J', 1, NULL, '4110');
INSERT INTO `st_system_area` VALUES (1700, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '鄢陵县', '411024', 3, 'yanlingxian', 'Y', 1, NULL, '4110');
INSERT INTO `st_system_area` VALUES (1701, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '襄城县', '411025', 3, 'xiangchengxian', 'X', 1, NULL, '4110');
INSERT INTO `st_system_area` VALUES (1702, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '许昌经济技术开发区', '411071', 3, 'xuchangjingjijishukaifaqu', 'X', 1, NULL, '4110');
INSERT INTO `st_system_area` VALUES (1703, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '禹州市', '411081', 3, 'yuzhoushi', 'Y', 1, NULL, '4110');
INSERT INTO `st_system_area` VALUES (1704, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '长葛市', '411082', 3, 'zhanggeshi', 'Z', 1, NULL, '4110');
INSERT INTO `st_system_area` VALUES (1705, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '漯河市', '4111', 2, 'taheshi', 'T', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1706, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '源汇区', '411102', 3, 'yuanhuiqu', 'Y', 1, NULL, '4111');
INSERT INTO `st_system_area` VALUES (1707, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '郾城区', '411103', 3, 'yanchengqu', 'Y', 1, NULL, '4111');
INSERT INTO `st_system_area` VALUES (1708, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '召陵区', '411104', 3, 'zhaolingqu', 'Z', 1, NULL, '4111');
INSERT INTO `st_system_area` VALUES (1709, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '舞阳县', '411121', 3, 'wuyangxian', 'W', 1, NULL, '4111');
INSERT INTO `st_system_area` VALUES (1710, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '临颍县', '411122', 3, 'linyingxian', 'L', 1, NULL, '4111');
INSERT INTO `st_system_area` VALUES (1711, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '漯河经济技术开发区', '411171', 3, 'tahejingjijishukaifaqu', 'T', 1, NULL, '4111');
INSERT INTO `st_system_area` VALUES (1712, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '三门峡市', '4112', 2, 'sanmenxiashi', 'S', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1713, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '湖滨区', '411202', 3, 'hubinqu', 'H', 1, NULL, '4112');
INSERT INTO `st_system_area` VALUES (1714, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '陕州区', '411203', 3, 'shanzhouqu', 'S', 1, NULL, '4112');
INSERT INTO `st_system_area` VALUES (1715, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '渑池县', '411221', 3, 'mianchixian', 'M', 1, NULL, '4112');
INSERT INTO `st_system_area` VALUES (1716, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '卢氏县', '411224', 3, 'lushixian', 'L', 1, NULL, '4112');
INSERT INTO `st_system_area` VALUES (1717, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '河南三门峡经济开发区', '411271', 3, 'henansanmenxiajingjikaifaqu', 'H', 1, NULL, '4112');
INSERT INTO `st_system_area` VALUES (1718, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.397113', '义马市', '411281', 3, 'yimashi', 'Y', 1, NULL, '4112');
INSERT INTO `st_system_area` VALUES (1719, NULL, NULL, NULL, '2025-06-20 13:16:18.397113', '2025-06-20 13:16:18.398112', '灵宝市', '411282', 3, 'lingbaoshi', 'L', 1, NULL, '4112');
INSERT INTO `st_system_area` VALUES (1720, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '南阳市', '4113', 2, 'nanyangshi', 'N', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1721, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '宛城区', '411302', 3, 'wanchengqu', 'W', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1722, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '卧龙区', '411303', 3, 'wolongqu', 'W', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1723, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '南召县', '411321', 3, 'nanzhaoxian', 'N', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1724, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '方城县', '411322', 3, 'fangchengxian', 'F', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1725, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '西峡县', '411323', 3, 'xixiaxian', 'X', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1726, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '镇平县', '411324', 3, 'zhenpingxian', 'Z', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1727, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '内乡县', '411325', 3, 'neixiangxian', 'N', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1728, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '淅川县', '411326', 3, 'xichuanxian', 'X', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1729, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '社旗县', '411327', 3, 'sheqixian', 'S', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1730, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '唐河县', '411328', 3, 'tanghexian', 'T', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1731, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '新野县', '411329', 3, 'xinyexian', 'X', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1732, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '桐柏县', '411330', 3, 'tongbaixian', 'T', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1733, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '南阳高新技术产业开发区', '411371', 3, 'nanyanggaoxinjishuchanyekaifaqu', 'N', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1734, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '南阳市城乡一体化示范区', '411372', 3, 'nanyangshichengxiangyitihuashifanqu', 'N', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1735, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '邓州市', '411381', 3, 'dengzhoushi', 'D', 1, NULL, '4113');
INSERT INTO `st_system_area` VALUES (1736, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '商丘市', '4114', 2, 'shangqiushi', 'S', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1737, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '梁园区', '411402', 3, 'liangyuanqu', 'L', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1738, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '睢阳区', '411403', 3, 'suiyangqu', 'S', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1739, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '民权县', '411421', 3, 'minquanxian', 'M', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1740, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '睢县', '411422', 3, 'suixian', 'S', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1741, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '宁陵县', '411423', 3, 'ninglingxian', 'N', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1742, NULL, NULL, NULL, '2025-06-20 13:16:18.398112', '2025-06-20 13:16:18.398112', '柘城县', '411424', 3, 'zhechengxian', 'Z', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1743, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '虞城县', '411425', 3, 'yuchengxian', 'Y', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1744, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '夏邑县', '411426', 3, 'xiayixian', 'X', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1745, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '豫东综合物流产业聚集区', '411471', 3, 'yudongzonghewuliuchanyejujiqu', 'Y', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1746, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '河南商丘经济开发区', '411472', 3, 'henanshangqiujingjikaifaqu', 'H', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1747, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '永城市', '411481', 3, 'yongchengshi', 'Y', 1, NULL, '4114');
INSERT INTO `st_system_area` VALUES (1748, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '信阳市', '4115', 2, 'xinyangshi', 'X', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1749, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '浉河区', '411502', 3, 'shihequ', 'S', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1750, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '平桥区', '411503', 3, 'pingqiaoqu', 'P', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1751, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '罗山县', '411521', 3, 'luoshanxian', 'L', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1752, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '光山县', '411522', 3, 'guangshanxian', 'G', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1753, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '新县', '411523', 3, 'xinxian', 'X', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1754, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '商城县', '411524', 3, 'shangchengxian', 'S', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1755, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '固始县', '411525', 3, 'gushixian', 'G', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1756, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '潢川县', '411526', 3, 'huangchuanxian', 'H', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1757, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '淮滨县', '411527', 3, 'huaibinxian', 'H', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1758, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '息县', '411528', 3, 'xixian', 'X', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1759, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '信阳高新技术产业开发区', '411571', 3, 'xinyanggaoxinjishuchanyekaifaqu', 'X', 1, NULL, '4115');
INSERT INTO `st_system_area` VALUES (1760, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '周口市', '4116', 2, 'zhoukoushi', 'Z', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1761, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '川汇区', '411602', 3, 'chuanhuiqu', 'C', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1762, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '淮阳区', '411603', 3, 'huaiyangqu', 'H', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1763, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '扶沟县', '411621', 3, 'fugouxian', 'F', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1764, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '西华县', '411622', 3, 'xihuaxian', 'X', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1765, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '商水县', '411623', 3, 'shangshuixian', 'S', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1766, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '沈丘县', '411624', 3, 'shenqiuxian', 'S', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1767, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '郸城县', '411625', 3, 'danchengxian', 'D', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1768, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '太康县', '411627', 3, 'taikangxian', 'T', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1769, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '鹿邑县', '411628', 3, 'luyixian', 'L', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1770, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '河南周口经济开发区', '411671', 3, 'henanzhoukoujingjikaifaqu', 'H', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1771, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '项城市', '411681', 3, 'xiangchengshi', 'X', 1, NULL, '4116');
INSERT INTO `st_system_area` VALUES (1772, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '驻马店市', '4117', 2, 'zhumadianshi', 'Z', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1773, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '驿城区', '411702', 3, 'yichengqu', 'Y', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1774, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '西平县', '411721', 3, 'xipingxian', 'X', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1775, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '上蔡县', '411722', 3, 'shangcaixian', 'S', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1776, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '平舆县', '411723', 3, 'pingyuxian', 'P', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1777, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '正阳县', '411724', 3, 'zhengyangxian', 'Z', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1778, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '确山县', '411725', 3, 'queshanxian', 'Q', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1779, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '泌阳县', '411726', 3, 'biyangxian', 'B', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1780, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '汝南县', '411727', 3, 'runanxian', 'R', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1781, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '遂平县', '411728', 3, 'suipingxian', 'S', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1782, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '新蔡县', '411729', 3, 'xincaixian', 'X', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1783, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '河南驻马店经济开发区', '411771', 3, 'henanzhumadianjingjikaifaqu', 'H', 1, NULL, '4117');
INSERT INTO `st_system_area` VALUES (1784, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '省直辖县级行政区划', '4190', 2, 'shengzhixiaxianjixingzhengquhua', 'S', 1, NULL, '41');
INSERT INTO `st_system_area` VALUES (1785, NULL, NULL, NULL, '2025-06-20 13:16:18.399113', '2025-06-20 13:16:18.399113', '济源市', '419001', 3, 'jiyuanshi', 'J', 1, NULL, '4190');
INSERT INTO `st_system_area` VALUES (1786, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '湖北省', '42', 1, 'hubeisheng', 'H', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (1787, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '武汉市', '4201', 2, 'wuhanshi', 'W', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1788, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '江岸区', '420102', 3, 'jianganqu', 'J', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1789, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '江汉区', '420103', 3, 'jianghanqu', 'J', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1790, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '硚口区', '420104', 3, 'qiaokouqu', 'Q', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1791, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '汉阳区', '420105', 3, 'hanyangqu', 'H', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1792, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '武昌区', '420106', 3, 'wuchangqu', 'W', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1793, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '青山区', '420107', 3, 'qingshanqu', 'Q', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1794, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '洪山区', '420111', 3, 'hongshanqu', 'H', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1795, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '东西湖区', '420112', 3, 'dongxihuqu', 'D', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1796, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '汉南区', '420113', 3, 'hannanqu', 'H', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1797, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '蔡甸区', '420114', 3, 'caidianqu', 'C', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1798, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '江夏区', '420115', 3, 'jiangxiaqu', 'J', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1799, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '黄陂区', '420116', 3, 'huangpiqu', 'H', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1800, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '新洲区', '420117', 3, 'xinzhouqu', 'X', 1, NULL, '4201');
INSERT INTO `st_system_area` VALUES (1801, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '黄石市', '4202', 2, 'huangshishi', 'H', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1802, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '黄石港区', '420202', 3, 'huangshigangqu', 'H', 1, NULL, '4202');
INSERT INTO `st_system_area` VALUES (1803, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '西塞山区', '420203', 3, 'xisaishanqu', 'X', 1, NULL, '4202');
INSERT INTO `st_system_area` VALUES (1804, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '下陆区', '420204', 3, 'xialuqu', 'X', 1, NULL, '4202');
INSERT INTO `st_system_area` VALUES (1805, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '铁山区', '420205', 3, 'tieshanqu', 'T', 1, NULL, '4202');
INSERT INTO `st_system_area` VALUES (1806, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '阳新县', '420222', 3, 'yangxinxian', 'Y', 1, NULL, '4202');
INSERT INTO `st_system_area` VALUES (1807, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '大冶市', '420281', 3, 'dayeshi', 'D', 1, NULL, '4202');
INSERT INTO `st_system_area` VALUES (1808, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '十堰市', '4203', 2, 'shiyanshi', 'S', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1809, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '茅箭区', '420302', 3, 'maojianqu', 'M', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1810, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '张湾区', '420303', 3, 'zhangwanqu', 'Z', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1811, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '郧阳区', '420304', 3, 'yunyangqu', 'Y', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1812, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '郧西县', '420322', 3, 'yunxixian', 'Y', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1813, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '竹山县', '420323', 3, 'zhushanxian', 'Z', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1814, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '竹溪县', '420324', 3, 'zhuxixian', 'Z', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1815, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '房县', '420325', 3, 'fangxian', 'F', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1816, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '丹江口市', '420381', 3, 'danjiangkoushi', 'D', 1, NULL, '4203');
INSERT INTO `st_system_area` VALUES (1817, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '宜昌市', '4205', 2, 'yichangshi', 'Y', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1818, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '西陵区', '420502', 3, 'xilingqu', 'X', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1819, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '伍家岗区', '420503', 3, 'wujiagangqu', 'W', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1820, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '点军区', '420504', 3, 'dianjunqu', 'D', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1821, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '猇亭区', '420505', 3, 'xiaotingqu', 'X', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1822, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '夷陵区', '420506', 3, 'yilingqu', 'Y', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1823, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '远安县', '420525', 3, 'yuananxian', 'Y', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1824, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '兴山县', '420526', 3, 'xingshanxian', 'X', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1825, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '秭归县', '420527', 3, 'ziguixian', 'Z', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1826, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '长阳土家族自治县', '420528', 3, 'zhangyangtujiazuzizhixian', 'Z', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1827, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '五峰土家族自治县', '420529', 3, 'wufengtujiazuzizhixian', 'W', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1828, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '宜都市', '420581', 3, 'yidushi', 'Y', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1829, NULL, NULL, NULL, '2025-06-20 13:16:18.400111', '2025-06-20 13:16:18.400111', '当阳市', '420582', 3, 'dangyangshi', 'D', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1830, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '枝江市', '420583', 3, 'zhijiangshi', 'Z', 1, NULL, '4205');
INSERT INTO `st_system_area` VALUES (1831, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '襄阳市', '4206', 2, 'xiangyangshi', 'X', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1832, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '襄城区', '420602', 3, 'xiangchengqu', 'X', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1833, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '樊城区', '420606', 3, 'fanchengqu', 'F', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1834, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '襄州区', '420607', 3, 'xiangzhouqu', 'X', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1835, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '南漳县', '420624', 3, 'nanzhangxian', 'N', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1836, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '谷城县', '420625', 3, 'guchengxian', 'G', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1837, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '保康县', '420626', 3, 'baokangxian', 'B', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1838, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '老河口市', '420682', 3, 'laohekoushi', 'L', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1839, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '枣阳市', '420683', 3, 'zaoyangshi', 'Z', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1840, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '宜城市', '420684', 3, 'yichengshi', 'Y', 1, NULL, '4206');
INSERT INTO `st_system_area` VALUES (1841, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '鄂州市', '4207', 2, 'ezhoushi', 'E', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1842, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '梁子湖区', '420702', 3, 'liangzihuqu', 'L', 1, NULL, '4207');
INSERT INTO `st_system_area` VALUES (1843, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '华容区', '420703', 3, 'huarongqu', 'H', 1, NULL, '4207');
INSERT INTO `st_system_area` VALUES (1844, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '鄂城区', '420704', 3, 'echengqu', 'E', 1, NULL, '4207');
INSERT INTO `st_system_area` VALUES (1845, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '荆门市', '4208', 2, 'jingmenshi', 'J', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1846, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '东宝区', '420802', 3, 'dongbaoqu', 'D', 1, NULL, '4208');
INSERT INTO `st_system_area` VALUES (1847, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '掇刀区', '420804', 3, 'duodaoqu', 'D', 1, NULL, '4208');
INSERT INTO `st_system_area` VALUES (1848, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '沙洋县', '420822', 3, 'shayangxian', 'S', 1, NULL, '4208');
INSERT INTO `st_system_area` VALUES (1849, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '钟祥市', '420881', 3, 'zhongxiangshi', 'Z', 1, NULL, '4208');
INSERT INTO `st_system_area` VALUES (1850, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '京山市', '420882', 3, 'jingshanshi', 'J', 1, NULL, '4208');
INSERT INTO `st_system_area` VALUES (1851, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '孝感市', '4209', 2, 'xiaoganshi', 'X', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1852, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '孝南区', '420902', 3, 'xiaonanqu', 'X', 1, NULL, '4209');
INSERT INTO `st_system_area` VALUES (1853, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '孝昌县', '420921', 3, 'xiaochangxian', 'X', 1, NULL, '4209');
INSERT INTO `st_system_area` VALUES (1854, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '大悟县', '420922', 3, 'dawuxian', 'D', 1, NULL, '4209');
INSERT INTO `st_system_area` VALUES (1855, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '云梦县', '420923', 3, 'yunmengxian', 'Y', 1, NULL, '4209');
INSERT INTO `st_system_area` VALUES (1856, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '应城市', '420981', 3, 'yingchengshi', 'Y', 1, NULL, '4209');
INSERT INTO `st_system_area` VALUES (1857, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '安陆市', '420982', 3, 'anlushi', 'A', 1, NULL, '4209');
INSERT INTO `st_system_area` VALUES (1858, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '汉川市', '420984', 3, 'hanchuanshi', 'H', 1, NULL, '4209');
INSERT INTO `st_system_area` VALUES (1859, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '荆州市', '4210', 2, 'jingzhoushi', 'J', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1860, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '沙市区', '421002', 3, 'shashiqu', 'S', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1861, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '荆州区', '421003', 3, 'jingzhouqu', 'J', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1862, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '公安县', '421022', 3, 'gonganxian', 'G', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1863, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '监利县', '421023', 3, 'jianlixian', 'J', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1864, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '江陵县', '421024', 3, 'jianglingxian', 'J', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1865, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '荆州经济技术开发区', '421071', 3, 'jingzhoujingjijishukaifaqu', 'J', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1866, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '石首市', '421081', 3, 'shishoushi', 'S', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1867, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '洪湖市', '421083', 3, 'honghushi', 'H', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1868, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '松滋市', '421087', 3, 'songzishi', 'S', 1, NULL, '4210');
INSERT INTO `st_system_area` VALUES (1869, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '黄冈市', '4211', 2, 'huanggangshi', 'H', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1870, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '黄州区', '421102', 3, 'huangzhouqu', 'H', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1871, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.401111', '团风县', '421121', 3, 'tuanfengxian', 'T', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1872, NULL, NULL, NULL, '2025-06-20 13:16:18.401111', '2025-06-20 13:16:18.402110', '红安县', '421122', 3, 'honganxian', 'H', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1873, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '罗田县', '421123', 3, 'luotianxian', 'L', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1874, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '英山县', '421124', 3, 'yingshanxian', 'Y', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1875, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '浠水县', '421125', 3, 'xishuixian', 'X', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1876, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '蕲春县', '421126', 3, 'qichunxian', 'Q', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1877, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '黄梅县', '421127', 3, 'huangmeixian', 'H', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1878, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '龙感湖管理区', '421171', 3, 'longganhuguanliqu', 'L', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1879, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '麻城市', '421181', 3, 'machengshi', 'M', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1880, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '武穴市', '421182', 3, 'wuxueshi', 'W', 1, NULL, '4211');
INSERT INTO `st_system_area` VALUES (1881, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '咸宁市', '4212', 2, 'xianningshi', 'X', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1882, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '咸安区', '421202', 3, 'xiananqu', 'X', 1, NULL, '4212');
INSERT INTO `st_system_area` VALUES (1883, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '嘉鱼县', '421221', 3, 'jiayuxian', 'J', 1, NULL, '4212');
INSERT INTO `st_system_area` VALUES (1884, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '通城县', '421222', 3, 'tongchengxian', 'T', 1, NULL, '4212');
INSERT INTO `st_system_area` VALUES (1885, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '崇阳县', '421223', 3, 'chongyangxian', 'C', 1, NULL, '4212');
INSERT INTO `st_system_area` VALUES (1886, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '通山县', '421224', 3, 'tongshanxian', 'T', 1, NULL, '4212');
INSERT INTO `st_system_area` VALUES (1887, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '赤壁市', '421281', 3, 'chibishi', 'C', 1, NULL, '4212');
INSERT INTO `st_system_area` VALUES (1888, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '随州市', '4213', 2, 'suizhoushi', 'S', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1889, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '曾都区', '421303', 3, 'cengdouqu', 'C', 1, NULL, '4213');
INSERT INTO `st_system_area` VALUES (1890, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '随县', '421321', 3, 'suixian', 'S', 1, NULL, '4213');
INSERT INTO `st_system_area` VALUES (1891, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '广水市', '421381', 3, 'guangshuishi', 'G', 1, NULL, '4213');
INSERT INTO `st_system_area` VALUES (1892, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '恩施土家族苗族自治州', '4228', 2, 'enshitujiazumiaozuzizhizhou', 'E', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1893, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '恩施市', '422801', 3, 'enshishi', 'E', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1894, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '利川市', '422802', 3, 'lichuanshi', 'L', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1895, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '建始县', '422822', 3, 'jianshixian', 'J', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1896, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '巴东县', '422823', 3, 'badongxian', 'B', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1897, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '宣恩县', '422825', 3, 'xuanenxian', 'X', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1898, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '咸丰县', '422826', 3, 'xianfengxian', 'X', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1899, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '来凤县', '422827', 3, 'laifengxian', 'L', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1900, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '鹤峰县', '422828', 3, 'hefengxian', 'H', 1, NULL, '4228');
INSERT INTO `st_system_area` VALUES (1901, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '省直辖县级行政区划', '4290', 2, 'shengzhixiaxianjixingzhengquhua', 'S', 1, NULL, '42');
INSERT INTO `st_system_area` VALUES (1902, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '仙桃市', '429004', 3, 'xiantaoshi', 'X', 1, NULL, '4290');
INSERT INTO `st_system_area` VALUES (1903, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '潜江市', '429005', 3, 'qianjiangshi', 'Q', 1, NULL, '4290');
INSERT INTO `st_system_area` VALUES (1904, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '天门市', '429006', 3, 'tianmenshi', 'T', 1, NULL, '4290');
INSERT INTO `st_system_area` VALUES (1905, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '神农架林区', '429021', 3, 'shennongjialinqu', 'S', 1, NULL, '4290');
INSERT INTO `st_system_area` VALUES (1906, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '湖南省', '43', 1, 'hunansheng', 'H', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (1907, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '长沙市', '4301', 2, 'changshashi', 'C', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1908, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '芙蓉区', '430102', 3, 'furongqu', 'F', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1909, NULL, NULL, NULL, '2025-06-20 13:16:18.402110', '2025-06-20 13:16:18.402110', '天心区', '430103', 3, 'tianxinqu', 'T', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1910, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '岳麓区', '430104', 3, 'yueluqu', 'Y', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1911, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '开福区', '430105', 3, 'kaifuqu', 'K', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1912, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '雨花区', '430111', 3, 'yuhuaqu', 'Y', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1913, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '望城区', '430112', 3, 'wangchengqu', 'W', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1914, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '长沙县', '430121', 3, 'changshaxian', 'C', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1915, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '浏阳市', '430181', 3, 'liuyangshi', 'L', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1916, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '宁乡市', '430182', 3, 'ningxiangshi', 'N', 1, NULL, '4301');
INSERT INTO `st_system_area` VALUES (1917, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '株洲市', '4302', 2, 'zhuzhoushi', 'Z', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1918, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '荷塘区', '430202', 3, 'hetangqu', 'H', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1919, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '芦淞区', '430203', 3, 'lusongqu', 'L', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1920, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '石峰区', '430204', 3, 'shifengqu', 'S', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1921, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '天元区', '430211', 3, 'tianyuanqu', 'T', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1922, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '渌口区', '430212', 3, 'lukouqu', 'L', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1923, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '攸县', '430223', 3, 'youxian', 'Y', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1924, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '茶陵县', '430224', 3, 'chalingxian', 'C', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1925, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '炎陵县', '430225', 3, 'yanlingxian', 'Y', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1926, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '云龙示范区', '430271', 3, 'yunlongshifanqu', 'Y', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1927, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '醴陵市', '430281', 3, 'lilingshi', 'L', 1, NULL, '4302');
INSERT INTO `st_system_area` VALUES (1928, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湘潭市', '4303', 2, 'xiangtanshi', 'X', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1929, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '雨湖区', '430302', 3, 'yuhuqu', 'Y', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1930, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '岳塘区', '430304', 3, 'yuetangqu', 'Y', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1931, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湘潭县', '430321', 3, 'xiangtanxian', 'X', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1932, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湖南湘潭高新技术产业园区', '430371', 3, 'hunanxiangtangaoxinjishuchanyeyuanqu', 'H', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1933, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湘潭昭山示范区', '430372', 3, 'xiangtanzhaoshanshifanqu', 'X', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1934, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湘潭九华示范区', '430373', 3, 'xiangtanjiuhuashifanqu', 'X', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1935, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湘乡市', '430381', 3, 'xiangxiangshi', 'X', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1936, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '韶山市', '430382', 3, 'shaoshanshi', 'S', 1, NULL, '4303');
INSERT INTO `st_system_area` VALUES (1937, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '衡阳市', '4304', 2, 'hengyangshi', 'H', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1938, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '珠晖区', '430405', 3, 'zhuhuiqu', 'Z', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1939, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '雁峰区', '430406', 3, 'yanfengqu', 'Y', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1940, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '石鼓区', '430407', 3, 'shiguqu', 'S', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1941, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '蒸湘区', '430408', 3, 'zhengxiangqu', 'Z', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1942, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '南岳区', '430412', 3, 'nanyuequ', 'N', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1943, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '衡阳县', '430421', 3, 'hengyangxian', 'H', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1944, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '衡南县', '430422', 3, 'hengnanxian', 'H', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1945, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '衡山县', '430423', 3, 'hengshanxian', 'H', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1946, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '衡东县', '430424', 3, 'hengdongxian', 'H', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1947, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '祁东县', '430426', 3, 'qidongxian', 'Q', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1948, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '衡阳综合保税区', '430471', 3, 'hengyangzonghebaoshuiqu', 'H', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1949, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湖南衡阳高新技术产业园区', '430472', 3, 'hunanhengyanggaoxinjishuchanyeyuanqu', 'H', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1950, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '湖南衡阳松木经济开发区', '430473', 3, 'hunanhengyangsongmujingjikaifaqu', 'H', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1951, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '耒阳市', '430481', 3, 'leiyangshi', 'L', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1952, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.403110', '常宁市', '430482', 3, 'changningshi', 'C', 1, NULL, '4304');
INSERT INTO `st_system_area` VALUES (1953, NULL, NULL, NULL, '2025-06-20 13:16:18.403110', '2025-06-20 13:16:18.404109', '邵阳市', '4305', 2, 'shaoyangshi', 'S', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1954, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '双清区', '430502', 3, 'shuangqingqu', 'S', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1955, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '大祥区', '430503', 3, 'daxiangqu', 'D', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1956, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '北塔区', '430511', 3, 'beitaqu', 'B', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1957, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '新邵县', '430522', 3, 'xinshaoxian', 'X', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1958, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '邵阳县', '430523', 3, 'shaoyangxian', 'S', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1959, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '隆回县', '430524', 3, 'longhuixian', 'L', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1960, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '洞口县', '430525', 3, 'dongkouxian', 'D', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1961, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '绥宁县', '430527', 3, 'suiningxian', 'S', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1962, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '新宁县', '430528', 3, 'xinningxian', 'X', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1963, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '城步苗族自治县', '430529', 3, 'chengbumiaozuzizhixian', 'C', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1964, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '武冈市', '430581', 3, 'wugangshi', 'W', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1965, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '邵东市', '430582', 3, 'shaodongshi', 'S', 1, NULL, '4305');
INSERT INTO `st_system_area` VALUES (1966, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '岳阳市', '4306', 2, 'yueyangshi', 'Y', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1967, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '岳阳楼区', '430602', 3, 'yueyanglouqu', 'Y', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1968, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '云溪区', '430603', 3, 'yunxiqu', 'Y', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1969, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '君山区', '430611', 3, 'junshanqu', 'J', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1970, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '岳阳县', '430621', 3, 'yueyangxian', 'Y', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1971, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '华容县', '430623', 3, 'huarongxian', 'H', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1972, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '湘阴县', '430624', 3, 'xiangyinxian', 'X', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1973, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '平江县', '430626', 3, 'pingjiangxian', 'P', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1974, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '岳阳市屈原管理区', '430671', 3, 'yueyangshiquyuanguanliqu', 'Y', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1975, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '汨罗市', '430681', 3, 'miluoshi', 'M', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1976, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '临湘市', '430682', 3, 'linxiangshi', 'L', 1, NULL, '4306');
INSERT INTO `st_system_area` VALUES (1977, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '常德市', '4307', 2, 'changdeshi', 'C', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1978, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '武陵区', '430702', 3, 'wulingqu', 'W', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1979, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '鼎城区', '430703', 3, 'dingchengqu', 'D', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1980, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '安乡县', '430721', 3, 'anxiangxian', 'A', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1981, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '汉寿县', '430722', 3, 'hanshouxian', 'H', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1982, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '澧县', '430723', 3, 'lixian', 'L', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1983, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '临澧县', '430724', 3, 'linlixian', 'L', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1984, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '桃源县', '430725', 3, 'taoyuanxian', 'T', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1985, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '石门县', '430726', 3, 'shimenxian', 'S', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1986, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '常德市西洞庭管理区', '430771', 3, 'changdeshixidongtingguanliqu', 'C', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1987, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '津市市', '430781', 3, 'jinshishi', 'J', 1, NULL, '4307');
INSERT INTO `st_system_area` VALUES (1988, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '张家界市', '4308', 2, 'zhangjiajieshi', 'Z', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1989, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '永定区', '430802', 3, 'yongdingqu', 'Y', 1, NULL, '4308');
INSERT INTO `st_system_area` VALUES (1990, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '武陵源区', '430811', 3, 'wulingyuanqu', 'W', 1, NULL, '4308');
INSERT INTO `st_system_area` VALUES (1991, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '慈利县', '430821', 3, 'cilixian', 'C', 1, NULL, '4308');
INSERT INTO `st_system_area` VALUES (1992, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '桑植县', '430822', 3, 'sangzhixian', 'S', 1, NULL, '4308');
INSERT INTO `st_system_area` VALUES (1993, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '益阳市', '4309', 2, 'yiyangshi', 'Y', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (1994, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '资阳区', '430902', 3, 'ziyangqu', 'Z', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (1995, NULL, NULL, NULL, '2025-06-20 13:16:18.404109', '2025-06-20 13:16:18.404109', '赫山区', '430903', 3, 'heshanqu', 'H', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (1996, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '南县', '430921', 3, 'nanxian', 'N', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (1997, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '桃江县', '430922', 3, 'taojiangxian', 'T', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (1998, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '安化县', '430923', 3, 'anhuaxian', 'A', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (1999, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '益阳市大通湖管理区', '430971', 3, 'yiyangshidatonghuguanliqu', 'Y', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (2000, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '湖南益阳高新技术产业园区', '430972', 3, 'hunanyiyanggaoxinjishuchanyeyuanqu', 'H', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (2001, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '沅江市', '430981', 3, 'yuanjiangshi', 'Y', 1, NULL, '4309');
INSERT INTO `st_system_area` VALUES (2002, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '郴州市', '4310', 2, 'chenzhoushi', 'C', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (2003, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '北湖区', '431002', 3, 'beihuqu', 'B', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2004, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '苏仙区', '431003', 3, 'suxianqu', 'S', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2005, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '桂阳县', '431021', 3, 'guiyangxian', 'G', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2006, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '宜章县', '431022', 3, 'yizhangxian', 'Y', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2007, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '永兴县', '431023', 3, 'yongxingxian', 'Y', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2008, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '嘉禾县', '431024', 3, 'jiahexian', 'J', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2009, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '临武县', '431025', 3, 'linwuxian', 'L', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2010, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '汝城县', '431026', 3, 'ruchengxian', 'R', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2011, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '桂东县', '431027', 3, 'guidongxian', 'G', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2012, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '安仁县', '431028', 3, 'anrenxian', 'A', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2013, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '资兴市', '431081', 3, 'zixingshi', 'Z', 1, NULL, '4310');
INSERT INTO `st_system_area` VALUES (2014, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '永州市', '4311', 2, 'yongzhoushi', 'Y', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (2015, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '零陵区', '431102', 3, 'linglingqu', 'L', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2016, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '冷水滩区', '431103', 3, 'lengshuitanqu', 'L', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2017, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '祁阳县', '431121', 3, 'qiyangxian', 'Q', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2018, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '东安县', '431122', 3, 'donganxian', 'D', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2019, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '双牌县', '431123', 3, 'shuangpaixian', 'S', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2020, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '道县', '431124', 3, 'daoxian', 'D', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2021, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '江永县', '431125', 3, 'jiangyongxian', 'J', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2022, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '宁远县', '431126', 3, 'ningyuanxian', 'N', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2023, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '蓝山县', '431127', 3, 'lanshanxian', 'L', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2024, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '新田县', '431128', 3, 'xintianxian', 'X', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2025, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '江华瑶族自治县', '431129', 3, 'jianghuayaozuzizhixian', 'J', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2026, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '永州经济技术开发区', '431171', 3, 'yongzhoujingjijishukaifaqu', 'Y', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2027, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '永州市金洞管理区', '431172', 3, 'yongzhoushijindongguanliqu', 'Y', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2028, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '永州市回龙圩管理区', '431173', 3, 'yongzhoushihuilongweiguanliqu', 'Y', 1, NULL, '4311');
INSERT INTO `st_system_area` VALUES (2029, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '怀化市', '4312', 2, 'huaihuashi', 'H', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (2030, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '鹤城区', '431202', 3, 'hechengqu', 'H', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2031, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '中方县', '431221', 3, 'zhongfangxian', 'Z', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2032, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '沅陵县', '431222', 3, 'yuanlingxian', 'Y', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2033, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '辰溪县', '431223', 3, 'chenxixian', 'C', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2034, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '溆浦县', '431224', 3, 'xupuxian', 'X', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2035, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '会同县', '431225', 3, 'huitongxian', 'H', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2036, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '麻阳苗族自治县', '431226', 3, 'mayangmiaozuzizhixian', 'M', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2037, NULL, NULL, NULL, '2025-06-20 13:16:18.405109', '2025-06-20 13:16:18.405109', '新晃侗族自治县', '431227', 3, 'xinhuangdongzuzizhixian', 'X', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2038, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '芷江侗族自治县', '431228', 3, 'zhijiangdongzuzizhixian', 'Z', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2039, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '靖州苗族侗族自治县', '431229', 3, 'jingzhoumiaozudongzuzizhixian', 'J', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2040, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '通道侗族自治县', '431230', 3, 'tongdaodongzuzizhixian', 'T', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2041, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '怀化市洪江管理区', '431271', 3, 'huaihuashihongjiangguanliqu', 'H', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2042, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '洪江市', '431281', 3, 'hongjiangshi', 'H', 1, NULL, '4312');
INSERT INTO `st_system_area` VALUES (2043, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '娄底市', '4313', 2, 'loudishi', 'L', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (2044, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '娄星区', '431302', 3, 'louxingqu', 'L', 1, NULL, '4313');
INSERT INTO `st_system_area` VALUES (2045, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '双峰县', '431321', 3, 'shuangfengxian', 'S', 1, NULL, '4313');
INSERT INTO `st_system_area` VALUES (2046, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '新化县', '431322', 3, 'xinhuaxian', 'X', 1, NULL, '4313');
INSERT INTO `st_system_area` VALUES (2047, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '冷水江市', '431381', 3, 'lengshuijiangshi', 'L', 1, NULL, '4313');
INSERT INTO `st_system_area` VALUES (2048, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '涟源市', '431382', 3, 'lianyuanshi', 'L', 1, NULL, '4313');
INSERT INTO `st_system_area` VALUES (2049, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '湘西土家族苗族自治州', '4331', 2, 'xiangxitujiazumiaozuzizhizhou', 'X', 1, NULL, '43');
INSERT INTO `st_system_area` VALUES (2050, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '吉首市', '433101', 3, 'jishoushi', 'J', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2051, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '泸溪县', '433122', 3, 'luxixian', 'L', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2052, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '凤凰县', '433123', 3, 'fenghuangxian', 'F', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2053, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '花垣县', '433124', 3, 'huayuanxian', 'H', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2054, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '保靖县', '433125', 3, 'baojingxian', 'B', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2055, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '古丈县', '433126', 3, 'guzhangxian', 'G', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2056, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '永顺县', '433127', 3, 'yongshunxian', 'Y', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2057, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '龙山县', '433130', 3, 'longshanxian', 'L', 1, NULL, '4331');
INSERT INTO `st_system_area` VALUES (2058, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '广东省', '44', 1, 'guangdongsheng', 'G', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2059, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '广州市', '4401', 2, 'guangzhoushi', 'G', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2060, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '荔湾区', '440103', 3, 'liwanqu', 'L', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2061, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '越秀区', '440104', 3, 'yuexiuqu', 'Y', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2062, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '海珠区', '440105', 3, 'haizhuqu', 'H', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2063, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '天河区', '440106', 3, 'tianhequ', 'T', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2064, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '白云区', '440111', 3, 'baiyunqu', 'B', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2065, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '黄埔区', '440112', 3, 'huangpuqu', 'H', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2066, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '番禺区', '440113', 3, 'panyuqu', 'P', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2067, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '花都区', '440114', 3, 'huadouqu', 'H', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2068, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '南沙区', '440115', 3, 'nanshaqu', 'N', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2069, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '从化区', '440117', 3, 'conghuaqu', 'C', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2070, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '增城区', '440118', 3, 'zengchengqu', 'Z', 1, NULL, '4401');
INSERT INTO `st_system_area` VALUES (2071, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '韶关市', '4402', 2, 'shaoguanshi', 'S', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2072, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '武江区', '440203', 3, 'wujiangqu', 'W', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2073, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '浈江区', '440204', 3, 'zhenjiangqu', 'Z', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2074, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '曲江区', '440205', 3, 'qujiangqu', 'Q', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2075, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '始兴县', '440222', 3, 'shixingxian', 'S', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2076, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '仁化县', '440224', 3, 'renhuaxian', 'R', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2077, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '翁源县', '440229', 3, 'wengyuanxian', 'W', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2078, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '乳源瑶族自治县', '440232', 3, 'ruyuanyaozuzizhixian', 'R', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2079, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '新丰县', '440233', 3, 'xinfengxian', 'X', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2080, NULL, NULL, NULL, '2025-06-20 13:16:18.406108', '2025-06-20 13:16:18.406108', '乐昌市', '440281', 3, 'lechangshi', 'L', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2081, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '南雄市', '440282', 3, 'nanxiongshi', 'N', 1, NULL, '4402');
INSERT INTO `st_system_area` VALUES (2082, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '深圳市', '4403', 2, 'shenzhenshi', 'S', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2083, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '罗湖区', '440303', 3, 'luohuqu', 'L', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2084, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '福田区', '440304', 3, 'futianqu', 'F', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2085, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '南山区', '440305', 3, 'nanshanqu', 'N', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2086, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '宝安区', '440306', 3, 'baoanqu', 'B', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2087, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '龙岗区', '440307', 3, 'longgangqu', 'L', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2088, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '盐田区', '440308', 3, 'yantianqu', 'Y', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2089, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '龙华区', '440309', 3, 'longhuaqu', 'L', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2090, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '坪山区', '440310', 3, 'pingshanqu', 'P', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2091, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '光明区', '440311', 3, 'guangmingqu', 'G', 1, NULL, '4403');
INSERT INTO `st_system_area` VALUES (2092, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '珠海市', '4404', 2, 'zhuhaishi', 'Z', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2093, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '香洲区', '440402', 3, 'xiangzhouqu', 'X', 1, NULL, '4404');
INSERT INTO `st_system_area` VALUES (2094, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '斗门区', '440403', 3, 'doumenqu', 'D', 1, NULL, '4404');
INSERT INTO `st_system_area` VALUES (2095, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '金湾区', '440404', 3, 'jinwanqu', 'J', 1, NULL, '4404');
INSERT INTO `st_system_area` VALUES (2096, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '汕头市', '4405', 2, 'shantoushi', 'S', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2097, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '龙湖区', '440507', 3, 'longhuqu', 'L', 1, NULL, '4405');
INSERT INTO `st_system_area` VALUES (2098, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '金平区', '440511', 3, 'jinpingqu', 'J', 1, NULL, '4405');
INSERT INTO `st_system_area` VALUES (2099, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '濠江区', '440512', 3, 'haojiangqu', 'H', 1, NULL, '4405');
INSERT INTO `st_system_area` VALUES (2100, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '潮阳区', '440513', 3, 'chaoyangqu', 'C', 1, NULL, '4405');
INSERT INTO `st_system_area` VALUES (2101, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '潮南区', '440514', 3, 'chaonanqu', 'C', 1, NULL, '4405');
INSERT INTO `st_system_area` VALUES (2102, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '澄海区', '440515', 3, 'chenghaiqu', 'C', 1, NULL, '4405');
INSERT INTO `st_system_area` VALUES (2103, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '南澳县', '440523', 3, 'nanaoxian', 'N', 1, NULL, '4405');
INSERT INTO `st_system_area` VALUES (2104, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '佛山市', '4406', 2, 'foshanshi', 'F', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2105, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '禅城区', '440604', 3, 'chanchengqu', 'C', 1, NULL, '4406');
INSERT INTO `st_system_area` VALUES (2106, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '南海区', '440605', 3, 'nanhaiqu', 'N', 1, NULL, '4406');
INSERT INTO `st_system_area` VALUES (2107, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '顺德区', '440606', 3, 'shundequ', 'S', 1, NULL, '4406');
INSERT INTO `st_system_area` VALUES (2108, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '三水区', '440607', 3, 'sanshuiqu', 'S', 1, NULL, '4406');
INSERT INTO `st_system_area` VALUES (2109, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '高明区', '440608', 3, 'gaomingqu', 'G', 1, NULL, '4406');
INSERT INTO `st_system_area` VALUES (2110, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '江门市', '4407', 2, 'jiangmenshi', 'J', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2111, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '蓬江区', '440703', 3, 'pengjiangqu', 'P', 1, NULL, '4407');
INSERT INTO `st_system_area` VALUES (2112, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '江海区', '440704', 3, 'jianghaiqu', 'J', 1, NULL, '4407');
INSERT INTO `st_system_area` VALUES (2113, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '新会区', '440705', 3, 'xinhuiqu', 'X', 1, NULL, '4407');
INSERT INTO `st_system_area` VALUES (2114, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '台山市', '440781', 3, 'taishanshi', 'T', 1, NULL, '4407');
INSERT INTO `st_system_area` VALUES (2115, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '开平市', '440783', 3, 'kaipingshi', 'K', 1, NULL, '4407');
INSERT INTO `st_system_area` VALUES (2116, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '鹤山市', '440784', 3, 'heshanshi', 'H', 1, NULL, '4407');
INSERT INTO `st_system_area` VALUES (2117, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '恩平市', '440785', 3, 'enpingshi', 'E', 1, NULL, '4407');
INSERT INTO `st_system_area` VALUES (2118, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '湛江市', '4408', 2, 'zhanjiangshi', 'Z', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2119, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '赤坎区', '440802', 3, 'chikanqu', 'C', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2120, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '霞山区', '440803', 3, 'xiashanqu', 'X', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2121, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '坡头区', '440804', 3, 'potouqu', 'P', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2122, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '麻章区', '440811', 3, 'mazhangqu', 'M', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2123, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.407107', '遂溪县', '440823', 3, 'suixixian', 'S', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2124, NULL, NULL, NULL, '2025-06-20 13:16:18.407107', '2025-06-20 13:16:18.408107', '徐闻县', '440825', 3, 'xuwenxian', 'X', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2125, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '廉江市', '440881', 3, 'lianjiangshi', 'L', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2126, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '雷州市', '440882', 3, 'leizhoushi', 'L', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2127, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '吴川市', '440883', 3, 'wuchuanshi', 'W', 1, NULL, '4408');
INSERT INTO `st_system_area` VALUES (2128, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '茂名市', '4409', 2, 'maomingshi', 'M', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2129, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '茂南区', '440902', 3, 'maonanqu', 'M', 1, NULL, '4409');
INSERT INTO `st_system_area` VALUES (2130, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '电白区', '440904', 3, 'dianbaiqu', 'D', 1, NULL, '4409');
INSERT INTO `st_system_area` VALUES (2131, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '高州市', '440981', 3, 'gaozhoushi', 'G', 1, NULL, '4409');
INSERT INTO `st_system_area` VALUES (2132, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '化州市', '440982', 3, 'huazhoushi', 'H', 1, NULL, '4409');
INSERT INTO `st_system_area` VALUES (2133, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '信宜市', '440983', 3, 'xinyishi', 'X', 1, NULL, '4409');
INSERT INTO `st_system_area` VALUES (2134, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '肇庆市', '4412', 2, 'zhaoqingshi', 'Z', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2135, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '端州区', '441202', 3, 'duanzhouqu', 'D', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2136, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '鼎湖区', '441203', 3, 'dinghuqu', 'D', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2137, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '高要区', '441204', 3, 'gaoyaoqu', 'G', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2138, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '广宁县', '441223', 3, 'guangningxian', 'G', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2139, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '怀集县', '441224', 3, 'huaijixian', 'H', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2140, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '封开县', '441225', 3, 'fengkaixian', 'F', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2141, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '德庆县', '441226', 3, 'deqingxian', 'D', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2142, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '四会市', '441284', 3, 'sihuishi', 'S', 1, NULL, '4412');
INSERT INTO `st_system_area` VALUES (2143, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '惠州市', '4413', 2, 'huizhoushi', 'H', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2144, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '惠城区', '441302', 3, 'huichengqu', 'H', 1, NULL, '4413');
INSERT INTO `st_system_area` VALUES (2145, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '惠阳区', '441303', 3, 'huiyangqu', 'H', 1, NULL, '4413');
INSERT INTO `st_system_area` VALUES (2146, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '博罗县', '441322', 3, 'boluoxian', 'B', 1, NULL, '4413');
INSERT INTO `st_system_area` VALUES (2147, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '惠东县', '441323', 3, 'huidongxian', 'H', 1, NULL, '4413');
INSERT INTO `st_system_area` VALUES (2148, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '龙门县', '441324', 3, 'longmenxian', 'L', 1, NULL, '4413');
INSERT INTO `st_system_area` VALUES (2149, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '梅州市', '4414', 2, 'meizhoushi', 'M', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2150, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '梅江区', '441402', 3, 'meijiangqu', 'M', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2151, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '梅县区', '441403', 3, 'meixianqu', 'M', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2152, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '大埔县', '441422', 3, 'dabuxian', 'D', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2153, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '丰顺县', '441423', 3, 'fengshunxian', 'F', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2154, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '五华县', '441424', 3, 'wuhuaxian', 'W', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2155, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '平远县', '441426', 3, 'pingyuanxian', 'P', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2156, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '蕉岭县', '441427', 3, 'jiaolingxian', 'J', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2157, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '兴宁市', '441481', 3, 'xingningshi', 'X', 1, NULL, '4414');
INSERT INTO `st_system_area` VALUES (2158, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '汕尾市', '4415', 2, 'shanweishi', 'S', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2159, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '城区', '441502', 3, 'chengqu', 'C', 1, NULL, '4415');
INSERT INTO `st_system_area` VALUES (2160, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '海丰县', '441521', 3, 'haifengxian', 'H', 1, NULL, '4415');
INSERT INTO `st_system_area` VALUES (2161, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '陆河县', '441523', 3, 'luhexian', 'L', 1, NULL, '4415');
INSERT INTO `st_system_area` VALUES (2162, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '陆丰市', '441581', 3, 'lufengshi', 'L', 1, NULL, '4415');
INSERT INTO `st_system_area` VALUES (2163, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '河源市', '4416', 2, 'heyuanshi', 'H', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2164, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '源城区', '441602', 3, 'yuanchengqu', 'Y', 1, NULL, '4416');
INSERT INTO `st_system_area` VALUES (2165, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '紫金县', '441621', 3, 'zijinxian', 'Z', 1, NULL, '4416');
INSERT INTO `st_system_area` VALUES (2166, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '龙川县', '441622', 3, 'longchuanxian', 'L', 1, NULL, '4416');
INSERT INTO `st_system_area` VALUES (2167, NULL, NULL, NULL, '2025-06-20 13:16:18.408107', '2025-06-20 13:16:18.408107', '连平县', '441623', 3, 'lianpingxian', 'L', 1, NULL, '4416');
INSERT INTO `st_system_area` VALUES (2168, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '和平县', '441624', 3, 'hepingxian', 'H', 1, NULL, '4416');
INSERT INTO `st_system_area` VALUES (2169, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '东源县', '441625', 3, 'dongyuanxian', 'D', 1, NULL, '4416');
INSERT INTO `st_system_area` VALUES (2170, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '阳江市', '4417', 2, 'yangjiangshi', 'Y', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2171, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '江城区', '441702', 3, 'jiangchengqu', 'J', 1, NULL, '4417');
INSERT INTO `st_system_area` VALUES (2172, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '阳东区', '441704', 3, 'yangdongqu', 'Y', 1, NULL, '4417');
INSERT INTO `st_system_area` VALUES (2173, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '阳西县', '441721', 3, 'yangxixian', 'Y', 1, NULL, '4417');
INSERT INTO `st_system_area` VALUES (2174, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '阳春市', '441781', 3, 'yangchunshi', 'Y', 1, NULL, '4417');
INSERT INTO `st_system_area` VALUES (2175, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '清远市', '4418', 2, 'qingyuanshi', 'Q', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2176, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '清城区', '441802', 3, 'qingchengqu', 'Q', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2177, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '清新区', '441803', 3, 'qingxinqu', 'Q', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2178, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '佛冈县', '441821', 3, 'fugangxian', 'F', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2179, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '阳山县', '441823', 3, 'yangshanxian', 'Y', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2180, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '连山壮族瑶族自治县', '441825', 3, 'lianshanzhuangzuyaozuzizhixian', 'L', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2181, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '连南瑶族自治县', '441826', 3, 'liannanyaozuzizhixian', 'L', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2182, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '英德市', '441881', 3, 'yingdeshi', 'Y', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2183, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '连州市', '441882', 3, 'lianzhoushi', 'L', 1, NULL, '4418');
INSERT INTO `st_system_area` VALUES (2184, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '东莞市', '4419', 2, 'dongguanshi', 'D', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2185, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '东城街道', '441900003', 3, 'dongchengjiedao', 'D', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2186, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '南城街道', '441900004', 3, 'nanchengjiedao', 'N', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2187, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '万江街道', '441900005', 3, 'wanjiangjiedao', 'W', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2188, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '莞城街道', '441900006', 3, 'guanchengjiedao', 'G', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2189, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '石碣镇', '441900101', 3, 'shijiezhen', 'S', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2190, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '石龙镇', '441900102', 3, 'shilongzhen', 'S', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2191, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '茶山镇', '441900103', 3, 'chashanzhen', 'C', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2192, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '石排镇', '441900104', 3, 'shipaizhen', 'S', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2193, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '企石镇', '441900105', 3, 'qishizhen', 'Q', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2194, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '横沥镇', '441900106', 3, 'henglizhen', 'H', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2195, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '桥头镇', '441900107', 3, 'qiaotouzhen', 'Q', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2196, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '谢岗镇', '441900108', 3, 'xiegangzhen', 'X', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2197, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '东坑镇', '441900109', 3, 'dongkengzhen', 'D', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2198, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '常平镇', '441900110', 3, 'changpingzhen', 'C', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2199, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '寮步镇', '441900111', 3, 'liaobuzhen', 'L', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2200, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '樟木头镇', '441900112', 3, 'zhangmutouzhen', 'Z', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2201, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '大朗镇', '441900113', 3, 'dalangzhen', 'D', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2202, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '黄江镇', '441900114', 3, 'huangjiangzhen', 'H', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2203, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '清溪镇', '441900115', 3, 'qingxizhen', 'Q', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2204, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '塘厦镇', '441900116', 3, 'tangshazhen', 'T', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2205, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '凤岗镇', '441900117', 3, 'fenggangzhen', 'F', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2206, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '大岭山镇', '441900118', 3, 'dalingshanzhen', 'D', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2207, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '长安镇', '441900119', 3, 'changanzhen', 'C', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2208, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '虎门镇', '441900121', 3, 'humenzhen', 'H', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2209, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '厚街镇', '441900122', 3, 'houjiezhen', 'H', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2210, NULL, NULL, NULL, '2025-06-20 13:16:18.409106', '2025-06-20 13:16:18.409106', '沙田镇', '441900123', 3, 'shatianzhen', 'S', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2211, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '道滘镇', '441900124', 3, 'daojiaozhen', 'D', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2212, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '洪梅镇', '441900125', 3, 'hongmeizhen', 'H', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2213, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '麻涌镇', '441900126', 3, 'mayongzhen', 'M', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2214, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '望牛墩镇', '441900127', 3, 'wangniudunzhen', 'W', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2215, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '中堂镇', '441900128', 3, 'zhongtangzhen', 'Z', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2216, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '高埗镇', '441900129', 3, 'gaobuzhen', 'G', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2217, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '松山湖', '441900401', 3, 'songshanhu', 'S', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2218, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '东莞港', '441900402', 3, 'dongguangang', 'D', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2219, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '东莞生态园', '441900403', 3, 'dongguanshengtaiyuan', 'D', 1, NULL, '4419');
INSERT INTO `st_system_area` VALUES (2220, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '中山市', '4420', 2, 'zhongshanshi', 'Z', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2221, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '石岐街道', '442000001', 3, 'shiqijiedao', 'S', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2222, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '东区街道', '442000002', 3, 'dongqujiedao', 'D', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2223, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '中山港街道', '442000003', 3, 'zhongshangangjiedao', 'Z', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2224, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '西区街道', '442000004', 3, 'xiqujiedao', 'X', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2225, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '南区街道', '442000005', 3, 'nanqujiedao', 'N', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2226, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '五桂山街道', '442000006', 3, 'wuguishanjiedao', 'W', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2227, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '小榄镇', '442000100', 3, 'xiaolanzhen', 'X', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2228, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '黄圃镇', '442000101', 3, 'huangpuzhen', 'H', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2229, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '民众镇', '442000102', 3, 'minzhongzhen', 'M', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2230, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '东凤镇', '442000103', 3, 'dongfengzhen', 'D', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2231, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '东升镇', '442000104', 3, 'dongshengzhen', 'D', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2232, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '古镇镇', '442000105', 3, 'guzhenzhen', 'G', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2233, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '沙溪镇', '442000106', 3, 'shaxizhen', 'S', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2234, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '坦洲镇', '442000107', 3, 'tanzhouzhen', 'T', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2235, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '港口镇', '442000108', 3, 'gangkouzhen', 'G', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2236, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '三角镇', '442000109', 3, 'sanjiaozhen', 'S', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2237, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '横栏镇', '442000110', 3, 'henglanzhen', 'H', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2238, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '南头镇', '442000111', 3, 'nantouzhen', 'N', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2239, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '阜沙镇', '442000112', 3, 'fushazhen', 'F', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2240, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '南朗镇', '442000113', 3, 'nanlangzhen', 'N', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2241, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '三乡镇', '442000114', 3, 'sanxiangzhen', 'S', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2242, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '板芙镇', '442000115', 3, 'banfuzhen', 'B', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2243, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '大涌镇', '442000116', 3, 'dayongzhen', 'D', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2244, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '神湾镇', '442000117', 3, 'shenwanzhen', 'S', 1, NULL, '4420');
INSERT INTO `st_system_area` VALUES (2245, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '潮州市', '4451', 2, 'chaozhoushi', 'C', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2246, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '湘桥区', '445102', 3, 'xiangqiaoqu', 'X', 1, NULL, '4451');
INSERT INTO `st_system_area` VALUES (2247, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '潮安区', '445103', 3, 'chaoanqu', 'C', 1, NULL, '4451');
INSERT INTO `st_system_area` VALUES (2248, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '饶平县', '445122', 3, 'raopingxian', 'R', 1, NULL, '4451');
INSERT INTO `st_system_area` VALUES (2249, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '揭阳市', '4452', 2, 'jieyangshi', 'J', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2250, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.410106', '榕城区', '445202', 3, 'rongchengqu', 'R', 1, NULL, '4452');
INSERT INTO `st_system_area` VALUES (2251, NULL, NULL, NULL, '2025-06-20 13:16:18.410106', '2025-06-20 13:16:18.411105', '揭东区', '445203', 3, 'jiedongqu', 'J', 1, NULL, '4452');
INSERT INTO `st_system_area` VALUES (2252, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '揭西县', '445222', 3, 'jiexixian', 'J', 1, NULL, '4452');
INSERT INTO `st_system_area` VALUES (2253, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '惠来县', '445224', 3, 'huilaixian', 'H', 1, NULL, '4452');
INSERT INTO `st_system_area` VALUES (2254, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '普宁市', '445281', 3, 'puningshi', 'P', 1, NULL, '4452');
INSERT INTO `st_system_area` VALUES (2255, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '云浮市', '4453', 2, 'yunfushi', 'Y', 1, NULL, '44');
INSERT INTO `st_system_area` VALUES (2256, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '云城区', '445302', 3, 'yunchengqu', 'Y', 1, NULL, '4453');
INSERT INTO `st_system_area` VALUES (2257, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '云安区', '445303', 3, 'yunanqu', 'Y', 1, NULL, '4453');
INSERT INTO `st_system_area` VALUES (2258, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '新兴县', '445321', 3, 'xinxingxian', 'X', 1, NULL, '4453');
INSERT INTO `st_system_area` VALUES (2259, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '郁南县', '445322', 3, 'yunanxian', 'Y', 1, NULL, '4453');
INSERT INTO `st_system_area` VALUES (2260, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '罗定市', '445381', 3, 'luodingshi', 'L', 1, NULL, '4453');
INSERT INTO `st_system_area` VALUES (2261, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '广西壮族自治区', '45', 1, 'guangxizhuangzuzizhiqu', 'G', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2262, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '南宁市', '4501', 2, 'nanningshi', 'N', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2263, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '兴宁区', '450102', 3, 'xingningqu', 'X', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2264, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '青秀区', '450103', 3, 'qingxiuqu', 'Q', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2265, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '江南区', '450105', 3, 'jiangnanqu', 'J', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2266, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '西乡塘区', '450107', 3, 'xixiangtangqu', 'X', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2267, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '良庆区', '450108', 3, 'liangqingqu', 'L', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2268, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '邕宁区', '450109', 3, 'yongningqu', 'Y', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2269, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '武鸣区', '450110', 3, 'wumingqu', 'W', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2270, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '隆安县', '450123', 3, 'longanxian', 'L', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2271, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '马山县', '450124', 3, 'mashanxian', 'M', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2272, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '上林县', '450125', 3, 'shanglinxian', 'S', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2273, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '宾阳县', '450126', 3, 'binyangxian', 'B', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2274, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '横县', '450127', 3, 'hengxian', 'H', 1, NULL, '4501');
INSERT INTO `st_system_area` VALUES (2275, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '柳州市', '4502', 2, 'liuzhoushi', 'L', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2276, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '城中区', '450202', 3, 'chengzhongqu', 'C', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2277, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '鱼峰区', '450203', 3, 'yufengqu', 'Y', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2278, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '柳南区', '450204', 3, 'liunanqu', 'L', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2279, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '柳北区', '450205', 3, 'liubeiqu', 'L', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2280, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '柳江区', '450206', 3, 'liujiangqu', 'L', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2281, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '柳城县', '450222', 3, 'liuchengxian', 'L', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2282, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '鹿寨县', '450223', 3, 'luzhaixian', 'L', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2283, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '融安县', '450224', 3, 'ronganxian', 'R', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2284, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '融水苗族自治县', '450225', 3, 'rongshuimiaozuzizhixian', 'R', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2285, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '三江侗族自治县', '450226', 3, 'sanjiangdongzuzizhixian', 'S', 1, NULL, '4502');
INSERT INTO `st_system_area` VALUES (2286, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '桂林市', '4503', 2, 'guilinshi', 'G', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2287, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '秀峰区', '450302', 3, 'xiufengqu', 'X', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2288, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '叠彩区', '450303', 3, 'diecaiqu', 'D', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2289, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '象山区', '450304', 3, 'xiangshanqu', 'X', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2290, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '七星区', '450305', 3, 'qixingqu', 'Q', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2291, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '雁山区', '450311', 3, 'yanshanqu', 'Y', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2292, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '临桂区', '450312', 3, 'linguiqu', 'L', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2293, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '阳朔县', '450321', 3, 'yangshuoxian', 'Y', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2294, NULL, NULL, NULL, '2025-06-20 13:16:18.411105', '2025-06-20 13:16:18.411105', '灵川县', '450323', 3, 'lingchuanxian', 'L', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2295, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '全州县', '450324', 3, 'quanzhouxian', 'Q', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2296, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '兴安县', '450325', 3, 'xinganxian', 'X', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2297, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '永福县', '450326', 3, 'yongfuxian', 'Y', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2298, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '灌阳县', '450327', 3, 'guanyangxian', 'G', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2299, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '龙胜各族自治县', '450328', 3, 'longshenggezuzizhixian', 'L', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2300, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '资源县', '450329', 3, 'ziyuanxian', 'Z', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2301, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '平乐县', '450330', 3, 'pinglexian', 'P', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2302, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '恭城瑶族自治县', '450332', 3, 'gongchengyaozuzizhixian', 'G', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2303, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '荔浦市', '450381', 3, 'lipushi', 'L', 1, NULL, '4503');
INSERT INTO `st_system_area` VALUES (2304, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '梧州市', '4504', 2, 'wuzhoushi', 'W', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2305, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '万秀区', '450403', 3, 'wanxiuqu', 'W', 1, NULL, '4504');
INSERT INTO `st_system_area` VALUES (2306, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '长洲区', '450405', 3, 'zhangzhouqu', 'Z', 1, NULL, '4504');
INSERT INTO `st_system_area` VALUES (2307, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '龙圩区', '450406', 3, 'longweiqu', 'L', 1, NULL, '4504');
INSERT INTO `st_system_area` VALUES (2308, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '苍梧县', '450421', 3, 'cangwuxian', 'C', 1, NULL, '4504');
INSERT INTO `st_system_area` VALUES (2309, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '藤县', '450422', 3, 'tengxian', 'T', 1, NULL, '4504');
INSERT INTO `st_system_area` VALUES (2310, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '蒙山县', '450423', 3, 'mengshanxian', 'M', 1, NULL, '4504');
INSERT INTO `st_system_area` VALUES (2311, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '岑溪市', '450481', 3, 'cenxishi', 'C', 1, NULL, '4504');
INSERT INTO `st_system_area` VALUES (2312, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '北海市', '4505', 2, 'beihaishi', 'B', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2313, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '海城区', '450502', 3, 'haichengqu', 'H', 1, NULL, '4505');
INSERT INTO `st_system_area` VALUES (2314, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '银海区', '450503', 3, 'yinhaiqu', 'Y', 1, NULL, '4505');
INSERT INTO `st_system_area` VALUES (2315, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '铁山港区', '450512', 3, 'tieshangangqu', 'T', 1, NULL, '4505');
INSERT INTO `st_system_area` VALUES (2316, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '合浦县', '450521', 3, 'hepuxian', 'H', 1, NULL, '4505');
INSERT INTO `st_system_area` VALUES (2317, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '防城港市', '4506', 2, 'fangchenggangshi', 'F', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2318, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '港口区', '450602', 3, 'gangkouqu', 'G', 1, NULL, '4506');
INSERT INTO `st_system_area` VALUES (2319, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '防城区', '450603', 3, 'fangchengqu', 'F', 1, NULL, '4506');
INSERT INTO `st_system_area` VALUES (2320, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '上思县', '450621', 3, 'shangsixian', 'S', 1, NULL, '4506');
INSERT INTO `st_system_area` VALUES (2321, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '东兴市', '450681', 3, 'dongxingshi', 'D', 1, NULL, '4506');
INSERT INTO `st_system_area` VALUES (2322, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '钦州市', '4507', 2, 'qinzhoushi', 'Q', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2323, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '钦南区', '450702', 3, 'qinnanqu', 'Q', 1, NULL, '4507');
INSERT INTO `st_system_area` VALUES (2324, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '钦北区', '450703', 3, 'qinbeiqu', 'Q', 1, NULL, '4507');
INSERT INTO `st_system_area` VALUES (2325, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '灵山县', '450721', 3, 'lingshanxian', 'L', 1, NULL, '4507');
INSERT INTO `st_system_area` VALUES (2326, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '浦北县', '450722', 3, 'pubeixian', 'P', 1, NULL, '4507');
INSERT INTO `st_system_area` VALUES (2327, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '贵港市', '4508', 2, 'guigangshi', 'G', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2328, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '港北区', '450802', 3, 'gangbeiqu', 'G', 1, NULL, '4508');
INSERT INTO `st_system_area` VALUES (2329, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '港南区', '450803', 3, 'gangnanqu', 'G', 1, NULL, '4508');
INSERT INTO `st_system_area` VALUES (2330, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '覃塘区', '450804', 3, 'tantangqu', 'T', 1, NULL, '4508');
INSERT INTO `st_system_area` VALUES (2331, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '平南县', '450821', 3, 'pingnanxian', 'P', 1, NULL, '4508');
INSERT INTO `st_system_area` VALUES (2332, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '桂平市', '450881', 3, 'guipingshi', 'G', 1, NULL, '4508');
INSERT INTO `st_system_area` VALUES (2333, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '玉林市', '4509', 2, 'yulinshi', 'Y', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2334, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '玉州区', '450902', 3, 'yuzhouqu', 'Y', 1, NULL, '4509');
INSERT INTO `st_system_area` VALUES (2335, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '福绵区', '450903', 3, 'fumianqu', 'F', 1, NULL, '4509');
INSERT INTO `st_system_area` VALUES (2336, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '容县', '450921', 3, 'rongxian', 'R', 1, NULL, '4509');
INSERT INTO `st_system_area` VALUES (2337, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.412104', '陆川县', '450922', 3, 'luchuanxian', 'L', 1, NULL, '4509');
INSERT INTO `st_system_area` VALUES (2338, NULL, NULL, NULL, '2025-06-20 13:16:18.412104', '2025-06-20 13:16:18.413104', '博白县', '450923', 3, 'bobaixian', 'B', 1, NULL, '4509');
INSERT INTO `st_system_area` VALUES (2339, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '兴业县', '450924', 3, 'xingyexian', 'X', 1, NULL, '4509');
INSERT INTO `st_system_area` VALUES (2340, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '北流市', '450981', 3, 'beiliushi', 'B', 1, NULL, '4509');
INSERT INTO `st_system_area` VALUES (2341, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '百色市', '4510', 2, 'baiseshi', 'B', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2342, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '右江区', '451002', 3, 'youjiangqu', 'Y', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2343, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '田阳区', '451003', 3, 'tianyangqu', 'T', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2344, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '田东县', '451022', 3, 'tiandongxian', 'T', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2345, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '德保县', '451024', 3, 'debaoxian', 'D', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2346, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '那坡县', '451026', 3, 'napoxian', 'N', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2347, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '凌云县', '451027', 3, 'lingyunxian', 'L', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2348, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '乐业县', '451028', 3, 'leyexian', 'L', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2349, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '田林县', '451029', 3, 'tianlinxian', 'T', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2350, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '西林县', '451030', 3, 'xilinxian', 'X', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2351, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '隆林各族自治县', '451031', 3, 'longlingezuzizhixian', 'L', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2352, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '靖西市', '451081', 3, 'jingxishi', 'J', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2353, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '平果市', '451082', 3, 'pingguoshi', 'P', 1, NULL, '4510');
INSERT INTO `st_system_area` VALUES (2354, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '贺州市', '4511', 2, 'hezhoushi', 'H', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2355, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '八步区', '451102', 3, 'babuqu', 'B', 1, NULL, '4511');
INSERT INTO `st_system_area` VALUES (2356, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '平桂区', '451103', 3, 'pingguiqu', 'P', 1, NULL, '4511');
INSERT INTO `st_system_area` VALUES (2357, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '昭平县', '451121', 3, 'zhaopingxian', 'Z', 1, NULL, '4511');
INSERT INTO `st_system_area` VALUES (2358, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '钟山县', '451122', 3, 'zhongshanxian', 'Z', 1, NULL, '4511');
INSERT INTO `st_system_area` VALUES (2359, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '富川瑶族自治县', '451123', 3, 'fuchuanyaozuzizhixian', 'F', 1, NULL, '4511');
INSERT INTO `st_system_area` VALUES (2360, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '河池市', '4512', 2, 'hechishi', 'H', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2361, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '金城江区', '451202', 3, 'jinchengjiangqu', 'J', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2362, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '宜州区', '451203', 3, 'yizhouqu', 'Y', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2363, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '南丹县', '451221', 3, 'nandanxian', 'N', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2364, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '天峨县', '451222', 3, 'tianexian', 'T', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2365, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '凤山县', '451223', 3, 'fengshanxian', 'F', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2366, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '东兰县', '451224', 3, 'donglanxian', 'D', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2367, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '罗城仫佬族自治县', '451225', 3, 'luochengmulaozuzizhixian', 'L', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2368, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '环江毛南族自治县', '451226', 3, 'huanjiangmaonanzuzizhixian', 'H', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2369, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '巴马瑶族自治县', '451227', 3, 'bamayaozuzizhixian', 'B', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2370, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '都安瑶族自治县', '451228', 3, 'douanyaozuzizhixian', 'D', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2371, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '大化瑶族自治县', '451229', 3, 'dahuayaozuzizhixian', 'D', 1, NULL, '4512');
INSERT INTO `st_system_area` VALUES (2372, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '来宾市', '4513', 2, 'laibinshi', 'L', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2373, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '兴宾区', '451302', 3, 'xingbinqu', 'X', 1, NULL, '4513');
INSERT INTO `st_system_area` VALUES (2374, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '忻城县', '451321', 3, 'xinchengxian', 'X', 1, NULL, '4513');
INSERT INTO `st_system_area` VALUES (2375, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '象州县', '451322', 3, 'xiangzhouxian', 'X', 1, NULL, '4513');
INSERT INTO `st_system_area` VALUES (2376, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '武宣县', '451323', 3, 'wuxuanxian', 'W', 1, NULL, '4513');
INSERT INTO `st_system_area` VALUES (2377, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '金秀瑶族自治县', '451324', 3, 'jinxiuyaozuzizhixian', 'J', 1, NULL, '4513');
INSERT INTO `st_system_area` VALUES (2378, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '合山市', '451381', 3, 'heshanshi', 'H', 1, NULL, '4513');
INSERT INTO `st_system_area` VALUES (2379, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '崇左市', '4514', 2, 'chongzuoshi', 'C', 1, NULL, '45');
INSERT INTO `st_system_area` VALUES (2380, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '江州区', '451402', 3, 'jiangzhouqu', 'J', 1, NULL, '4514');
INSERT INTO `st_system_area` VALUES (2381, NULL, NULL, NULL, '2025-06-20 13:16:18.413104', '2025-06-20 13:16:18.413104', '扶绥县', '451421', 3, 'fusuixian', 'F', 1, NULL, '4514');
INSERT INTO `st_system_area` VALUES (2382, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '宁明县', '451422', 3, 'ningmingxian', 'N', 1, NULL, '4514');
INSERT INTO `st_system_area` VALUES (2383, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '龙州县', '451423', 3, 'longzhouxian', 'L', 1, NULL, '4514');
INSERT INTO `st_system_area` VALUES (2384, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '大新县', '451424', 3, 'daxinxian', 'D', 1, NULL, '4514');
INSERT INTO `st_system_area` VALUES (2385, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '天等县', '451425', 3, 'tiandengxian', 'T', 1, NULL, '4514');
INSERT INTO `st_system_area` VALUES (2386, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '凭祥市', '451481', 3, 'pingxiangshi', 'P', 1, NULL, '4514');
INSERT INTO `st_system_area` VALUES (2387, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '海南省', '46', 1, 'hainansheng', 'H', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2388, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '海口市', '4601', 2, 'haikoushi', 'H', 1, NULL, '46');
INSERT INTO `st_system_area` VALUES (2389, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '秀英区', '460105', 3, 'xiuyingqu', 'X', 1, NULL, '4601');
INSERT INTO `st_system_area` VALUES (2390, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '龙华区', '460106', 3, 'longhuaqu', 'L', 1, NULL, '4601');
INSERT INTO `st_system_area` VALUES (2391, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '琼山区', '460107', 3, 'qiongshanqu', 'Q', 1, NULL, '4601');
INSERT INTO `st_system_area` VALUES (2392, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '美兰区', '460108', 3, 'meilanqu', 'M', 1, NULL, '4601');
INSERT INTO `st_system_area` VALUES (2393, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '三亚市', '4602', 2, 'sanyashi', 'S', 1, NULL, '46');
INSERT INTO `st_system_area` VALUES (2394, NULL, NULL, NULL, '2025-06-20 13:16:18.414325', '2025-06-20 13:16:18.414325', '海棠区', '460202', 3, 'haitangqu', 'H', 1, NULL, '4602');
INSERT INTO `st_system_area` VALUES (2395, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '吉阳区', '460203', 3, 'jiyangqu', 'J', 1, NULL, '4602');
INSERT INTO `st_system_area` VALUES (2396, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '天涯区', '460204', 3, 'tianyaqu', 'T', 1, NULL, '4602');
INSERT INTO `st_system_area` VALUES (2397, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '崖州区', '460205', 3, 'yazhouqu', 'Y', 1, NULL, '4602');
INSERT INTO `st_system_area` VALUES (2398, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '三沙市', '4603', 2, 'sanshashi', 'S', 1, NULL, '46');
INSERT INTO `st_system_area` VALUES (2399, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '西沙群岛', '460321', 3, 'xishaqundao', 'X', 1, NULL, '4603');
INSERT INTO `st_system_area` VALUES (2400, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '南沙群岛', '460322', 3, 'nanshaqundao', 'N', 1, NULL, '4603');
INSERT INTO `st_system_area` VALUES (2401, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '中沙群岛的岛礁及其海域', '460323', 3, 'zhongshaqundaodedaojiaojiqihaiyu', 'Z', 1, NULL, '4603');
INSERT INTO `st_system_area` VALUES (2402, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '儋州市', '4604', 2, 'danzhoushi', 'D', 1, NULL, '46');
INSERT INTO `st_system_area` VALUES (2403, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '那大镇', '460400100', 3, 'nadazhen', 'N', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2404, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '和庆镇', '460400101', 3, 'heqingzhen', 'H', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2405, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '南丰镇', '460400102', 3, 'nanfengzhen', 'N', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2406, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '大成镇', '460400103', 3, 'dachengzhen', 'D', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2407, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '雅星镇', '460400104', 3, 'yaxingzhen', 'Y', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2408, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '兰洋镇', '460400105', 3, 'lanyangzhen', 'L', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2409, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '光村镇', '460400106', 3, 'guangcunzhen', 'G', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2410, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '木棠镇', '460400107', 3, 'mutangzhen', 'M', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2411, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '海头镇', '460400108', 3, 'haitouzhen', 'H', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2412, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '峨蔓镇', '460400109', 3, 'emanzhen', 'E', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2413, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '王五镇', '460400111', 3, 'wangwuzhen', 'W', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2414, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '白马井镇', '460400112', 3, 'baimajingzhen', 'B', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2415, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '中和镇', '460400113', 3, 'zhonghezhen', 'Z', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2416, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '排浦镇', '460400114', 3, 'paipuzhen', 'P', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2417, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '东成镇', '460400115', 3, 'dongchengzhen', 'D', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2418, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '新州镇', '460400116', 3, 'xinzhouzhen', 'X', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2419, NULL, NULL, NULL, '2025-06-20 13:16:18.415105', '2025-06-20 13:16:18.415105', '洋浦经济开发区', '460400499', 3, 'yangpujingjikaifaqu', 'Y', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2420, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '华南热作学院', '460400500', 3, 'huananrezuoxueyuan', 'H', 1, NULL, '4604');
INSERT INTO `st_system_area` VALUES (2421, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '省直辖县级行政区划', '4690', 2, 'shengzhixiaxianjixingzhengquhua', 'S', 1, NULL, '46');
INSERT INTO `st_system_area` VALUES (2422, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '五指山市', '469001', 3, 'wuzhishanshi', 'W', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2423, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '琼海市', '469002', 3, 'qionghaishi', 'Q', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2424, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '文昌市', '469005', 3, 'wenchangshi', 'W', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2425, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '万宁市', '469006', 3, 'wanningshi', 'W', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2426, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '东方市', '469007', 3, 'dongfangshi', 'D', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2427, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '定安县', '469021', 3, 'dinganxian', 'D', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2428, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '屯昌县', '469022', 3, 'tunchangxian', 'T', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2429, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '澄迈县', '469023', 3, 'chengmaixian', 'C', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2430, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '临高县', '469024', 3, 'lingaoxian', 'L', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2431, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '白沙黎族自治县', '469025', 3, 'baishalizuzizhixian', 'B', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2432, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '昌江黎族自治县', '469026', 3, 'changjianglizuzizhixian', 'C', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2433, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '乐东黎族自治县', '469027', 3, 'ledonglizuzizhixian', 'L', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2434, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '陵水黎族自治县', '469028', 3, 'lingshuilizuzizhixian', 'L', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2435, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '保亭黎族苗族自治县', '469029', 3, 'baotinglizumiaozuzizhixian', 'B', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2436, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '琼中黎族苗族自治县', '469030', 3, 'qiongzhonglizumiaozuzizhixian', 'Q', 1, NULL, '4690');
INSERT INTO `st_system_area` VALUES (2437, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '重庆市', '50', 1, 'chongqingshi', 'C', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2438, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '市辖区', '5001', 2, 'shixiaqu', 'S', 1, NULL, '50');
INSERT INTO `st_system_area` VALUES (2439, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '万州区', '500101', 3, 'wanzhouqu', 'W', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2440, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '涪陵区', '500102', 3, 'fulingqu', 'F', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2441, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '渝中区', '500103', 3, 'yuzhongqu', 'Y', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2442, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '大渡口区', '500104', 3, 'dadukouqu', 'D', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2443, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '江北区', '500105', 3, 'jiangbeiqu', 'J', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2444, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '沙坪坝区', '500106', 3, 'shapingbaqu', 'S', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2445, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '九龙坡区', '500107', 3, 'jiulongpoqu', 'J', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2446, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '南岸区', '500108', 3, 'nananqu', 'N', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2447, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '北碚区', '500109', 3, 'beibeiqu', 'B', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2448, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '綦江区', '500110', 3, 'qijiangqu', 'Q', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2449, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '大足区', '500111', 3, 'dazuqu', 'D', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2450, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '渝北区', '500112', 3, 'yubeiqu', 'Y', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2451, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '巴南区', '500113', 3, 'bananqu', 'B', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2452, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '黔江区', '500114', 3, 'qianjiangqu', 'Q', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2453, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '长寿区', '500115', 3, 'changshouqu', 'C', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2454, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '江津区', '500116', 3, 'jiangjinqu', 'J', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2455, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '合川区', '500117', 3, 'hechuanqu', 'H', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2456, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '永川区', '500118', 3, 'yongchuanqu', 'Y', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2457, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '南川区', '500119', 3, 'nanchuanqu', 'N', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2458, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '璧山区', '500120', 3, 'bishanqu', 'B', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2459, NULL, NULL, NULL, '2025-06-20 13:16:18.416106', '2025-06-20 13:16:18.416106', '铜梁区', '500151', 3, 'tongliangqu', 'T', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2460, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '潼南区', '500152', 3, 'tongnanqu', 'T', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2461, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '荣昌区', '500153', 3, 'rongchangqu', 'R', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2462, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '开州区', '500154', 3, 'kaizhouqu', 'K', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2463, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '梁平区', '500155', 3, 'liangpingqu', 'L', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2464, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '武隆区', '500156', 3, 'wulongqu', 'W', 1, NULL, '5001');
INSERT INTO `st_system_area` VALUES (2465, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '县', '5002', 2, 'xian', 'X', 1, NULL, '50');
INSERT INTO `st_system_area` VALUES (2466, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '城口县', '500229', 3, 'chengkouxian', 'C', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2467, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '丰都县', '500230', 3, 'fengdouxian', 'F', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2468, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '垫江县', '500231', 3, 'dianjiangxian', 'D', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2469, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '忠县', '500233', 3, 'zhongxian', 'Z', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2470, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '云阳县', '500235', 3, 'yunyangxian', 'Y', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2471, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '奉节县', '500236', 3, 'fengjiexian', 'F', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2472, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '巫山县', '500237', 3, 'wushanxian', 'W', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2473, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '巫溪县', '500238', 3, 'wuxixian', 'W', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2474, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '石柱土家族自治县', '500240', 3, 'shizhutujiazuzizhixian', 'S', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2475, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '秀山土家族苗族自治县', '500241', 3, 'xiushantujiazumiaozuzizhixian', 'X', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2476, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '酉阳土家族苗族自治县', '500242', 3, 'youyangtujiazumiaozuzizhixian', 'Y', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2477, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '彭水苗族土家族自治县', '500243', 3, 'pengshuimiaozutujiazuzizhixian', 'P', 1, NULL, '5002');
INSERT INTO `st_system_area` VALUES (2478, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '四川省', '51', 1, 'sichuansheng', 'S', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2479, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '成都市', '5101', 2, 'chengdushi', 'C', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2480, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '锦江区', '510104', 3, 'jinjiangqu', 'J', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2481, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '青羊区', '510105', 3, 'qingyangqu', 'Q', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2482, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '金牛区', '510106', 3, 'jinniuqu', 'J', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2483, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '武侯区', '510107', 3, 'wuhouqu', 'W', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2484, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '成华区', '510108', 3, 'chenghuaqu', 'C', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2485, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '龙泉驿区', '510112', 3, 'longquanyiqu', 'L', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2486, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '青白江区', '510113', 3, 'qingbaijiangqu', 'Q', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2487, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '新都区', '510114', 3, 'xindouqu', 'X', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2488, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '温江区', '510115', 3, 'wenjiangqu', 'W', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2489, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '双流区', '510116', 3, 'shuangliuqu', 'S', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2490, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '郫都区', '510117', 3, 'pidouqu', 'P', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2491, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '新津区', '510118', 3, 'xinjinqu', 'X', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2492, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '金堂县', '510121', 3, 'jintangxian', 'J', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2493, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '大邑县', '510129', 3, 'dayixian', 'D', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2494, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '蒲江县', '510131', 3, 'pujiangxian', 'P', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2495, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '都江堰市', '510181', 3, 'dujiangyanshi', 'D', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2496, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '彭州市', '510182', 3, 'pengzhoushi', 'P', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2497, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '邛崃市', '510183', 3, 'qionglaishi', 'Q', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2498, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '崇州市', '510184', 3, 'chongzhoushi', 'C', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2499, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '简阳市', '510185', 3, 'jianyangshi', 'J', 1, NULL, '5101');
INSERT INTO `st_system_area` VALUES (2500, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '自贡市', '5103', 2, 'zigongshi', 'Z', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2501, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '自流井区', '510302', 3, 'ziliujingqu', 'Z', 1, NULL, '5103');
INSERT INTO `st_system_area` VALUES (2502, NULL, NULL, NULL, '2025-06-20 13:16:18.417123', '2025-06-20 13:16:18.417123', '贡井区', '510303', 3, 'gongjingqu', 'G', 1, NULL, '5103');
INSERT INTO `st_system_area` VALUES (2503, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '大安区', '510304', 3, 'daanqu', 'D', 1, NULL, '5103');
INSERT INTO `st_system_area` VALUES (2504, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '沿滩区', '510311', 3, 'yantanqu', 'Y', 1, NULL, '5103');
INSERT INTO `st_system_area` VALUES (2505, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '荣县', '510321', 3, 'rongxian', 'R', 1, NULL, '5103');
INSERT INTO `st_system_area` VALUES (2506, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '富顺县', '510322', 3, 'fushunxian', 'F', 1, NULL, '5103');
INSERT INTO `st_system_area` VALUES (2507, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '攀枝花市', '5104', 2, 'panzhihuashi', 'P', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2508, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '东区', '510402', 3, 'dongqu', 'D', 1, NULL, '5104');
INSERT INTO `st_system_area` VALUES (2509, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '西区', '510403', 3, 'xiqu', 'X', 1, NULL, '5104');
INSERT INTO `st_system_area` VALUES (2510, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '仁和区', '510411', 3, 'renhequ', 'R', 1, NULL, '5104');
INSERT INTO `st_system_area` VALUES (2511, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '米易县', '510421', 3, 'miyixian', 'M', 1, NULL, '5104');
INSERT INTO `st_system_area` VALUES (2512, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '盐边县', '510422', 3, 'yanbianxian', 'Y', 1, NULL, '5104');
INSERT INTO `st_system_area` VALUES (2513, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '泸州市', '5105', 2, 'luzhoushi', 'L', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2514, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '江阳区', '510502', 3, 'jiangyangqu', 'J', 1, NULL, '5105');
INSERT INTO `st_system_area` VALUES (2515, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '纳溪区', '510503', 3, 'naxiqu', 'N', 1, NULL, '5105');
INSERT INTO `st_system_area` VALUES (2516, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '龙马潭区', '510504', 3, 'longmatanqu', 'L', 1, NULL, '5105');
INSERT INTO `st_system_area` VALUES (2517, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '泸县', '510521', 3, 'luxian', 'L', 1, NULL, '5105');
INSERT INTO `st_system_area` VALUES (2518, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '合江县', '510522', 3, 'hejiangxian', 'H', 1, NULL, '5105');
INSERT INTO `st_system_area` VALUES (2519, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '叙永县', '510524', 3, 'xuyongxian', 'X', 1, NULL, '5105');
INSERT INTO `st_system_area` VALUES (2520, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '古蔺县', '510525', 3, 'gulinxian', 'G', 1, NULL, '5105');
INSERT INTO `st_system_area` VALUES (2521, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '德阳市', '5106', 2, 'deyangshi', 'D', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2522, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '旌阳区', '510603', 3, 'jingyangqu', 'J', 1, NULL, '5106');
INSERT INTO `st_system_area` VALUES (2523, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '罗江区', '510604', 3, 'luojiangqu', 'L', 1, NULL, '5106');
INSERT INTO `st_system_area` VALUES (2524, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '中江县', '510623', 3, 'zhongjiangxian', 'Z', 1, NULL, '5106');
INSERT INTO `st_system_area` VALUES (2525, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '广汉市', '510681', 3, 'guanghanshi', 'G', 1, NULL, '5106');
INSERT INTO `st_system_area` VALUES (2526, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '什邡市', '510682', 3, 'shenfangshi', 'S', 1, NULL, '5106');
INSERT INTO `st_system_area` VALUES (2527, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '绵竹市', '510683', 3, 'mianzhushi', 'M', 1, NULL, '5106');
INSERT INTO `st_system_area` VALUES (2528, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '绵阳市', '5107', 2, 'mianyangshi', 'M', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2529, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '涪城区', '510703', 3, 'fuchengqu', 'F', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2530, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '游仙区', '510704', 3, 'youxianqu', 'Y', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2531, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '安州区', '510705', 3, 'anzhouqu', 'A', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2532, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '三台县', '510722', 3, 'santaixian', 'S', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2533, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '盐亭县', '510723', 3, 'yantingxian', 'Y', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2534, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '梓潼县', '510725', 3, 'zitongxian', 'Z', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2535, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '北川羌族自治县', '510726', 3, 'beichuanqiangzuzizhixian', 'B', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2536, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '平武县', '510727', 3, 'pingwuxian', 'P', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2537, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '江油市', '510781', 3, 'jiangyoushi', 'J', 1, NULL, '5107');
INSERT INTO `st_system_area` VALUES (2538, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '广元市', '5108', 2, 'guangyuanshi', 'G', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2539, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '利州区', '510802', 3, 'lizhouqu', 'L', 1, NULL, '5108');
INSERT INTO `st_system_area` VALUES (2540, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '昭化区', '510811', 3, 'zhaohuaqu', 'Z', 1, NULL, '5108');
INSERT INTO `st_system_area` VALUES (2541, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '朝天区', '510812', 3, 'chaotianqu', 'C', 1, NULL, '5108');
INSERT INTO `st_system_area` VALUES (2542, NULL, NULL, NULL, '2025-06-20 13:16:18.418123', '2025-06-20 13:16:18.418123', '旺苍县', '510821', 3, 'wangcangxian', 'W', 1, NULL, '5108');
INSERT INTO `st_system_area` VALUES (2543, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '青川县', '510822', 3, 'qingchuanxian', 'Q', 1, NULL, '5108');
INSERT INTO `st_system_area` VALUES (2544, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '剑阁县', '510823', 3, 'jiangexian', 'J', 1, NULL, '5108');
INSERT INTO `st_system_area` VALUES (2545, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '苍溪县', '510824', 3, 'cangxixian', 'C', 1, NULL, '5108');
INSERT INTO `st_system_area` VALUES (2546, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '遂宁市', '5109', 2, 'suiningshi', 'S', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2547, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '船山区', '510903', 3, 'chuanshanqu', 'C', 1, NULL, '5109');
INSERT INTO `st_system_area` VALUES (2548, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '安居区', '510904', 3, 'anjuqu', 'A', 1, NULL, '5109');
INSERT INTO `st_system_area` VALUES (2549, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '蓬溪县', '510921', 3, 'pengxixian', 'P', 1, NULL, '5109');
INSERT INTO `st_system_area` VALUES (2550, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '大英县', '510923', 3, 'dayingxian', 'D', 1, NULL, '5109');
INSERT INTO `st_system_area` VALUES (2551, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '射洪市', '510981', 3, 'shehongshi', 'S', 1, NULL, '5109');
INSERT INTO `st_system_area` VALUES (2552, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '内江市', '5110', 2, 'neijiangshi', 'N', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2553, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '市中区', '511002', 3, 'shizhongqu', 'S', 1, NULL, '5110');
INSERT INTO `st_system_area` VALUES (2554, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '东兴区', '511011', 3, 'dongxingqu', 'D', 1, NULL, '5110');
INSERT INTO `st_system_area` VALUES (2555, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '威远县', '511024', 3, 'weiyuanxian', 'W', 1, NULL, '5110');
INSERT INTO `st_system_area` VALUES (2556, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '资中县', '511025', 3, 'zizhongxian', 'Z', 1, NULL, '5110');
INSERT INTO `st_system_area` VALUES (2557, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '内江经济开发区', '511071', 3, 'neijiangjingjikaifaqu', 'N', 1, NULL, '5110');
INSERT INTO `st_system_area` VALUES (2558, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '隆昌市', '511083', 3, 'longchangshi', 'L', 1, NULL, '5110');
INSERT INTO `st_system_area` VALUES (2559, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '乐山市', '5111', 2, 'leshanshi', 'L', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2560, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '市中区', '511102', 3, 'shizhongqu', 'S', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2561, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '沙湾区', '511111', 3, 'shawanqu', 'S', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2562, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '五通桥区', '511112', 3, 'wutongqiaoqu', 'W', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2563, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '金口河区', '511113', 3, 'jinkouhequ', 'J', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2564, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '犍为县', '511123', 3, 'qianweixian', 'Q', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2565, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '井研县', '511124', 3, 'jingyanxian', 'J', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2566, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '夹江县', '511126', 3, 'jiajiangxian', 'J', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2567, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '沐川县', '511129', 3, 'muchuanxian', 'M', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2568, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '峨边彝族自治县', '511132', 3, 'ebianyizuzizhixian', 'E', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2569, NULL, NULL, NULL, '2025-06-20 13:16:18.419123', '2025-06-20 13:16:18.419123', '马边彝族自治县', '511133', 3, 'mabianyizuzizhixian', 'M', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2570, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '峨眉山市', '511181', 3, 'emeishanshi', 'E', 1, NULL, '5111');
INSERT INTO `st_system_area` VALUES (2571, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '南充市', '5113', 2, 'nanchongshi', 'N', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2572, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '顺庆区', '511302', 3, 'shunqingqu', 'S', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2573, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '高坪区', '511303', 3, 'gaopingqu', 'G', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2574, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '嘉陵区', '511304', 3, 'jialingqu', 'J', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2575, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '南部县', '511321', 3, 'nanbuxian', 'N', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2576, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '营山县', '511322', 3, 'yingshanxian', 'Y', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2577, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '蓬安县', '511323', 3, 'penganxian', 'P', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2578, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '仪陇县', '511324', 3, 'yilongxian', 'Y', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2579, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '西充县', '511325', 3, 'xichongxian', 'X', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2580, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '阆中市', '511381', 3, 'langzhongshi', 'L', 1, NULL, '5113');
INSERT INTO `st_system_area` VALUES (2581, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '眉山市', '5114', 2, 'meishanshi', 'M', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2582, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '东坡区', '511402', 3, 'dongpoqu', 'D', 1, NULL, '5114');
INSERT INTO `st_system_area` VALUES (2583, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '彭山区', '511403', 3, 'pengshanqu', 'P', 1, NULL, '5114');
INSERT INTO `st_system_area` VALUES (2584, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '仁寿县', '511421', 3, 'renshouxian', 'R', 1, NULL, '5114');
INSERT INTO `st_system_area` VALUES (2585, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '洪雅县', '511423', 3, 'hongyaxian', 'H', 1, NULL, '5114');
INSERT INTO `st_system_area` VALUES (2586, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '丹棱县', '511424', 3, 'danlengxian', 'D', 1, NULL, '5114');
INSERT INTO `st_system_area` VALUES (2587, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '青神县', '511425', 3, 'qingshenxian', 'Q', 1, NULL, '5114');
INSERT INTO `st_system_area` VALUES (2588, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '宜宾市', '5115', 2, 'yibinshi', 'Y', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2589, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '翠屏区', '511502', 3, 'cuipingqu', 'C', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2590, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '南溪区', '511503', 3, 'nanxiqu', 'N', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2591, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '叙州区', '511504', 3, 'xuzhouqu', 'X', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2592, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '江安县', '511523', 3, 'jianganxian', 'J', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2593, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '长宁县', '511524', 3, 'zhangningxian', 'Z', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2594, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '高县', '511525', 3, 'gaoxian', 'G', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2595, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '珙县', '511526', 3, 'gongxian', 'G', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2596, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '筠连县', '511527', 3, 'yunlianxian', 'Y', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2597, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '兴文县', '511528', 3, 'xingwenxian', 'X', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2598, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '屏山县', '511529', 3, 'pingshanxian', 'P', 1, NULL, '5115');
INSERT INTO `st_system_area` VALUES (2599, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '广安市', '5116', 2, 'guanganshi', 'G', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2600, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '广安区', '511602', 3, 'guanganqu', 'G', 1, NULL, '5116');
INSERT INTO `st_system_area` VALUES (2601, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '前锋区', '511603', 3, 'qianfengqu', 'Q', 1, NULL, '5116');
INSERT INTO `st_system_area` VALUES (2602, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '岳池县', '511621', 3, 'yuechixian', 'Y', 1, NULL, '5116');
INSERT INTO `st_system_area` VALUES (2603, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '武胜县', '511622', 3, 'wushengxian', 'W', 1, NULL, '5116');
INSERT INTO `st_system_area` VALUES (2604, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '邻水县', '511623', 3, 'linshuixian', 'L', 1, NULL, '5116');
INSERT INTO `st_system_area` VALUES (2605, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '华蓥市', '511681', 3, 'huayingshi', 'H', 1, NULL, '5116');
INSERT INTO `st_system_area` VALUES (2606, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '达州市', '5117', 2, 'dazhoushi', 'D', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2607, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '通川区', '511702', 3, 'tongchuanqu', 'T', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2608, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '达川区', '511703', 3, 'dachuanqu', 'D', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2609, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '宣汉县', '511722', 3, 'xuanhanxian', 'X', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2610, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '开江县', '511723', 3, 'kaijiangxian', 'K', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2611, NULL, NULL, NULL, '2025-06-20 13:16:18.420101', '2025-06-20 13:16:18.420101', '大竹县', '511724', 3, 'dazhuxian', 'D', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2612, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '渠县', '511725', 3, 'quxian', 'Q', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2613, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '达州经济开发区', '511771', 3, 'dazhoujingjikaifaqu', 'D', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2614, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '万源市', '511781', 3, 'wanyuanshi', 'W', 1, NULL, '5117');
INSERT INTO `st_system_area` VALUES (2615, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '雅安市', '5118', 2, 'yaanshi', 'Y', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2616, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '雨城区', '511802', 3, 'yuchengqu', 'Y', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2617, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '名山区', '511803', 3, 'mingshanqu', 'M', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2618, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '荥经县', '511822', 3, 'xingjingxian', 'X', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2619, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '汉源县', '511823', 3, 'hanyuanxian', 'H', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2620, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '石棉县', '511824', 3, 'shimianxian', 'S', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2621, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '天全县', '511825', 3, 'tianquanxian', 'T', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2622, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '芦山县', '511826', 3, 'lushanxian', 'L', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2623, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '宝兴县', '511827', 3, 'baoxingxian', 'B', 1, NULL, '5118');
INSERT INTO `st_system_area` VALUES (2624, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '巴中市', '5119', 2, 'bazhongshi', 'B', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2625, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '巴州区', '511902', 3, 'bazhouqu', 'B', 1, NULL, '5119');
INSERT INTO `st_system_area` VALUES (2626, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '恩阳区', '511903', 3, 'enyangqu', 'E', 1, NULL, '5119');
INSERT INTO `st_system_area` VALUES (2627, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '通江县', '511921', 3, 'tongjiangxian', 'T', 1, NULL, '5119');
INSERT INTO `st_system_area` VALUES (2628, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '南江县', '511922', 3, 'nanjiangxian', 'N', 1, NULL, '5119');
INSERT INTO `st_system_area` VALUES (2629, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '平昌县', '511923', 3, 'pingchangxian', 'P', 1, NULL, '5119');
INSERT INTO `st_system_area` VALUES (2630, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '巴中经济开发区', '511971', 3, 'bazhongjingjikaifaqu', 'B', 1, NULL, '5119');
INSERT INTO `st_system_area` VALUES (2631, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '资阳市', '5120', 2, 'ziyangshi', 'Z', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2632, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '雁江区', '512002', 3, 'yanjiangqu', 'Y', 1, NULL, '5120');
INSERT INTO `st_system_area` VALUES (2633, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '安岳县', '512021', 3, 'anyuexian', 'A', 1, NULL, '5120');
INSERT INTO `st_system_area` VALUES (2634, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '乐至县', '512022', 3, 'lezhixian', 'L', 1, NULL, '5120');
INSERT INTO `st_system_area` VALUES (2635, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '阿坝藏族羌族自治州', '5132', 2, 'abazangzuqiangzuzizhizhou', 'A', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2636, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '马尔康市', '513201', 3, 'maerkangshi', 'M', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2637, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '汶川县', '513221', 3, 'wenchuanxian', 'W', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2638, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '理县', '513222', 3, 'lixian', 'L', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2639, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '茂县', '513223', 3, 'maoxian', 'M', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2640, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '松潘县', '513224', 3, 'songpanxian', 'S', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2641, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '九寨沟县', '513225', 3, 'jiuzhaigouxian', 'J', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2642, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '金川县', '513226', 3, 'jinchuanxian', 'J', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2643, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '小金县', '513227', 3, 'xiaojinxian', 'X', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2644, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '黑水县', '513228', 3, 'heishuixian', 'H', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2645, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '壤塘县', '513230', 3, 'rangtangxian', 'R', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2646, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '阿坝县', '513231', 3, 'abaxian', 'A', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2647, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '若尔盖县', '513232', 3, 'ruoergaixian', 'R', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2648, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '红原县', '513233', 3, 'hongyuanxian', 'H', 1, NULL, '5132');
INSERT INTO `st_system_area` VALUES (2649, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '甘孜藏族自治州', '5133', 2, 'ganzizangzuzizhizhou', 'G', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2650, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '康定市', '513301', 3, 'kangdingshi', 'K', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2651, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '泸定县', '513322', 3, 'ludingxian', 'L', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2652, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '丹巴县', '513323', 3, 'danbaxian', 'D', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2653, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '九龙县', '513324', 3, 'jiulongxian', 'J', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2654, NULL, NULL, NULL, '2025-06-20 13:16:18.421099', '2025-06-20 13:16:18.421099', '雅江县', '513325', 3, 'yajiangxian', 'Y', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2655, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '道孚县', '513326', 3, 'daofuxian', 'D', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2656, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '炉霍县', '513327', 3, 'luhuoxian', 'L', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2657, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '甘孜县', '513328', 3, 'ganzixian', 'G', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2658, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '新龙县', '513329', 3, 'xinlongxian', 'X', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2659, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '德格县', '513330', 3, 'degexian', 'D', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2660, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '白玉县', '513331', 3, 'baiyuxian', 'B', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2661, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '石渠县', '513332', 3, 'shiquxian', 'S', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2662, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '色达县', '513333', 3, 'sedaxian', 'S', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2663, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '理塘县', '513334', 3, 'litangxian', 'L', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2664, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '巴塘县', '513335', 3, 'batangxian', 'B', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2665, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '乡城县', '513336', 3, 'xiangchengxian', 'X', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2666, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '稻城县', '513337', 3, 'daochengxian', 'D', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2667, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '得荣县', '513338', 3, 'derongxian', 'D', 1, NULL, '5133');
INSERT INTO `st_system_area` VALUES (2668, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '凉山彝族自治州', '5134', 2, 'liangshanyizuzizhizhou', 'L', 1, NULL, '51');
INSERT INTO `st_system_area` VALUES (2669, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '西昌市', '513401', 3, 'xichangshi', 'X', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2670, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '木里藏族自治县', '513422', 3, 'mulizangzuzizhixian', 'M', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2671, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '盐源县', '513423', 3, 'yanyuanxian', 'Y', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2672, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '德昌县', '513424', 3, 'dechangxian', 'D', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2673, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '会理县', '513425', 3, 'huilixian', 'H', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2674, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '会东县', '513426', 3, 'huidongxian', 'H', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2675, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '宁南县', '513427', 3, 'ningnanxian', 'N', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2676, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '普格县', '513428', 3, 'pugexian', 'P', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2677, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '布拖县', '513429', 3, 'butuoxian', 'B', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2678, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '金阳县', '513430', 3, 'jinyangxian', 'J', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2679, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '昭觉县', '513431', 3, 'zhaojuexian', 'Z', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2680, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '喜德县', '513432', 3, 'xidexian', 'X', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2681, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '冕宁县', '513433', 3, 'mianningxian', 'M', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2682, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '越西县', '513434', 3, 'yuexixian', 'Y', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2683, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '甘洛县', '513435', 3, 'ganluoxian', 'G', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2684, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '美姑县', '513436', 3, 'meiguxian', 'M', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2685, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '雷波县', '513437', 3, 'leiboxian', 'L', 1, NULL, '5134');
INSERT INTO `st_system_area` VALUES (2686, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '贵州省', '52', 1, 'guizhousheng', 'G', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2687, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '贵阳市', '5201', 2, 'guiyangshi', 'G', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2688, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '南明区', '520102', 3, 'nanmingqu', 'N', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2689, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '云岩区', '520103', 3, 'yunyanqu', 'Y', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2690, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '花溪区', '520111', 3, 'huaxiqu', 'H', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2691, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '乌当区', '520112', 3, 'wudangqu', 'W', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2692, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '白云区', '520113', 3, 'baiyunqu', 'B', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2693, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '观山湖区', '520115', 3, 'guanshanhuqu', 'G', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2694, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '开阳县', '520121', 3, 'kaiyangxian', 'K', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2695, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '息烽县', '520122', 3, 'xifengxian', 'X', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2696, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '修文县', '520123', 3, 'xiuwenxian', 'X', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2697, NULL, NULL, NULL, '2025-06-20 13:16:18.422099', '2025-06-20 13:16:18.422099', '清镇市', '520181', 3, 'qingzhenshi', 'Q', 1, NULL, '5201');
INSERT INTO `st_system_area` VALUES (2698, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '六盘水市', '5202', 2, 'liupanshuishi', 'L', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2699, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '钟山区', '520201', 3, 'zhongshanqu', 'Z', 1, NULL, '5202');
INSERT INTO `st_system_area` VALUES (2700, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '六枝特区', '520203', 3, 'liuzhitequ', 'L', 1, NULL, '5202');
INSERT INTO `st_system_area` VALUES (2701, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '水城县', '520221', 3, 'shuichengxian', 'S', 1, NULL, '5202');
INSERT INTO `st_system_area` VALUES (2702, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '盘州市', '520281', 3, 'panzhoushi', 'P', 1, NULL, '5202');
INSERT INTO `st_system_area` VALUES (2703, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '遵义市', '5203', 2, 'zunyishi', 'Z', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2704, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '红花岗区', '520302', 3, 'honghuagangqu', 'H', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2705, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '汇川区', '520303', 3, 'huichuanqu', 'H', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2706, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '播州区', '520304', 3, 'bozhouqu', 'B', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2707, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '桐梓县', '520322', 3, 'tongzixian', 'T', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2708, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '绥阳县', '520323', 3, 'suiyangxian', 'S', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2709, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '正安县', '520324', 3, 'zhenganxian', 'Z', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2710, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '道真仡佬族苗族自治县', '520325', 3, 'daozhengelaozumiaozuzizhixian', 'D', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2711, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '务川仡佬族苗族自治县', '520326', 3, 'wuchuangelaozumiaozuzizhixian', 'W', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2712, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '凤冈县', '520327', 3, 'fenggangxian', 'F', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2713, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '湄潭县', '520328', 3, 'meitanxian', 'M', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2714, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '余庆县', '520329', 3, 'yuqingxian', 'Y', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2715, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '习水县', '520330', 3, 'xishuixian', 'X', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2716, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '赤水市', '520381', 3, 'chishuishi', 'C', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2717, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '仁怀市', '520382', 3, 'renhuaishi', 'R', 1, NULL, '5203');
INSERT INTO `st_system_area` VALUES (2718, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '安顺市', '5204', 2, 'anshunshi', 'A', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2719, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '西秀区', '520402', 3, 'xixiuqu', 'X', 1, NULL, '5204');
INSERT INTO `st_system_area` VALUES (2720, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '平坝区', '520403', 3, 'pingbaqu', 'P', 1, NULL, '5204');
INSERT INTO `st_system_area` VALUES (2721, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '普定县', '520422', 3, 'pudingxian', 'P', 1, NULL, '5204');
INSERT INTO `st_system_area` VALUES (2722, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '镇宁布依族苗族自治县', '520423', 3, 'zhenningbuyizumiaozuzizhixian', 'Z', 1, NULL, '5204');
INSERT INTO `st_system_area` VALUES (2723, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '关岭布依族苗族自治县', '520424', 3, 'guanlingbuyizumiaozuzizhixian', 'G', 1, NULL, '5204');
INSERT INTO `st_system_area` VALUES (2724, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '紫云苗族布依族自治县', '520425', 3, 'ziyunmiaozubuyizuzizhixian', 'Z', 1, NULL, '5204');
INSERT INTO `st_system_area` VALUES (2725, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '毕节市', '5205', 2, 'bijieshi', 'B', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2726, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '七星关区', '520502', 3, 'qixingguanqu', 'Q', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2727, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '大方县', '520521', 3, 'dafangxian', 'D', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2728, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '黔西县', '520522', 3, 'qianxixian', 'Q', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2729, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '金沙县', '520523', 3, 'jinshaxian', 'J', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2730, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '织金县', '520524', 3, 'zhijinxian', 'Z', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2731, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '纳雍县', '520525', 3, 'nayongxian', 'N', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2732, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '威宁彝族回族苗族自治县', '520526', 3, 'weiningyizuhuizumiaozuzizhixian', 'W', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2733, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '赫章县', '520527', 3, 'hezhangxian', 'H', 1, NULL, '5205');
INSERT INTO `st_system_area` VALUES (2734, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '铜仁市', '5206', 2, 'tongrenshi', 'T', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2735, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '碧江区', '520602', 3, 'bijiangqu', 'B', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2736, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '万山区', '520603', 3, 'wanshanqu', 'W', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2737, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '江口县', '520621', 3, 'jiangkouxian', 'J', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2738, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '玉屏侗族自治县', '520622', 3, 'yupingdongzuzizhixian', 'Y', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2739, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '石阡县', '520623', 3, 'shiqianxian', 'S', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2740, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.423098', '思南县', '520624', 3, 'sinanxian', 'S', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2741, NULL, NULL, NULL, '2025-06-20 13:16:18.423098', '2025-06-20 13:16:18.424098', '印江土家族苗族自治县', '520625', 3, 'yinjiangtujiazumiaozuzizhixian', 'Y', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2742, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '德江县', '520626', 3, 'dejiangxian', 'D', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2743, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '沿河土家族自治县', '520627', 3, 'yanhetujiazuzizhixian', 'Y', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2744, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '松桃苗族自治县', '520628', 3, 'songtaomiaozuzizhixian', 'S', 1, NULL, '5206');
INSERT INTO `st_system_area` VALUES (2745, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '黔西南布依族苗族自治州', '5223', 2, 'qianxinanbuyizumiaozuzizhizhou', 'Q', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2746, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '兴义市', '522301', 3, 'xingyishi', 'X', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2747, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '兴仁市', '522302', 3, 'xingrenshi', 'X', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2748, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '普安县', '522323', 3, 'puanxian', 'P', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2749, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '晴隆县', '522324', 3, 'qinglongxian', 'Q', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2750, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '贞丰县', '522325', 3, 'zhenfengxian', 'Z', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2751, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '望谟县', '522326', 3, 'wangmoxian', 'W', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2752, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '册亨县', '522327', 3, 'cehengxian', 'C', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2753, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '安龙县', '522328', 3, 'anlongxian', 'A', 1, NULL, '5223');
INSERT INTO `st_system_area` VALUES (2754, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '黔东南苗族侗族自治州', '5226', 2, 'qiandongnanmiaozudongzuzizhizhou', 'Q', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2755, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '凯里市', '522601', 3, 'kailishi', 'K', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2756, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '黄平县', '522622', 3, 'huangpingxian', 'H', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2757, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '施秉县', '522623', 3, 'shibingxian', 'S', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2758, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '三穗县', '522624', 3, 'sansuixian', 'S', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2759, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '镇远县', '522625', 3, 'zhenyuanxian', 'Z', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2760, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '岑巩县', '522626', 3, 'cengongxian', 'C', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2761, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '天柱县', '522627', 3, 'tianzhuxian', 'T', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2762, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '锦屏县', '522628', 3, 'jinpingxian', 'J', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2763, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '剑河县', '522629', 3, 'jianhexian', 'J', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2764, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '台江县', '522630', 3, 'taijiangxian', 'T', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2765, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '黎平县', '522631', 3, 'lipingxian', 'L', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2766, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '榕江县', '522632', 3, 'rongjiangxian', 'R', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2767, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '从江县', '522633', 3, 'congjiangxian', 'C', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2768, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '雷山县', '522634', 3, 'leishanxian', 'L', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2769, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '麻江县', '522635', 3, 'majiangxian', 'M', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2770, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '丹寨县', '522636', 3, 'danzhaixian', 'D', 1, NULL, '5226');
INSERT INTO `st_system_area` VALUES (2771, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '黔南布依族苗族自治州', '5227', 2, 'qiannanbuyizumiaozuzizhizhou', 'Q', 1, NULL, '52');
INSERT INTO `st_system_area` VALUES (2772, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '都匀市', '522701', 3, 'douyunshi', 'D', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2773, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '福泉市', '522702', 3, 'fuquanshi', 'F', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2774, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '荔波县', '522722', 3, 'liboxian', 'L', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2775, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '贵定县', '522723', 3, 'guidingxian', 'G', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2776, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '瓮安县', '522725', 3, 'wenganxian', 'W', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2777, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '独山县', '522726', 3, 'dushanxian', 'D', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2778, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '平塘县', '522727', 3, 'pingtangxian', 'P', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2779, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '罗甸县', '522728', 3, 'luodianxian', 'L', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2780, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '长顺县', '522729', 3, 'zhangshunxian', 'Z', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2781, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '龙里县', '522730', 3, 'longlixian', 'L', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2782, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '惠水县', '522731', 3, 'huishuixian', 'H', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2783, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '三都水族自治县', '522732', 3, 'sandoushuizuzizhixian', 'S', 1, NULL, '5227');
INSERT INTO `st_system_area` VALUES (2784, NULL, NULL, NULL, '2025-06-20 13:16:18.424098', '2025-06-20 13:16:18.424098', '云南省', '53', 1, 'yunnansheng', 'Y', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2785, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '昆明市', '5301', 2, 'kunmingshi', 'K', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2786, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '五华区', '530102', 3, 'wuhuaqu', 'W', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2787, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '盘龙区', '530103', 3, 'panlongqu', 'P', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2788, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '官渡区', '530111', 3, 'guanduqu', 'G', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2789, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '西山区', '530112', 3, 'xishanqu', 'X', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2790, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '东川区', '530113', 3, 'dongchuanqu', 'D', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2791, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '呈贡区', '530114', 3, 'chenggongqu', 'C', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2792, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '晋宁区', '530115', 3, 'jinningqu', 'J', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2793, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '富民县', '530124', 3, 'fuminxian', 'F', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2794, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '宜良县', '530125', 3, 'yiliangxian', 'Y', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2795, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '石林彝族自治县', '530126', 3, 'shilinyizuzizhixian', 'S', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2796, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '嵩明县', '530127', 3, 'songmingxian', 'S', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2797, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '禄劝彝族苗族自治县', '530128', 3, 'luquanyizumiaozuzizhixian', 'L', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2798, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '寻甸回族彝族自治县', '530129', 3, 'xundianhuizuyizuzizhixian', 'X', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2799, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '安宁市', '530181', 3, 'anningshi', 'A', 1, NULL, '5301');
INSERT INTO `st_system_area` VALUES (2800, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '曲靖市', '5303', 2, 'qujingshi', 'Q', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2801, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '麒麟区', '530302', 3, 'qilinqu', 'Q', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2802, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '沾益区', '530303', 3, 'zhanyiqu', 'Z', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2803, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '马龙区', '530304', 3, 'malongqu', 'M', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2804, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '陆良县', '530322', 3, 'luliangxian', 'L', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2805, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '师宗县', '530323', 3, 'shizongxian', 'S', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2806, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '罗平县', '530324', 3, 'luopingxian', 'L', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2807, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '富源县', '530325', 3, 'fuyuanxian', 'F', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2808, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '会泽县', '530326', 3, 'huizexian', 'H', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2809, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '宣威市', '530381', 3, 'xuanweishi', 'X', 1, NULL, '5303');
INSERT INTO `st_system_area` VALUES (2810, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '玉溪市', '5304', 2, 'yuxishi', 'Y', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2811, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '红塔区', '530402', 3, 'hongtaqu', 'H', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2812, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '江川区', '530403', 3, 'jiangchuanqu', 'J', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2813, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '通海县', '530423', 3, 'tonghaixian', 'T', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2814, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '华宁县', '530424', 3, 'huaningxian', 'H', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2815, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '易门县', '530425', 3, 'yimenxian', 'Y', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2816, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '峨山彝族自治县', '530426', 3, 'eshanyizuzizhixian', 'E', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2817, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '新平彝族傣族自治县', '530427', 3, 'xinpingyizudaizuzizhixian', 'X', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2818, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '元江哈尼族彝族傣族自治县', '530428', 3, 'yuanjianghanizuyizudaizuzizhixian', 'Y', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2819, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '澄江市', '530481', 3, 'chengjiangshi', 'C', 1, NULL, '5304');
INSERT INTO `st_system_area` VALUES (2820, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '保山市', '5305', 2, 'baoshanshi', 'B', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2821, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '隆阳区', '530502', 3, 'longyangqu', 'L', 1, NULL, '5305');
INSERT INTO `st_system_area` VALUES (2822, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '施甸县', '530521', 3, 'shidianxian', 'S', 1, NULL, '5305');
INSERT INTO `st_system_area` VALUES (2823, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '龙陵县', '530523', 3, 'longlingxian', 'L', 1, NULL, '5305');
INSERT INTO `st_system_area` VALUES (2824, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '昌宁县', '530524', 3, 'changningxian', 'C', 1, NULL, '5305');
INSERT INTO `st_system_area` VALUES (2825, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '腾冲市', '530581', 3, 'tengchongshi', 'T', 1, NULL, '5305');
INSERT INTO `st_system_area` VALUES (2826, NULL, NULL, NULL, '2025-06-20 13:16:18.425097', '2025-06-20 13:16:18.425097', '昭通市', '5306', 2, 'zhaotongshi', 'Z', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2827, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '昭阳区', '530602', 3, 'zhaoyangqu', 'Z', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2828, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '鲁甸县', '530621', 3, 'ludianxian', 'L', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2829, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '巧家县', '530622', 3, 'qiaojiaxian', 'Q', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2830, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '盐津县', '530623', 3, 'yanjinxian', 'Y', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2831, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '大关县', '530624', 3, 'daguanxian', 'D', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2832, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '永善县', '530625', 3, 'yongshanxian', 'Y', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2833, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '绥江县', '530626', 3, 'suijiangxian', 'S', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2834, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '镇雄县', '530627', 3, 'zhenxiongxian', 'Z', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2835, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '彝良县', '530628', 3, 'yiliangxian', 'Y', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2836, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '威信县', '530629', 3, 'weixinxian', 'W', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2837, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '水富市', '530681', 3, 'shuifushi', 'S', 1, NULL, '5306');
INSERT INTO `st_system_area` VALUES (2838, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '丽江市', '5307', 2, 'lijiangshi', 'L', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2839, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '古城区', '530702', 3, 'guchengqu', 'G', 1, NULL, '5307');
INSERT INTO `st_system_area` VALUES (2840, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '玉龙纳西族自治县', '530721', 3, 'yulongnaxizuzizhixian', 'Y', 1, NULL, '5307');
INSERT INTO `st_system_area` VALUES (2841, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '永胜县', '530722', 3, 'yongshengxian', 'Y', 1, NULL, '5307');
INSERT INTO `st_system_area` VALUES (2842, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '华坪县', '530723', 3, 'huapingxian', 'H', 1, NULL, '5307');
INSERT INTO `st_system_area` VALUES (2843, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '宁蒗彝族自治县', '530724', 3, 'ninglangyizuzizhixian', 'N', 1, NULL, '5307');
INSERT INTO `st_system_area` VALUES (2844, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '普洱市', '5308', 2, 'puershi', 'P', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2845, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '思茅区', '530802', 3, 'simaoqu', 'S', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2846, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '宁洱哈尼族彝族自治县', '530821', 3, 'ningerhanizuyizuzizhixian', 'N', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2847, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '墨江哈尼族自治县', '530822', 3, 'mojianghanizuzizhixian', 'M', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2848, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '景东彝族自治县', '530823', 3, 'jingdongyizuzizhixian', 'J', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2849, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '景谷傣族彝族自治县', '530824', 3, 'jinggudaizuyizuzizhixian', 'J', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2850, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '镇沅彝族哈尼族拉祜族自治县', '530825', 3, 'zhenyuanyizuhanizulahuzuzizhixian', 'Z', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2851, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '江城哈尼族彝族自治县', '530826', 3, 'jiangchenghanizuyizuzizhixian', 'J', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2852, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '孟连傣族拉祜族佤族自治县', '530827', 3, 'mengliandaizulahuzuwazuzizhixian', 'M', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2853, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '澜沧拉祜族自治县', '530828', 3, 'lancanglahuzuzizhixian', 'L', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2854, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '西盟佤族自治县', '530829', 3, 'ximengwazuzizhixian', 'X', 1, NULL, '5308');
INSERT INTO `st_system_area` VALUES (2855, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '临沧市', '5309', 2, 'lincangshi', 'L', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2856, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '临翔区', '530902', 3, 'linxiangqu', 'L', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2857, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '凤庆县', '530921', 3, 'fengqingxian', 'F', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2858, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '云县', '530922', 3, 'yunxian', 'Y', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2859, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '永德县', '530923', 3, 'yongdexian', 'Y', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2860, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '镇康县', '530924', 3, 'zhenkangxian', 'Z', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2861, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '双江拉祜族佤族布朗族傣族自治县', '530925', 3, 'shuangjianglahuzuwazubulangzudaizuzizhixian', 'S', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2862, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '耿马傣族佤族自治县', '530926', 3, 'gengmadaizuwazuzizhixian', 'G', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2863, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '沧源佤族自治县', '530927', 3, 'cangyuanwazuzizhixian', 'C', 1, NULL, '5309');
INSERT INTO `st_system_area` VALUES (2864, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '楚雄彝族自治州', '5323', 2, 'chuxiongyizuzizhizhou', 'C', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2865, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '楚雄市', '532301', 3, 'chuxiongshi', 'C', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2866, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '双柏县', '532322', 3, 'shuangbaixian', 'S', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2867, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '牟定县', '532323', 3, 'moudingxian', 'M', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2868, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '南华县', '532324', 3, 'nanhuaxian', 'N', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2869, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.426096', '姚安县', '532325', 3, 'yaoanxian', 'Y', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2870, NULL, NULL, NULL, '2025-06-20 13:16:18.426096', '2025-06-20 13:16:18.427096', '大姚县', '532326', 3, 'dayaoxian', 'D', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2871, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '永仁县', '532327', 3, 'yongrenxian', 'Y', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2872, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '元谋县', '532328', 3, 'yuanmouxian', 'Y', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2873, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '武定县', '532329', 3, 'wudingxian', 'W', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2874, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '禄丰县', '532331', 3, 'lufengxian', 'L', 1, NULL, '5323');
INSERT INTO `st_system_area` VALUES (2875, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '红河哈尼族彝族自治州', '5325', 2, 'honghehanizuyizuzizhizhou', 'H', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2876, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '个旧市', '532501', 3, 'gejiushi', 'G', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2877, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '开远市', '532502', 3, 'kaiyuanshi', 'K', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2878, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '蒙自市', '532503', 3, 'mengzishi', 'M', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2879, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '弥勒市', '532504', 3, 'mileshi', 'M', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2880, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '屏边苗族自治县', '532523', 3, 'pingbianmiaozuzizhixian', 'P', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2881, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '建水县', '532524', 3, 'jianshuixian', 'J', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2882, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '石屏县', '532525', 3, 'shipingxian', 'S', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2883, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '泸西县', '532527', 3, 'luxixian', 'L', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2884, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '元阳县', '532528', 3, 'yuanyangxian', 'Y', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2885, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '红河县', '532529', 3, 'honghexian', 'H', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2886, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '金平苗族瑶族傣族自治县', '532530', 3, 'jinpingmiaozuyaozudaizuzizhixian', 'J', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2887, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '绿春县', '532531', 3, 'lvchunxian', 'L', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2888, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '河口瑶族自治县', '532532', 3, 'hekouyaozuzizhixian', 'H', 1, NULL, '5325');
INSERT INTO `st_system_area` VALUES (2889, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '文山壮族苗族自治州', '5326', 2, 'wenshanzhuangzumiaozuzizhizhou', 'W', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2890, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '文山市', '532601', 3, 'wenshanshi', 'W', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2891, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '砚山县', '532622', 3, 'yanshanxian', 'Y', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2892, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '西畴县', '532623', 3, 'xichouxian', 'X', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2893, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '麻栗坡县', '532624', 3, 'malipoxian', 'M', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2894, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '马关县', '532625', 3, 'maguanxian', 'M', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2895, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '丘北县', '532626', 3, 'qiubeixian', 'Q', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2896, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '广南县', '532627', 3, 'guangnanxian', 'G', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2897, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '富宁县', '532628', 3, 'funingxian', 'F', 1, NULL, '5326');
INSERT INTO `st_system_area` VALUES (2898, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '西双版纳傣族自治州', '5328', 2, 'xishuangbannadaizuzizhizhou', 'X', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2899, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '景洪市', '532801', 3, 'jinghongshi', 'J', 1, NULL, '5328');
INSERT INTO `st_system_area` VALUES (2900, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '勐海县', '532822', 3, 'menghaixian', 'M', 1, NULL, '5328');
INSERT INTO `st_system_area` VALUES (2901, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '勐腊县', '532823', 3, 'menglaxian', 'M', 1, NULL, '5328');
INSERT INTO `st_system_area` VALUES (2902, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '大理白族自治州', '5329', 2, 'dalibaizuzizhizhou', 'D', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2903, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '大理市', '532901', 3, 'dalishi', 'D', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2904, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '漾濞彝族自治县', '532922', 3, 'yangbiyizuzizhixian', 'Y', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2905, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '祥云县', '532923', 3, 'xiangyunxian', 'X', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2906, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '宾川县', '532924', 3, 'binchuanxian', 'B', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2907, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '弥渡县', '532925', 3, 'miduxian', 'M', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2908, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '南涧彝族自治县', '532926', 3, 'nanjianyizuzizhixian', 'N', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2909, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '巍山彝族回族自治县', '532927', 3, 'weishanyizuhuizuzizhixian', 'W', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2910, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '永平县', '532928', 3, 'yongpingxian', 'Y', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2911, NULL, NULL, NULL, '2025-06-20 13:16:18.427096', '2025-06-20 13:16:18.427096', '云龙县', '532929', 3, 'yunlongxian', 'Y', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2912, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '洱源县', '532930', 3, 'eryuanxian', 'E', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2913, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '剑川县', '532931', 3, 'jianchuanxian', 'J', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2914, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '鹤庆县', '532932', 3, 'heqingxian', 'H', 1, NULL, '5329');
INSERT INTO `st_system_area` VALUES (2915, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '德宏傣族景颇族自治州', '5331', 2, 'dehongdaizujingpozuzizhizhou', 'D', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2916, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '瑞丽市', '533102', 3, 'ruilishi', 'R', 1, NULL, '5331');
INSERT INTO `st_system_area` VALUES (2917, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '芒市', '533103', 3, 'mangshi', 'M', 1, NULL, '5331');
INSERT INTO `st_system_area` VALUES (2918, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '梁河县', '533122', 3, 'lianghexian', 'L', 1, NULL, '5331');
INSERT INTO `st_system_area` VALUES (2919, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '盈江县', '533123', 3, 'yingjiangxian', 'Y', 1, NULL, '5331');
INSERT INTO `st_system_area` VALUES (2920, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '陇川县', '533124', 3, 'longchuanxian', 'L', 1, NULL, '5331');
INSERT INTO `st_system_area` VALUES (2921, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '怒江傈僳族自治州', '5333', 2, 'nujianglisuzuzizhizhou', 'N', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2922, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '泸水市', '533301', 3, 'lushuishi', 'L', 1, NULL, '5333');
INSERT INTO `st_system_area` VALUES (2923, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '福贡县', '533323', 3, 'fugongxian', 'F', 1, NULL, '5333');
INSERT INTO `st_system_area` VALUES (2924, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '贡山独龙族怒族自治县', '533324', 3, 'gongshandulongzunuzuzizhixian', 'G', 1, NULL, '5333');
INSERT INTO `st_system_area` VALUES (2925, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '兰坪白族普米族自治县', '533325', 3, 'lanpingbaizupumizuzizhixian', 'L', 1, NULL, '5333');
INSERT INTO `st_system_area` VALUES (2926, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '迪庆藏族自治州', '5334', 2, 'diqingzangzuzizhizhou', 'D', 1, NULL, '53');
INSERT INTO `st_system_area` VALUES (2927, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '香格里拉市', '533401', 3, 'xianggelilashi', 'X', 1, NULL, '5334');
INSERT INTO `st_system_area` VALUES (2928, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '德钦县', '533422', 3, 'deqinxian', 'D', 1, NULL, '5334');
INSERT INTO `st_system_area` VALUES (2929, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '维西傈僳族自治县', '533423', 3, 'weixilisuzuzizhixian', 'W', 1, NULL, '5334');
INSERT INTO `st_system_area` VALUES (2930, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '西藏自治区', '54', 1, 'xizangzizhiqu', 'X', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (2931, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '拉萨市', '5401', 2, 'lasashi', 'L', 1, NULL, '54');
INSERT INTO `st_system_area` VALUES (2932, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '城关区', '540102', 3, 'chengguanqu', 'C', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2933, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '堆龙德庆区', '540103', 3, 'duilongdeqingqu', 'D', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2934, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '达孜区', '540104', 3, 'daziqu', 'D', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2935, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '林周县', '540121', 3, 'linzhouxian', 'L', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2936, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '当雄县', '540122', 3, 'dangxiongxian', 'D', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2937, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '尼木县', '540123', 3, 'nimuxian', 'N', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2938, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '曲水县', '540124', 3, 'qushuixian', 'Q', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2939, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '墨竹工卡县', '540127', 3, 'mozhugongkaxian', 'M', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2940, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '格尔木藏青工业园区', '540171', 3, 'geermuzangqinggongyeyuanqu', 'G', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2941, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '拉萨经济技术开发区', '540172', 3, 'lasajingjijishukaifaqu', 'L', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2942, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '西藏文化旅游创意园区', '540173', 3, 'xizangwenhualvyouchuangyiyuanqu', 'X', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2943, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '达孜工业园区', '540174', 3, 'dazigongyeyuanqu', 'D', 1, NULL, '5401');
INSERT INTO `st_system_area` VALUES (2944, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '日喀则市', '5402', 2, 'rikazeshi', 'R', 1, NULL, '54');
INSERT INTO `st_system_area` VALUES (2945, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '桑珠孜区', '540202', 3, 'sangzhuziqu', 'S', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2946, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '南木林县', '540221', 3, 'nanmulinxian', 'N', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2947, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '江孜县', '540222', 3, 'jiangzixian', 'J', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2948, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '定日县', '540223', 3, 'dingrixian', 'D', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2949, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '萨迦县', '540224', 3, 'sajiaxian', 'S', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2950, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '拉孜县', '540225', 3, 'lazixian', 'L', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2951, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.428095', '昂仁县', '540226', 3, 'angrenxian', 'A', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2952, NULL, NULL, NULL, '2025-06-20 13:16:18.428095', '2025-06-20 13:16:18.429095', '谢通门县', '540227', 3, 'xietongmenxian', 'X', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2953, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '白朗县', '540228', 3, 'bailangxian', 'B', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2954, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '仁布县', '540229', 3, 'renbuxian', 'R', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2955, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '康马县', '540230', 3, 'kangmaxian', 'K', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2956, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '定结县', '540231', 3, 'dingjiexian', 'D', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2957, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '仲巴县', '540232', 3, 'zhongbaxian', 'Z', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2958, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '亚东县', '540233', 3, 'yadongxian', 'Y', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2959, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '吉隆县', '540234', 3, 'jilongxian', 'J', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2960, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '聂拉木县', '540235', 3, 'nielamuxian', 'N', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2961, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '萨嘎县', '540236', 3, 'sagaxian', 'S', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2962, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '岗巴县', '540237', 3, 'gangbaxian', 'G', 1, NULL, '5402');
INSERT INTO `st_system_area` VALUES (2963, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '昌都市', '5403', 2, 'changdushi', 'C', 1, NULL, '54');
INSERT INTO `st_system_area` VALUES (2964, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '卡若区', '540302', 3, 'karuoqu', 'K', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2965, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '江达县', '540321', 3, 'jiangdaxian', 'J', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2966, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '贡觉县', '540322', 3, 'gongjuexian', 'G', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2967, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '类乌齐县', '540323', 3, 'leiwuqixian', 'L', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2968, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '丁青县', '540324', 3, 'dingqingxian', 'D', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2969, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '察雅县', '540325', 3, 'chayaxian', 'C', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2970, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '八宿县', '540326', 3, 'basuxian', 'B', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2971, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '左贡县', '540327', 3, 'zuogongxian', 'Z', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2972, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '芒康县', '540328', 3, 'mangkangxian', 'M', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2973, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '洛隆县', '540329', 3, 'luolongxian', 'L', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2974, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '边坝县', '540330', 3, 'bianbaxian', 'B', 1, NULL, '5403');
INSERT INTO `st_system_area` VALUES (2975, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '林芝市', '5404', 2, 'linzhishi', 'L', 1, NULL, '54');
INSERT INTO `st_system_area` VALUES (2976, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '巴宜区', '540402', 3, 'bayiqu', 'B', 1, NULL, '5404');
INSERT INTO `st_system_area` VALUES (2977, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '工布江达县', '540421', 3, 'gongbujiangdaxian', 'G', 1, NULL, '5404');
INSERT INTO `st_system_area` VALUES (2978, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '米林县', '540422', 3, 'milinxian', 'M', 1, NULL, '5404');
INSERT INTO `st_system_area` VALUES (2979, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '墨脱县', '540423', 3, 'motuoxian', 'M', 1, NULL, '5404');
INSERT INTO `st_system_area` VALUES (2980, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '波密县', '540424', 3, 'bomixian', 'B', 1, NULL, '5404');
INSERT INTO `st_system_area` VALUES (2981, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '察隅县', '540425', 3, 'chayuxian', 'C', 1, NULL, '5404');
INSERT INTO `st_system_area` VALUES (2982, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '朗县', '540426', 3, 'langxian', 'L', 1, NULL, '5404');
INSERT INTO `st_system_area` VALUES (2983, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '山南市', '5405', 2, 'shannanshi', 'S', 1, NULL, '54');
INSERT INTO `st_system_area` VALUES (2984, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '乃东区', '540502', 3, 'naidongqu', 'N', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2985, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '扎囊县', '540521', 3, 'zhanangxian', 'Z', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2986, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '贡嘎县', '540522', 3, 'gonggaxian', 'G', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2987, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '桑日县', '540523', 3, 'sangrixian', 'S', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2988, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '琼结县', '540524', 3, 'qiongjiexian', 'Q', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2989, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '曲松县', '540525', 3, 'qusongxian', 'Q', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2990, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '措美县', '540526', 3, 'cuomeixian', 'C', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2991, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '洛扎县', '540527', 3, 'luozhaxian', 'L', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2992, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '加查县', '540528', 3, 'jiachaxian', 'J', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2993, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '隆子县', '540529', 3, 'longzixian', 'L', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2994, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '错那县', '540530', 3, 'cuonaxian', 'C', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2995, NULL, NULL, NULL, '2025-06-20 13:16:18.429095', '2025-06-20 13:16:18.429095', '浪卡子县', '540531', 3, 'langqiazixian', 'L', 1, NULL, '5405');
INSERT INTO `st_system_area` VALUES (2996, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '那曲市', '5406', 2, 'naqushi', 'N', 1, NULL, '54');
INSERT INTO `st_system_area` VALUES (2997, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '色尼区', '540602', 3, 'seniqu', 'S', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (2998, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '嘉黎县', '540621', 3, 'jialixian', 'J', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (2999, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '比如县', '540622', 3, 'biruxian', 'B', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3000, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '聂荣县', '540623', 3, 'nierongxian', 'N', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3001, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '安多县', '540624', 3, 'anduoxian', 'A', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3002, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '申扎县', '540625', 3, 'shenzhaxian', 'S', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3003, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '索县', '540626', 3, 'suoxian', 'S', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3004, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '班戈县', '540627', 3, 'bangexian', 'B', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3005, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '巴青县', '540628', 3, 'baqingxian', 'B', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3006, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '尼玛县', '540629', 3, 'nimaxian', 'N', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3007, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '双湖县', '540630', 3, 'shuanghuxian', 'S', 1, NULL, '5406');
INSERT INTO `st_system_area` VALUES (3008, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '阿里地区', '5425', 2, 'alidiqu', 'A', 1, NULL, '54');
INSERT INTO `st_system_area` VALUES (3009, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '普兰县', '542521', 3, 'pulanxian', 'P', 1, NULL, '5425');
INSERT INTO `st_system_area` VALUES (3010, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '札达县', '542522', 3, 'zhadaxian', 'Z', 1, NULL, '5425');
INSERT INTO `st_system_area` VALUES (3011, NULL, NULL, NULL, '2025-06-20 13:16:18.430094', '2025-06-20 13:16:18.430094', '噶尔县', '542523', 3, 'gaerxian', 'G', 1, NULL, '5425');
INSERT INTO `st_system_area` VALUES (3012, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '日土县', '542524', 3, 'rituxian', 'R', 1, NULL, '5425');
INSERT INTO `st_system_area` VALUES (3013, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '革吉县', '542525', 3, 'gejixian', 'G', 1, NULL, '5425');
INSERT INTO `st_system_area` VALUES (3014, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '改则县', '542526', 3, 'gaizexian', 'G', 1, NULL, '5425');
INSERT INTO `st_system_area` VALUES (3015, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '措勤县', '542527', 3, 'cuoqinxian', 'C', 1, NULL, '5425');
INSERT INTO `st_system_area` VALUES (3016, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '陕西省', '61', 1, 'shanxisheng', 'S', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (3017, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '西安市', '6101', 2, 'xianshi', 'X', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3018, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '新城区', '610102', 3, 'xinchengqu', 'X', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3019, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '碑林区', '610103', 3, 'beilinqu', 'B', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3020, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '莲湖区', '610104', 3, 'lianhuqu', 'L', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3021, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '灞桥区', '610111', 3, 'baqiaoqu', 'B', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3022, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '未央区', '610112', 3, 'weiyangqu', 'W', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3023, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '雁塔区', '610113', 3, 'yantaqu', 'Y', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3024, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '阎良区', '610114', 3, 'yanliangqu', 'Y', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3025, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '临潼区', '610115', 3, 'lintongqu', 'L', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3026, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '长安区', '610116', 3, 'changanqu', 'C', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3027, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '高陵区', '610117', 3, 'gaolingqu', 'G', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3028, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '鄠邑区', '610118', 3, 'huyiqu', 'H', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3029, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '蓝田县', '610122', 3, 'lantianxian', 'L', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3030, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '周至县', '610124', 3, 'zhouzhixian', 'Z', 1, NULL, '6101');
INSERT INTO `st_system_area` VALUES (3031, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '铜川市', '6102', 2, 'tongchuanshi', 'T', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3032, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '王益区', '610202', 3, 'wangyiqu', 'W', 1, NULL, '6102');
INSERT INTO `st_system_area` VALUES (3033, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '印台区', '610203', 3, 'yintaiqu', 'Y', 1, NULL, '6102');
INSERT INTO `st_system_area` VALUES (3034, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '耀州区', '610204', 3, 'yaozhouqu', 'Y', 1, NULL, '6102');
INSERT INTO `st_system_area` VALUES (3035, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '宜君县', '610222', 3, 'yijunxian', 'Y', 1, NULL, '6102');
INSERT INTO `st_system_area` VALUES (3036, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '宝鸡市', '6103', 2, 'baojishi', 'B', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3037, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '渭滨区', '610302', 3, 'weibinqu', 'W', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3038, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '金台区', '610303', 3, 'jintaiqu', 'J', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3039, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '陈仓区', '610304', 3, 'chencangqu', 'C', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3040, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '凤翔县', '610322', 3, 'fengxiangxian', 'F', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3041, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '岐山县', '610323', 3, 'qishanxian', 'Q', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3042, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '扶风县', '610324', 3, 'fufengxian', 'F', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3043, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '眉县', '610326', 3, 'meixian', 'M', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3044, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '陇县', '610327', 3, 'longxian', 'L', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3045, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '千阳县', '610328', 3, 'qianyangxian', 'Q', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3046, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '麟游县', '610329', 3, 'linyouxian', 'L', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3047, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '凤县', '610330', 3, 'fengxian', 'F', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3048, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '太白县', '610331', 3, 'taibaixian', 'T', 1, NULL, '6103');
INSERT INTO `st_system_area` VALUES (3049, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '咸阳市', '6104', 2, 'xianyangshi', 'X', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3050, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '秦都区', '610402', 3, 'qindouqu', 'Q', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3051, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '杨陵区', '610403', 3, 'yanglingqu', 'Y', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3052, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '渭城区', '610404', 3, 'weichengqu', 'W', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3053, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.431099', '三原县', '610422', 3, 'sanyuanxian', 'S', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3054, NULL, NULL, NULL, '2025-06-20 13:16:18.431099', '2025-06-20 13:16:18.432095', '泾阳县', '610423', 3, 'jingyangxian', 'J', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3055, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '乾县', '610424', 3, 'qianxian', 'Q', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3056, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '礼泉县', '610425', 3, 'liquanxian', 'L', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3057, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '永寿县', '610426', 3, 'yongshouxian', 'Y', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3058, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '长武县', '610428', 3, 'zhangwuxian', 'Z', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3059, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '旬邑县', '610429', 3, 'xunyixian', 'X', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3060, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '淳化县', '610430', 3, 'chunhuaxian', 'C', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3061, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '武功县', '610431', 3, 'wugongxian', 'W', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3062, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '兴平市', '610481', 3, 'xingpingshi', 'X', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3063, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '彬州市', '610482', 3, 'binzhoushi', 'B', 1, NULL, '6104');
INSERT INTO `st_system_area` VALUES (3064, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '渭南市', '6105', 2, 'weinanshi', 'W', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3065, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '临渭区', '610502', 3, 'linweiqu', 'L', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3066, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '华州区', '610503', 3, 'huazhouqu', 'H', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3067, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '潼关县', '610522', 3, 'tongguanxian', 'T', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3068, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '大荔县', '610523', 3, 'dalixian', 'D', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3069, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '合阳县', '610524', 3, 'heyangxian', 'H', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3070, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '澄城县', '610525', 3, 'chengchengxian', 'C', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3071, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '蒲城县', '610526', 3, 'puchengxian', 'P', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3072, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '白水县', '610527', 3, 'baishuixian', 'B', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3073, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '富平县', '610528', 3, 'fupingxian', 'F', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3074, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '韩城市', '610581', 3, 'hanchengshi', 'H', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3075, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '华阴市', '610582', 3, 'huayinshi', 'H', 1, NULL, '6105');
INSERT INTO `st_system_area` VALUES (3076, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '延安市', '6106', 2, 'yananshi', 'Y', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3077, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '宝塔区', '610602', 3, 'baotaqu', 'B', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3078, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '安塞区', '610603', 3, 'ansaiqu', 'A', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3079, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '延长县', '610621', 3, 'yanchangxian', 'Y', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3080, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '延川县', '610622', 3, 'yanchuanxian', 'Y', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3081, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '志丹县', '610625', 3, 'zhidanxian', 'Z', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3082, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '吴起县', '610626', 3, 'wuqixian', 'W', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3083, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '甘泉县', '610627', 3, 'ganquanxian', 'G', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3084, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '富县', '610628', 3, 'fuxian', 'F', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3085, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '洛川县', '610629', 3, 'luochuanxian', 'L', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3086, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '宜川县', '610630', 3, 'yichuanxian', 'Y', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3087, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '黄龙县', '610631', 3, 'huanglongxian', 'H', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3088, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '黄陵县', '610632', 3, 'huanglingxian', 'H', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3089, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '子长市', '610681', 3, 'zizhangshi', 'Z', 1, NULL, '6106');
INSERT INTO `st_system_area` VALUES (3090, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '汉中市', '6107', 2, 'hanzhongshi', 'H', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3091, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '汉台区', '610702', 3, 'hantaiqu', 'H', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3092, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '南郑区', '610703', 3, 'nanzhengqu', 'N', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3093, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '城固县', '610722', 3, 'chengguxian', 'C', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3094, NULL, NULL, NULL, '2025-06-20 13:16:18.432095', '2025-06-20 13:16:18.432095', '洋县', '610723', 3, 'yangxian', 'Y', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3095, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '西乡县', '610724', 3, 'xixiangxian', 'X', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3096, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '勉县', '610725', 3, 'mianxian', 'M', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3097, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '宁强县', '610726', 3, 'ningqiangxian', 'N', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3098, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '略阳县', '610727', 3, 'lveyangxian', 'L', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3099, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '镇巴县', '610728', 3, 'zhenbaxian', 'Z', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3100, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '留坝县', '610729', 3, 'liubaxian', 'L', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3101, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '佛坪县', '610730', 3, 'fupingxian', 'F', 1, NULL, '6107');
INSERT INTO `st_system_area` VALUES (3102, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '榆林市', '6108', 2, 'yulinshi', 'Y', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3103, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '榆阳区', '610802', 3, 'yuyangqu', 'Y', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3104, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '横山区', '610803', 3, 'hengshanqu', 'H', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3105, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '府谷县', '610822', 3, 'fuguxian', 'F', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3106, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '靖边县', '610824', 3, 'jingbianxian', 'J', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3107, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '定边县', '610825', 3, 'dingbianxian', 'D', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3108, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '绥德县', '610826', 3, 'suidexian', 'S', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3109, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '米脂县', '610827', 3, 'mizhixian', 'M', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3110, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '佳县', '610828', 3, 'jiaxian', 'J', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3111, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '吴堡县', '610829', 3, 'wubuxian', 'W', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3112, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '清涧县', '610830', 3, 'qingjianxian', 'Q', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3113, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '子洲县', '610831', 3, 'zizhouxian', 'Z', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3114, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '神木市', '610881', 3, 'shenmushi', 'S', 1, NULL, '6108');
INSERT INTO `st_system_area` VALUES (3115, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '安康市', '6109', 2, 'ankangshi', 'A', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3116, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '汉滨区', '610902', 3, 'hanbinqu', 'H', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3117, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '汉阴县', '610921', 3, 'hanyinxian', 'H', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3118, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '石泉县', '610922', 3, 'shiquanxian', 'S', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3119, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '宁陕县', '610923', 3, 'ningshanxian', 'N', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3120, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '紫阳县', '610924', 3, 'ziyangxian', 'Z', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3121, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '岚皋县', '610925', 3, 'langaoxian', 'L', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3122, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '平利县', '610926', 3, 'pinglixian', 'P', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3123, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '镇坪县', '610927', 3, 'zhenpingxian', 'Z', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3124, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '旬阳县', '610928', 3, 'xunyangxian', 'X', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3125, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '白河县', '610929', 3, 'baihexian', 'B', 1, NULL, '6109');
INSERT INTO `st_system_area` VALUES (3126, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '商洛市', '6110', 2, 'shangluoshi', 'S', 1, NULL, '61');
INSERT INTO `st_system_area` VALUES (3127, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '商州区', '611002', 3, 'shangzhouqu', 'S', 1, NULL, '6110');
INSERT INTO `st_system_area` VALUES (3128, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '洛南县', '611021', 3, 'luonanxian', 'L', 1, NULL, '6110');
INSERT INTO `st_system_area` VALUES (3129, NULL, NULL, NULL, '2025-06-20 13:16:18.433095', '2025-06-20 13:16:18.433095', '丹凤县', '611022', 3, 'danfengxian', 'D', 1, NULL, '6110');
INSERT INTO `st_system_area` VALUES (3130, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '商南县', '611023', 3, 'shangnanxian', 'S', 1, NULL, '6110');
INSERT INTO `st_system_area` VALUES (3131, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '山阳县', '611024', 3, 'shanyangxian', 'S', 1, NULL, '6110');
INSERT INTO `st_system_area` VALUES (3132, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '镇安县', '611025', 3, 'zhenanxian', 'Z', 1, NULL, '6110');
INSERT INTO `st_system_area` VALUES (3133, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '柞水县', '611026', 3, 'zhashuixian', 'Z', 1, NULL, '6110');
INSERT INTO `st_system_area` VALUES (3134, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '甘肃省', '62', 1, 'gansusheng', 'G', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (3135, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '兰州市', '6201', 2, 'lanzhoushi', 'L', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3136, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '城关区', '620102', 3, 'chengguanqu', 'C', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3137, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '七里河区', '620103', 3, 'qilihequ', 'Q', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3138, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '西固区', '620104', 3, 'xiguqu', 'X', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3139, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '安宁区', '620105', 3, 'anningqu', 'A', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3140, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '红古区', '620111', 3, 'hongguqu', 'H', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3141, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '永登县', '620121', 3, 'yongdengxian', 'Y', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3142, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '皋兰县', '620122', 3, 'gaolanxian', 'G', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3143, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '榆中县', '620123', 3, 'yuzhongxian', 'Y', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3144, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '兰州新区', '620171', 3, 'lanzhouxinqu', 'L', 1, NULL, '6201');
INSERT INTO `st_system_area` VALUES (3145, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '嘉峪关市', '6202', 2, 'jiayuguanshi', 'J', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3146, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '雄关街道', '620201001', 3, 'xiongguanjiedao', 'X', 1, NULL, '6202');
INSERT INTO `st_system_area` VALUES (3147, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '钢城街道', '620201002', 3, 'gangchengjiedao', 'G', 1, NULL, '6202');
INSERT INTO `st_system_area` VALUES (3148, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '新城镇', '620201100', 3, 'xinchengzhen', 'X', 1, NULL, '6202');
INSERT INTO `st_system_area` VALUES (3149, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '峪泉镇', '620201101', 3, 'yuquanzhen', 'Y', 1, NULL, '6202');
INSERT INTO `st_system_area` VALUES (3150, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '文殊镇', '620201102', 3, 'wenshuzhen', 'W', 1, NULL, '6202');
INSERT INTO `st_system_area` VALUES (3151, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '金昌市', '6203', 2, 'jinchangshi', 'J', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3152, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '金川区', '620302', 3, 'jinchuanqu', 'J', 1, NULL, '6203');
INSERT INTO `st_system_area` VALUES (3153, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '永昌县', '620321', 3, 'yongchangxian', 'Y', 1, NULL, '6203');
INSERT INTO `st_system_area` VALUES (3154, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '白银市', '6204', 2, 'baiyinshi', 'B', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3155, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '白银区', '620402', 3, 'baiyinqu', 'B', 1, NULL, '6204');
INSERT INTO `st_system_area` VALUES (3156, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '平川区', '620403', 3, 'pingchuanqu', 'P', 1, NULL, '6204');
INSERT INTO `st_system_area` VALUES (3157, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '靖远县', '620421', 3, 'jingyuanxian', 'J', 1, NULL, '6204');
INSERT INTO `st_system_area` VALUES (3158, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '会宁县', '620422', 3, 'huiningxian', 'H', 1, NULL, '6204');
INSERT INTO `st_system_area` VALUES (3159, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '景泰县', '620423', 3, 'jingtaixian', 'J', 1, NULL, '6204');
INSERT INTO `st_system_area` VALUES (3160, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '天水市', '6205', 2, 'tianshuishi', 'T', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3161, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '秦州区', '620502', 3, 'qinzhouqu', 'Q', 1, NULL, '6205');
INSERT INTO `st_system_area` VALUES (3162, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '麦积区', '620503', 3, 'maijiqu', 'M', 1, NULL, '6205');
INSERT INTO `st_system_area` VALUES (3163, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '清水县', '620521', 3, 'qingshuixian', 'Q', 1, NULL, '6205');
INSERT INTO `st_system_area` VALUES (3164, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '秦安县', '620522', 3, 'qinanxian', 'Q', 1, NULL, '6205');
INSERT INTO `st_system_area` VALUES (3165, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '甘谷县', '620523', 3, 'ganguxian', 'G', 1, NULL, '6205');
INSERT INTO `st_system_area` VALUES (3166, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '武山县', '620524', 3, 'wushanxian', 'W', 1, NULL, '6205');
INSERT INTO `st_system_area` VALUES (3167, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '张家川回族自治县', '620525', 3, 'zhangjiachuanhuizuzizhixian', 'Z', 1, NULL, '6205');
INSERT INTO `st_system_area` VALUES (3168, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '武威市', '6206', 2, 'wuweishi', 'W', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3169, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '凉州区', '620602', 3, 'liangzhouqu', 'L', 1, NULL, '6206');
INSERT INTO `st_system_area` VALUES (3170, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '民勤县', '620621', 3, 'minqinxian', 'M', 1, NULL, '6206');
INSERT INTO `st_system_area` VALUES (3171, NULL, NULL, NULL, '2025-06-20 13:16:18.434094', '2025-06-20 13:16:18.434094', '古浪县', '620622', 3, 'gulangxian', 'G', 1, NULL, '6206');
INSERT INTO `st_system_area` VALUES (3172, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '天祝藏族自治县', '620623', 3, 'tianzhuzangzuzizhixian', 'T', 1, NULL, '6206');
INSERT INTO `st_system_area` VALUES (3173, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '张掖市', '6207', 2, 'zhangyeshi', 'Z', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3174, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '甘州区', '620702', 3, 'ganzhouqu', 'G', 1, NULL, '6207');
INSERT INTO `st_system_area` VALUES (3175, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '肃南裕固族自治县', '620721', 3, 'sunanyuguzuzizhixian', 'S', 1, NULL, '6207');
INSERT INTO `st_system_area` VALUES (3176, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '民乐县', '620722', 3, 'minyuexian', 'M', 1, NULL, '6207');
INSERT INTO `st_system_area` VALUES (3177, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '临泽县', '620723', 3, 'linzexian', 'L', 1, NULL, '6207');
INSERT INTO `st_system_area` VALUES (3178, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '高台县', '620724', 3, 'gaotaixian', 'G', 1, NULL, '6207');
INSERT INTO `st_system_area` VALUES (3179, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '山丹县', '620725', 3, 'shandanxian', 'S', 1, NULL, '6207');
INSERT INTO `st_system_area` VALUES (3180, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '平凉市', '6208', 2, 'pingliangshi', 'P', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3181, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '崆峒区', '620802', 3, 'kongdongqu', 'K', 1, NULL, '6208');
INSERT INTO `st_system_area` VALUES (3182, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '泾川县', '620821', 3, 'jingchuanxian', 'J', 1, NULL, '6208');
INSERT INTO `st_system_area` VALUES (3183, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '灵台县', '620822', 3, 'lingtaixian', 'L', 1, NULL, '6208');
INSERT INTO `st_system_area` VALUES (3184, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '崇信县', '620823', 3, 'chongxinxian', 'C', 1, NULL, '6208');
INSERT INTO `st_system_area` VALUES (3185, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '庄浪县', '620825', 3, 'zhuanglangxian', 'Z', 1, NULL, '6208');
INSERT INTO `st_system_area` VALUES (3186, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '静宁县', '620826', 3, 'jingningxian', 'J', 1, NULL, '6208');
INSERT INTO `st_system_area` VALUES (3187, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '华亭市', '620881', 3, 'huatingshi', 'H', 1, NULL, '6208');
INSERT INTO `st_system_area` VALUES (3188, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '酒泉市', '6209', 2, 'jiuquanshi', 'J', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3189, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '肃州区', '620902', 3, 'suzhouqu', 'S', 1, NULL, '6209');
INSERT INTO `st_system_area` VALUES (3190, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '金塔县', '620921', 3, 'jintaxian', 'J', 1, NULL, '6209');
INSERT INTO `st_system_area` VALUES (3191, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '瓜州县', '620922', 3, 'guazhouxian', 'G', 1, NULL, '6209');
INSERT INTO `st_system_area` VALUES (3192, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '肃北蒙古族自治县', '620923', 3, 'subeimengguzuzizhixian', 'S', 1, NULL, '6209');
INSERT INTO `st_system_area` VALUES (3193, NULL, NULL, NULL, '2025-06-20 13:16:18.435094', '2025-06-20 13:16:18.435094', '阿克塞哈萨克族自治县', '620924', 3, 'akesaihasakezuzizhixian', 'A', 1, NULL, '6209');
INSERT INTO `st_system_area` VALUES (3194, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '玉门市', '620981', 3, 'yumenshi', 'Y', 1, NULL, '6209');
INSERT INTO `st_system_area` VALUES (3195, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '敦煌市', '620982', 3, 'dunhuangshi', 'D', 1, NULL, '6209');
INSERT INTO `st_system_area` VALUES (3196, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '庆阳市', '6210', 2, 'qingyangshi', 'Q', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3197, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '西峰区', '621002', 3, 'xifengqu', 'X', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3198, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '庆城县', '621021', 3, 'qingchengxian', 'Q', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3199, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '环县', '621022', 3, 'huanxian', 'H', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3200, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '华池县', '621023', 3, 'huachixian', 'H', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3201, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '合水县', '621024', 3, 'heshuixian', 'H', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3202, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '正宁县', '621025', 3, 'zhengningxian', 'Z', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3203, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '宁县', '621026', 3, 'ningxian', 'N', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3204, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '镇原县', '621027', 3, 'zhenyuanxian', 'Z', 1, NULL, '6210');
INSERT INTO `st_system_area` VALUES (3205, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '定西市', '6211', 2, 'dingxishi', 'D', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3206, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '安定区', '621102', 3, 'andingqu', 'A', 1, NULL, '6211');
INSERT INTO `st_system_area` VALUES (3207, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '通渭县', '621121', 3, 'tongweixian', 'T', 1, NULL, '6211');
INSERT INTO `st_system_area` VALUES (3208, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '陇西县', '621122', 3, 'longxixian', 'L', 1, NULL, '6211');
INSERT INTO `st_system_area` VALUES (3209, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '渭源县', '621123', 3, 'weiyuanxian', 'W', 1, NULL, '6211');
INSERT INTO `st_system_area` VALUES (3210, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '临洮县', '621124', 3, 'lintaoxian', 'L', 1, NULL, '6211');
INSERT INTO `st_system_area` VALUES (3211, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '漳县', '621125', 3, 'zhangxian', 'Z', 1, NULL, '6211');
INSERT INTO `st_system_area` VALUES (3212, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '岷县', '621126', 3, 'minxian', 'M', 1, NULL, '6211');
INSERT INTO `st_system_area` VALUES (3213, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '陇南市', '6212', 2, 'longnanshi', 'L', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3214, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '武都区', '621202', 3, 'wudouqu', 'W', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3215, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '成县', '621221', 3, 'chengxian', 'C', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3216, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '文县', '621222', 3, 'wenxian', 'W', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3217, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '宕昌县', '621223', 3, 'dangchangxian', 'D', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3218, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '康县', '621224', 3, 'kangxian', 'K', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3219, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '西和县', '621225', 3, 'xihexian', 'X', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3220, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '礼县', '621226', 3, 'lixian', 'L', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3221, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '徽县', '621227', 3, 'huixian', 'H', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3222, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '两当县', '621228', 3, 'liangdangxian', 'L', 1, NULL, '6212');
INSERT INTO `st_system_area` VALUES (3223, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '临夏回族自治州', '6229', 2, 'linxiahuizuzizhizhou', 'L', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3224, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '临夏市', '622901', 3, 'linxiashi', 'L', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3225, NULL, NULL, NULL, '2025-06-20 13:16:18.436092', '2025-06-20 13:16:18.436092', '临夏县', '622921', 3, 'linxiaxian', 'L', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3226, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '康乐县', '622922', 3, 'kanglexian', 'K', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3227, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '永靖县', '622923', 3, 'yongjingxian', 'Y', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3228, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '广河县', '622924', 3, 'guanghexian', 'G', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3229, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '和政县', '622925', 3, 'hezhengxian', 'H', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3230, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '东乡族自治县', '622926', 3, 'dongxiangzuzizhixian', 'D', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3231, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '积石山保安族东乡族撒拉族自治县', '622927', 3, 'jishishanbaoanzudongxiangzusalazuzizhixian', 'J', 1, NULL, '6229');
INSERT INTO `st_system_area` VALUES (3232, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '甘南藏族自治州', '6230', 2, 'gannanzangzuzizhizhou', 'G', 1, NULL, '62');
INSERT INTO `st_system_area` VALUES (3233, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '合作市', '623001', 3, 'hezuoshi', 'H', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3234, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '临潭县', '623021', 3, 'lintanxian', 'L', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3235, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '卓尼县', '623022', 3, 'zhuonixian', 'Z', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3236, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '舟曲县', '623023', 3, 'zhouquxian', 'Z', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3237, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '迭部县', '623024', 3, 'diebuxian', 'D', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3238, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '玛曲县', '623025', 3, 'maquxian', 'M', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3239, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '碌曲县', '623026', 3, 'luquxian', 'L', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3240, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '夏河县', '623027', 3, 'xiahexian', 'X', 1, NULL, '6230');
INSERT INTO `st_system_area` VALUES (3241, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '青海省', '63', 1, 'qinghaisheng', 'Q', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (3242, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '西宁市', '6301', 2, 'xiningshi', 'X', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3243, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '城东区', '630102', 3, 'chengdongqu', 'C', 1, NULL, '6301');
INSERT INTO `st_system_area` VALUES (3244, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '城中区', '630103', 3, 'chengzhongqu', 'C', 1, NULL, '6301');
INSERT INTO `st_system_area` VALUES (3245, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '城西区', '630104', 3, 'chengxiqu', 'C', 1, NULL, '6301');
INSERT INTO `st_system_area` VALUES (3246, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '城北区', '630105', 3, 'chengbeiqu', 'C', 1, NULL, '6301');
INSERT INTO `st_system_area` VALUES (3247, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '湟中区', '630106', 3, 'huangzhongqu', 'H', 1, NULL, '6301');
INSERT INTO `st_system_area` VALUES (3248, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '大通回族土族自治县', '630121', 3, 'datonghuizutuzuzizhixian', 'D', 1, NULL, '6301');
INSERT INTO `st_system_area` VALUES (3249, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '湟源县', '630123', 3, 'huangyuanxian', 'H', 1, NULL, '6301');
INSERT INTO `st_system_area` VALUES (3250, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '海东市', '6302', 2, 'haidongshi', 'H', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3251, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '乐都区', '630202', 3, 'ledouqu', 'L', 1, NULL, '6302');
INSERT INTO `st_system_area` VALUES (3252, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '平安区', '630203', 3, 'pinganqu', 'P', 1, NULL, '6302');
INSERT INTO `st_system_area` VALUES (3253, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '民和回族土族自治县', '630222', 3, 'minhehuizutuzuzizhixian', 'M', 1, NULL, '6302');
INSERT INTO `st_system_area` VALUES (3254, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '互助土族自治县', '630223', 3, 'huzhutuzuzizhixian', 'H', 1, NULL, '6302');
INSERT INTO `st_system_area` VALUES (3255, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '化隆回族自治县', '630224', 3, 'hualonghuizuzizhixian', 'H', 1, NULL, '6302');
INSERT INTO `st_system_area` VALUES (3256, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '循化撒拉族自治县', '630225', 3, 'xunhuasalazuzizhixian', 'X', 1, NULL, '6302');
INSERT INTO `st_system_area` VALUES (3257, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '海北藏族自治州', '6322', 2, 'haibeizangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3258, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '门源回族自治县', '632221', 3, 'menyuanhuizuzizhixian', 'M', 1, NULL, '6322');
INSERT INTO `st_system_area` VALUES (3259, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '祁连县', '632222', 3, 'qilianxian', 'Q', 1, NULL, '6322');
INSERT INTO `st_system_area` VALUES (3260, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '海晏县', '632223', 3, 'haiyanxian', 'H', 1, NULL, '6322');
INSERT INTO `st_system_area` VALUES (3261, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '刚察县', '632224', 3, 'gangchaxian', 'G', 1, NULL, '6322');
INSERT INTO `st_system_area` VALUES (3262, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '黄南藏族自治州', '6323', 2, 'huangnanzangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3263, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '同仁县', '632321', 3, 'tongrenxian', 'T', 1, NULL, '6323');
INSERT INTO `st_system_area` VALUES (3264, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '尖扎县', '632322', 3, 'jianzhaxian', 'J', 1, NULL, '6323');
INSERT INTO `st_system_area` VALUES (3265, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '泽库县', '632323', 3, 'zekuxian', 'Z', 1, NULL, '6323');
INSERT INTO `st_system_area` VALUES (3266, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '河南蒙古族自治县', '632324', 3, 'henanmengguzuzizhixian', 'H', 1, NULL, '6323');
INSERT INTO `st_system_area` VALUES (3267, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.437091', '海南藏族自治州', '6325', 2, 'hainanzangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3268, NULL, NULL, NULL, '2025-06-20 13:16:18.437091', '2025-06-20 13:16:18.438090', '共和县', '632521', 3, 'gonghexian', 'G', 1, NULL, '6325');
INSERT INTO `st_system_area` VALUES (3269, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '同德县', '632522', 3, 'tongdexian', 'T', 1, NULL, '6325');
INSERT INTO `st_system_area` VALUES (3270, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '贵德县', '632523', 3, 'guidexian', 'G', 1, NULL, '6325');
INSERT INTO `st_system_area` VALUES (3271, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '兴海县', '632524', 3, 'xinghaixian', 'X', 1, NULL, '6325');
INSERT INTO `st_system_area` VALUES (3272, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '贵南县', '632525', 3, 'guinanxian', 'G', 1, NULL, '6325');
INSERT INTO `st_system_area` VALUES (3273, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '果洛藏族自治州', '6326', 2, 'guoluozangzuzizhizhou', 'G', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3274, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '玛沁县', '632621', 3, 'maqinxian', 'M', 1, NULL, '6326');
INSERT INTO `st_system_area` VALUES (3275, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '班玛县', '632622', 3, 'banmaxian', 'B', 1, NULL, '6326');
INSERT INTO `st_system_area` VALUES (3276, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '甘德县', '632623', 3, 'gandexian', 'G', 1, NULL, '6326');
INSERT INTO `st_system_area` VALUES (3277, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '达日县', '632624', 3, 'darixian', 'D', 1, NULL, '6326');
INSERT INTO `st_system_area` VALUES (3278, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '久治县', '632625', 3, 'jiuzhixian', 'J', 1, NULL, '6326');
INSERT INTO `st_system_area` VALUES (3279, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '玛多县', '632626', 3, 'maduoxian', 'M', 1, NULL, '6326');
INSERT INTO `st_system_area` VALUES (3280, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '玉树藏族自治州', '6327', 2, 'yushuzangzuzizhizhou', 'Y', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3281, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '玉树市', '632701', 3, 'yushushi', 'Y', 1, NULL, '6327');
INSERT INTO `st_system_area` VALUES (3282, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '杂多县', '632722', 3, 'zaduoxian', 'Z', 1, NULL, '6327');
INSERT INTO `st_system_area` VALUES (3283, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '称多县', '632723', 3, 'chengduoxian', 'C', 1, NULL, '6327');
INSERT INTO `st_system_area` VALUES (3284, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '治多县', '632724', 3, 'zhiduoxian', 'Z', 1, NULL, '6327');
INSERT INTO `st_system_area` VALUES (3285, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '囊谦县', '632725', 3, 'nangqianxian', 'N', 1, NULL, '6327');
INSERT INTO `st_system_area` VALUES (3286, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '曲麻莱县', '632726', 3, 'qumalaixian', 'Q', 1, NULL, '6327');
INSERT INTO `st_system_area` VALUES (3287, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '海西蒙古族藏族自治州', '6328', 2, 'haiximengguzuzangzuzizhizhou', 'H', 1, NULL, '63');
INSERT INTO `st_system_area` VALUES (3288, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '格尔木市', '632801', 3, 'geermushi', 'G', 1, NULL, '6328');
INSERT INTO `st_system_area` VALUES (3289, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '德令哈市', '632802', 3, 'delinghashi', 'D', 1, NULL, '6328');
INSERT INTO `st_system_area` VALUES (3290, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '茫崖市', '632803', 3, 'mangyashi', 'M', 1, NULL, '6328');
INSERT INTO `st_system_area` VALUES (3291, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '乌兰县', '632821', 3, 'wulanxian', 'W', 1, NULL, '6328');
INSERT INTO `st_system_area` VALUES (3292, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '都兰县', '632822', 3, 'doulanxian', 'D', 1, NULL, '6328');
INSERT INTO `st_system_area` VALUES (3293, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '天峻县', '632823', 3, 'tianjunxian', 'T', 1, NULL, '6328');
INSERT INTO `st_system_area` VALUES (3294, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '大柴旦行政委员会', '632857', 3, 'dachaidanxingzhengweiyuanhui', 'D', 1, NULL, '6328');
INSERT INTO `st_system_area` VALUES (3295, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '宁夏回族自治区', '64', 1, 'ningxiahuizuzizhiqu', 'N', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (3296, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '银川市', '6401', 2, 'yinchuanshi', 'Y', 1, NULL, '64');
INSERT INTO `st_system_area` VALUES (3297, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '兴庆区', '640104', 3, 'xingqingqu', 'X', 1, NULL, '6401');
INSERT INTO `st_system_area` VALUES (3298, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '西夏区', '640105', 3, 'xixiaqu', 'X', 1, NULL, '6401');
INSERT INTO `st_system_area` VALUES (3299, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '金凤区', '640106', 3, 'jinfengqu', 'J', 1, NULL, '6401');
INSERT INTO `st_system_area` VALUES (3300, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '永宁县', '640121', 3, 'yongningxian', 'Y', 1, NULL, '6401');
INSERT INTO `st_system_area` VALUES (3301, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '贺兰县', '640122', 3, 'helanxian', 'H', 1, NULL, '6401');
INSERT INTO `st_system_area` VALUES (3302, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '灵武市', '640181', 3, 'lingwushi', 'L', 1, NULL, '6401');
INSERT INTO `st_system_area` VALUES (3303, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '石嘴山市', '6402', 2, 'shizuishanshi', 'S', 1, NULL, '64');
INSERT INTO `st_system_area` VALUES (3304, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '大武口区', '640202', 3, 'dawukouqu', 'D', 1, NULL, '6402');
INSERT INTO `st_system_area` VALUES (3305, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '惠农区', '640205', 3, 'huinongqu', 'H', 1, NULL, '6402');
INSERT INTO `st_system_area` VALUES (3306, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '平罗县', '640221', 3, 'pingluoxian', 'P', 1, NULL, '6402');
INSERT INTO `st_system_area` VALUES (3307, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '吴忠市', '6403', 2, 'wuzhongshi', 'W', 1, NULL, '64');
INSERT INTO `st_system_area` VALUES (3308, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '利通区', '640302', 3, 'litongqu', 'L', 1, NULL, '6403');
INSERT INTO `st_system_area` VALUES (3309, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.438090', '红寺堡区', '640303', 3, 'hongsibaoqu', 'H', 1, NULL, '6403');
INSERT INTO `st_system_area` VALUES (3310, NULL, NULL, NULL, '2025-06-20 13:16:18.438090', '2025-06-20 13:16:18.439089', '盐池县', '640323', 3, 'yanchixian', 'Y', 1, NULL, '6403');
INSERT INTO `st_system_area` VALUES (3311, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '同心县', '640324', 3, 'tongxinxian', 'T', 1, NULL, '6403');
INSERT INTO `st_system_area` VALUES (3312, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '青铜峡市', '640381', 3, 'qingtongxiashi', 'Q', 1, NULL, '6403');
INSERT INTO `st_system_area` VALUES (3313, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '固原市', '6404', 2, 'guyuanshi', 'G', 1, NULL, '64');
INSERT INTO `st_system_area` VALUES (3314, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '原州区', '640402', 3, 'yuanzhouqu', 'Y', 1, NULL, '6404');
INSERT INTO `st_system_area` VALUES (3315, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '西吉县', '640422', 3, 'xijixian', 'X', 1, NULL, '6404');
INSERT INTO `st_system_area` VALUES (3316, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '隆德县', '640423', 3, 'longdexian', 'L', 1, NULL, '6404');
INSERT INTO `st_system_area` VALUES (3317, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '泾源县', '640424', 3, 'jingyuanxian', 'J', 1, NULL, '6404');
INSERT INTO `st_system_area` VALUES (3318, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '彭阳县', '640425', 3, 'pengyangxian', 'P', 1, NULL, '6404');
INSERT INTO `st_system_area` VALUES (3319, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '中卫市', '6405', 2, 'zhongweishi', 'Z', 1, NULL, '64');
INSERT INTO `st_system_area` VALUES (3320, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '沙坡头区', '640502', 3, 'shapotouqu', 'S', 1, NULL, '6405');
INSERT INTO `st_system_area` VALUES (3321, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '中宁县', '640521', 3, 'zhongningxian', 'Z', 1, NULL, '6405');
INSERT INTO `st_system_area` VALUES (3322, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '海原县', '640522', 3, 'haiyuanxian', 'H', 1, NULL, '6405');
INSERT INTO `st_system_area` VALUES (3323, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '新疆维吾尔自治区', '65', 1, 'xinjiangweiwuerzizhiqu', 'X', 1, NULL, NULL);
INSERT INTO `st_system_area` VALUES (3324, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '乌鲁木齐市', '6501', 2, 'wulumuqishi', 'W', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3325, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '天山区', '650102', 3, 'tianshanqu', 'T', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3326, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '沙依巴克区', '650103', 3, 'shayibakequ', 'S', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3327, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '新市区', '650104', 3, 'xinshiqu', 'X', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3328, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '水磨沟区', '650105', 3, 'shuimogouqu', 'S', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3329, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '头屯河区', '650106', 3, 'toutunhequ', 'T', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3330, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '达坂城区', '650107', 3, 'dabanchengqu', 'D', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3331, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '米东区', '650109', 3, 'midongqu', 'M', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3332, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '乌鲁木齐县', '650121', 3, 'wulumuqixian', 'W', 1, NULL, '6501');
INSERT INTO `st_system_area` VALUES (3333, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '克拉玛依市', '6502', 2, 'kelamayishi', 'K', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3334, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '独山子区', '650202', 3, 'dushanziqu', 'D', 1, NULL, '6502');
INSERT INTO `st_system_area` VALUES (3335, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '克拉玛依区', '650203', 3, 'kelamayiqu', 'K', 1, NULL, '6502');
INSERT INTO `st_system_area` VALUES (3336, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '白碱滩区', '650204', 3, 'baijiantanqu', 'B', 1, NULL, '6502');
INSERT INTO `st_system_area` VALUES (3337, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '乌尔禾区', '650205', 3, 'wuerhequ', 'W', 1, NULL, '6502');
INSERT INTO `st_system_area` VALUES (3338, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '吐鲁番市', '6504', 2, 'tulufanshi', 'T', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3339, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '高昌区', '650402', 3, 'gaochangqu', 'G', 1, NULL, '6504');
INSERT INTO `st_system_area` VALUES (3340, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '鄯善县', '650421', 3, 'shanshanxian', 'S', 1, NULL, '6504');
INSERT INTO `st_system_area` VALUES (3341, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '托克逊县', '650422', 3, 'tuokexunxian', 'T', 1, NULL, '6504');
INSERT INTO `st_system_area` VALUES (3342, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '哈密市', '6505', 2, 'hamishi', 'H', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3343, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '伊州区', '650502', 3, 'yizhouqu', 'Y', 1, NULL, '6505');
INSERT INTO `st_system_area` VALUES (3344, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '巴里坤哈萨克自治县', '650521', 3, 'balikunhasakezizhixian', 'B', 1, NULL, '6505');
INSERT INTO `st_system_area` VALUES (3345, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '伊吾县', '650522', 3, 'yiwuxian', 'Y', 1, NULL, '6505');
INSERT INTO `st_system_area` VALUES (3346, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '昌吉回族自治州', '6523', 2, 'changjihuizuzizhizhou', 'C', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3347, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '昌吉市', '652301', 3, 'changjishi', 'C', 1, NULL, '6523');
INSERT INTO `st_system_area` VALUES (3348, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '阜康市', '652302', 3, 'fukangshi', 'F', 1, NULL, '6523');
INSERT INTO `st_system_area` VALUES (3349, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '呼图壁县', '652323', 3, 'hutubixian', 'H', 1, NULL, '6523');
INSERT INTO `st_system_area` VALUES (3350, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '玛纳斯县', '652324', 3, 'manasixian', 'M', 1, NULL, '6523');
INSERT INTO `st_system_area` VALUES (3351, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '奇台县', '652325', 3, 'qitaixian', 'Q', 1, NULL, '6523');
INSERT INTO `st_system_area` VALUES (3352, NULL, NULL, NULL, '2025-06-20 13:16:18.439089', '2025-06-20 13:16:18.439089', '吉木萨尔县', '652327', 3, 'jimusaerxian', 'J', 1, NULL, '6523');
INSERT INTO `st_system_area` VALUES (3353, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '木垒哈萨克自治县', '652328', 3, 'muleihasakezizhixian', 'M', 1, NULL, '6523');
INSERT INTO `st_system_area` VALUES (3354, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '博尔塔拉蒙古自治州', '6527', 2, 'boertalamengguzizhizhou', 'B', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3355, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '博乐市', '652701', 3, 'boleshi', 'B', 1, NULL, '6527');
INSERT INTO `st_system_area` VALUES (3356, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '阿拉山口市', '652702', 3, 'alashankoushi', 'A', 1, NULL, '6527');
INSERT INTO `st_system_area` VALUES (3357, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '精河县', '652722', 3, 'jinghexian', 'J', 1, NULL, '6527');
INSERT INTO `st_system_area` VALUES (3358, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '温泉县', '652723', 3, 'wenquanxian', 'W', 1, NULL, '6527');
INSERT INTO `st_system_area` VALUES (3359, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '巴音郭楞蒙古自治州', '6528', 2, 'bayinguolengmengguzizhizhou', 'B', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3360, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '库尔勒市', '652801', 3, 'kuerleishi', 'K', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3361, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '轮台县', '652822', 3, 'luntaixian', 'L', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3362, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '尉犁县', '652823', 3, 'yulixian', 'Y', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3363, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '若羌县', '652824', 3, 'ruoqiangxian', 'R', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3364, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '且末县', '652825', 3, 'qiemoxian', 'Q', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3365, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '焉耆回族自治县', '652826', 3, 'yanqihuizuzizhixian', 'Y', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3366, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '和静县', '652827', 3, 'hejingxian', 'H', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3367, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '和硕县', '652828', 3, 'heshuoxian', 'H', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3368, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '博湖县', '652829', 3, 'bohuxian', 'B', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3369, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '库尔勒经济技术开发区', '652871', 3, 'kuerleijingjijishukaifaqu', 'K', 1, NULL, '6528');
INSERT INTO `st_system_area` VALUES (3370, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '阿克苏地区', '6529', 2, 'akesudiqu', 'A', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3371, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '阿克苏市', '652901', 3, 'akesushi', 'A', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3372, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '库车市', '652902', 3, 'kucheshi', 'K', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3373, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '温宿县', '652922', 3, 'wensuxian', 'W', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3374, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '沙雅县', '652924', 3, 'shayaxian', 'S', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3375, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '新和县', '652925', 3, 'xinhexian', 'X', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3376, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '拜城县', '652926', 3, 'baichengxian', 'B', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3377, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '乌什县', '652927', 3, 'wushenxian', 'W', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3378, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '阿瓦提县', '652928', 3, 'awatixian', 'A', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3379, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '柯坪县', '652929', 3, 'kepingxian', 'K', 1, NULL, '6529');
INSERT INTO `st_system_area` VALUES (3380, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '克孜勒苏柯尔克孜自治州', '6530', 2, 'kezileisukeerkezizizhizhou', 'K', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3381, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '阿图什市', '653001', 3, 'atushenshi', 'A', 1, NULL, '6530');
INSERT INTO `st_system_area` VALUES (3382, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '阿克陶县', '653022', 3, 'aketaoxian', 'A', 1, NULL, '6530');
INSERT INTO `st_system_area` VALUES (3383, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '阿合奇县', '653023', 3, 'aheqixian', 'A', 1, NULL, '6530');
INSERT INTO `st_system_area` VALUES (3384, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '乌恰县', '653024', 3, 'wuqiaxian', 'W', 1, NULL, '6530');
INSERT INTO `st_system_area` VALUES (3385, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '喀什地区', '6531', 2, 'kashidiqu', 'K', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3386, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '喀什市', '653101', 3, 'kashishi', 'K', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3387, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '疏附县', '653121', 3, 'shufuxian', 'S', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3388, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '疏勒县', '653122', 3, 'shulexian', 'S', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3389, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '英吉沙县', '653123', 3, 'yingjishaxian', 'Y', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3390, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '泽普县', '653124', 3, 'zepuxian', 'Z', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3391, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '莎车县', '653125', 3, 'shachexian', 'S', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3392, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '叶城县', '653126', 3, 'yechengxian', 'Y', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3393, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '麦盖提县', '653127', 3, 'maigaitixian', 'M', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3394, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '岳普湖县', '653128', 3, 'yuepuhuxian', 'Y', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3395, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.440088', '伽师县', '653129', 3, 'gashixian', 'G', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3396, NULL, NULL, NULL, '2025-06-20 13:16:18.440088', '2025-06-20 13:16:18.441088', '巴楚县', '653130', 3, 'bachuxian', 'B', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3397, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '塔什库尔干塔吉克自治县', '653131', 3, 'tashenkuergantajikezizhixian', 'T', 1, NULL, '6531');
INSERT INTO `st_system_area` VALUES (3398, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '和田地区', '6532', 2, 'hetiandiqu', 'H', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3399, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '和田市', '653201', 3, 'hetianshi', 'H', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3400, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '和田县', '653221', 3, 'hetianxian', 'H', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3401, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '墨玉县', '653222', 3, 'moyuxian', 'M', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3402, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '皮山县', '653223', 3, 'pishanxian', 'P', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3403, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '洛浦县', '653224', 3, 'luopuxian', 'L', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3404, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '策勒县', '653225', 3, 'celeixian', 'C', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3405, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '于田县', '653226', 3, 'yutianxian', 'Y', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3406, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '民丰县', '653227', 3, 'minfengxian', 'M', 1, NULL, '6532');
INSERT INTO `st_system_area` VALUES (3407, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '伊犁哈萨克自治州', '6540', 2, 'yilihasakezizhizhou', 'Y', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3408, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '伊宁市', '654002', 3, 'yiningshi', 'Y', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3409, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '奎屯市', '654003', 3, 'kuitunshi', 'K', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3410, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '霍尔果斯市', '654004', 3, 'huoerguosishi', 'H', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3411, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '伊宁县', '654021', 3, 'yiningxian', 'Y', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3412, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '察布查尔锡伯自治县', '654022', 3, 'chabuchaerxibozizhixian', 'C', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3413, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '霍城县', '654023', 3, 'huochengxian', 'H', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3414, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '巩留县', '654024', 3, 'gongliuxian', 'G', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3415, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '新源县', '654025', 3, 'xinyuanxian', 'X', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3416, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '昭苏县', '654026', 3, 'zhaosuxian', 'Z', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3417, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '特克斯县', '654027', 3, 'tekesixian', 'T', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3418, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '尼勒克县', '654028', 3, 'nileikexian', 'N', 1, NULL, '6540');
INSERT INTO `st_system_area` VALUES (3419, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '塔城地区', '6542', 2, 'tachengdiqu', 'T', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3420, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '塔城市', '654201', 3, 'tachengshi', 'T', 1, NULL, '6542');
INSERT INTO `st_system_area` VALUES (3421, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '乌苏市', '654202', 3, 'wusushi', 'W', 1, NULL, '6542');
INSERT INTO `st_system_area` VALUES (3422, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '额敏县', '654221', 3, 'eminxian', 'E', 1, NULL, '6542');
INSERT INTO `st_system_area` VALUES (3423, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '沙湾县', '654223', 3, 'shawanxian', 'S', 1, NULL, '6542');
INSERT INTO `st_system_area` VALUES (3424, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '托里县', '654224', 3, 'tuolixian', 'T', 1, NULL, '6542');
INSERT INTO `st_system_area` VALUES (3425, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '裕民县', '654225', 3, 'yuminxian', 'Y', 1, NULL, '6542');
INSERT INTO `st_system_area` VALUES (3426, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '和布克赛尔蒙古自治县', '654226', 3, 'hebukesaiermengguzizhixian', 'H', 1, NULL, '6542');
INSERT INTO `st_system_area` VALUES (3427, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '阿勒泰地区', '6543', 2, 'aleitaidiqu', 'A', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3428, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '阿勒泰市', '654301', 3, 'aleitaishi', 'A', 1, NULL, '6543');
INSERT INTO `st_system_area` VALUES (3429, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '布尔津县', '654321', 3, 'buerjinxian', 'B', 1, NULL, '6543');
INSERT INTO `st_system_area` VALUES (3430, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '富蕴县', '654322', 3, 'fuyunxian', 'F', 1, NULL, '6543');
INSERT INTO `st_system_area` VALUES (3431, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '福海县', '654323', 3, 'fuhaixian', 'F', 1, NULL, '6543');
INSERT INTO `st_system_area` VALUES (3432, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '哈巴河县', '654324', 3, 'habahexian', 'H', 1, NULL, '6543');
INSERT INTO `st_system_area` VALUES (3433, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '青河县', '654325', 3, 'qinghexian', 'Q', 1, NULL, '6543');
INSERT INTO `st_system_area` VALUES (3434, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '吉木乃县', '654326', 3, 'jimunaixian', 'J', 1, NULL, '6543');
INSERT INTO `st_system_area` VALUES (3435, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '自治区直辖县级行政区划', '6590', 2, 'zizhiquzhixiaxianjixingzhengquhua', 'Z', 1, NULL, '65');
INSERT INTO `st_system_area` VALUES (3436, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '石河子市', '659001', 3, 'shihezishi', 'S', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3437, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '阿拉尔市', '659002', 3, 'alaershi', 'A', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3438, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.441088', '图木舒克市', '659003', 3, 'tumushukeshi', 'T', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3439, NULL, NULL, NULL, '2025-06-20 13:16:18.441088', '2025-06-20 13:16:18.442087', '五家渠市', '659004', 3, 'wujiaqushi', 'W', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3440, NULL, NULL, NULL, '2025-06-20 13:16:18.442087', '2025-06-20 13:16:18.442087', '北屯市', '659005', 3, 'beitunshi', 'B', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3441, NULL, NULL, NULL, '2025-06-20 13:16:18.442087', '2025-06-20 13:16:18.442087', '铁门关市', '659006', 3, 'tiemenguanshi', 'T', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3442, NULL, NULL, NULL, '2025-06-20 13:16:18.442087', '2025-06-20 13:16:18.442087', '双河市', '659007', 3, 'shuangheshi', 'S', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3443, NULL, NULL, NULL, '2025-06-20 13:16:18.442087', '2025-06-20 13:16:18.442087', '可克达拉市', '659008', 3, 'kekedalashi', 'K', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3444, NULL, NULL, NULL, '2025-06-20 13:16:18.442087', '2025-06-20 13:16:18.442087', '昆玉市', '659009', 3, 'kunyushi', 'K', 1, NULL, '6590');
INSERT INTO `st_system_area` VALUES (3445, NULL, NULL, NULL, '2025-06-20 13:16:18.442087', '2025-06-20 13:16:18.442087', '胡杨河市', '659010', 3, 'huyangheshi', 'H', 1, NULL, '6590');

-- ----------------------------
-- Table structure for st_system_config
-- ----------------------------
DROP TABLE IF EXISTS `st_system_config`;
CREATE TABLE `st_system_config`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `data_options` json NULL,
  `form_item_type` int NOT NULL,
  `rule` json NULL,
  `placeholder` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `setting` json NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_system_config_key_parent_id_f3c8eebf_uniq`(`key` ASC, `parent_id` ASC) USING BTREE,
  INDEX `st_system_config_key_bf979745`(`key` ASC) USING BTREE,
  INDEX `st_system_config_creator_id_4e0a4483`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_config_parent_id_3f1feeb5`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_config
-- ----------------------------
INSERT INTO `st_system_config` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:39.220670', '2025-06-20 13:15:39.220670', '基础配置', 'base', NULL, 0, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `st_system_config` VALUES (2, NULL, NULL, NULL, '2025-06-20 14:42:24.399743', '2025-06-20 13:15:39.232664', '网页标题', 'web_title', '\"小丁Admin\"', 1, 1, NULL, 0, '[]', '请输入网站标题', NULL, NULL, 1);
INSERT INTO `st_system_config` VALUES (3, NULL, NULL, NULL, '2025-06-20 14:42:24.412736', '2025-06-20 13:15:39.243656', '网站小图标', 'web_favicon', '\"\"', 1, 1, NULL, 0, '[]', '请输入网站小图标', NULL, NULL, 1);
INSERT INTO `st_system_config` VALUES (4, NULL, NULL, NULL, '2025-06-20 14:42:24.425745', '2025-06-20 13:15:39.255652', '开启验证码', 'captcha_state', 'false', 1, 0, NULL, 9, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请选择', NULL, NULL, 1);
INSERT INTO `st_system_config` VALUES (5, NULL, NULL, NULL, '2025-06-20 14:42:24.438223', '2025-06-20 13:15:39.267642', '创建用户默认密码', 'default_password', '\"admin123456\"', 2, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入默认密码', NULL, NULL, 1);
INSERT INTO `st_system_config` VALUES (6, NULL, NULL, NULL, '2025-06-20 13:15:39.275639', '2025-06-20 13:15:39.275639', '登录页配置', 'login', NULL, 1, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `st_system_config` VALUES (7, NULL, NULL, NULL, '2025-06-20 14:42:54.696483', '2025-06-20 13:15:39.284635', '网站标题', 'site_title', '\"小丁Admin\"', 1, 1, NULL, 0, '[]', '请输入网站标题', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (8, NULL, NULL, NULL, '2025-06-20 14:42:54.709475', '2025-06-20 13:15:39.293628', '网站名称', 'site_name', '\"后台管理系统\"', 1, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入网站名称', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (9, NULL, NULL, NULL, '2025-06-20 14:42:54.719467', '2025-06-20 13:15:39.305624', '登录网站logo', 'site_logo', NULL, 2, 1, NULL, 7, '[]', '请上传网站logo', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (10, NULL, NULL, NULL, '2025-06-20 14:42:54.732460', '2025-06-20 13:15:39.318613', '登录页背景图', 'login_background', NULL, 3, 1, NULL, 7, '[]', '请上传登录背景页', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (11, NULL, NULL, NULL, '2025-06-20 14:42:54.745315', '2025-06-20 13:15:39.329607', '版权信息', 'copyright', '\"2021-2024 小丁 版权所有\"', 4, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入版权信息', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (12, NULL, NULL, NULL, '2025-06-20 14:42:54.758315', '2025-06-20 13:15:39.338601', '备案信息', 'keep_record', '\"豫ICP备18005113号-3\"', 5, 1, NULL, 0, '[{\"message\": \"必填项不能为空\", \"required\": true}]', '请输入备案信息', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (13, NULL, NULL, NULL, '2025-06-20 14:42:54.768304', '2025-06-20 13:15:39.347714', '帮助链接', 'help_url', '\"https://django-vue-admin.com\"', 6, 1, NULL, 0, '\"\"', '请输入帮助信息', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (14, NULL, NULL, NULL, '2025-06-20 14:42:54.781295', '2025-06-20 13:15:39.356611', '隐私链接', 'privacy_url', '\"/api/system/clause/privacy.html\"', 7, 1, NULL, 0, '[]', '请填写隐私链接', NULL, NULL, 6);
INSERT INTO `st_system_config` VALUES (15, NULL, NULL, NULL, '2025-06-20 14:42:54.793289', '2025-06-20 13:15:39.367409', '条款链接', 'clause_url', '\"/api/system/clause/terms_service.html\"', 8, 1, NULL, 0, '[]', '请输入条款链接', NULL, NULL, 6);

-- ----------------------------
-- Table structure for st_system_dept
-- ----------------------------
DROP TABLE IF EXISTS `st_system_dept`;
CREATE TABLE `st_system_dept`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sort` int NOT NULL,
  `owner` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key` ASC) USING BTREE,
  INDEX `st_system_dept_creator_id_fb8e1e82`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_dept_parent_id_3716119d`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_dept
-- ----------------------------
INSERT INTO `st_system_dept` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:36.434006', '2025-06-20 13:15:36.434006', 'DVAdmin团队', 'dvadmin', 1, '', '', '', 1, NULL, NULL);
INSERT INTO `st_system_dept` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:15:36.442021', '2025-06-20 13:15:36.442021', '运营部', '', 2, '', '', '', 1, NULL, 1);
INSERT INTO `st_system_dept` VALUES (3, NULL, NULL, NULL, '2025-06-20 13:15:36.450105', '2025-06-20 13:15:36.450105', '技术部', 'technology', 1, '', '', '', 1, NULL, 1);

-- ----------------------------
-- Table structure for st_system_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `st_system_dictionary`;
CREATE TABLE `st_system_dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `type` int NOT NULL,
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_value` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort` int NULL DEFAULT NULL,
  `remark` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_dictionary_creator_id_2c48efbd`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_dictionary_parent_id_ebf75cf9`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_dictionary
-- ----------------------------
INSERT INTO `st_system_dictionary` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:38.414956', '2025-06-20 13:15:38.414956', '启用/禁用-布尔值', 'button_status_bool', 0, NULL, 0, 1, 1, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:15:38.430950', '2025-06-20 13:15:38.430950', '启用', 'true', 6, 'success', 1, 1, 1, NULL, NULL, 1);
INSERT INTO `st_system_dictionary` VALUES (3, NULL, NULL, NULL, '2025-06-20 13:15:38.443942', '2025-06-20 13:15:38.443942', '禁用', 'false', 6, 'danger', 1, 1, 2, NULL, NULL, 1);
INSERT INTO `st_system_dictionary` VALUES (4, NULL, NULL, NULL, '2025-06-20 13:15:38.453935', '2025-06-20 13:15:38.453935', '系统按钮', 'system_button', 0, NULL, 0, 1, 2, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (5, NULL, NULL, NULL, '2025-06-20 13:15:38.464956', '2025-06-20 13:15:38.464956', '新增', 'Create', 0, 'success', 1, 1, 1, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (6, NULL, NULL, NULL, '2025-06-20 13:15:38.475842', '2025-06-20 13:15:38.475842', '编辑', 'Update', 0, 'primary', 1, 1, 2, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (7, NULL, NULL, NULL, '2025-06-20 13:15:38.486776', '2025-06-20 13:15:38.486776', '删除', 'Delete', 0, 'danger', 1, 1, 3, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (8, NULL, NULL, NULL, '2025-06-20 13:15:38.500771', '2025-06-20 13:15:38.500771', '详情', 'Retrieve', 0, 'info', 1, 1, 4, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (9, NULL, NULL, NULL, '2025-06-20 13:15:38.512760', '2025-06-20 13:15:38.512760', '查询', 'Search', 0, 'warning', 1, 1, 5, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (10, NULL, NULL, NULL, '2025-06-20 13:15:38.524256', '2025-06-20 13:15:38.524256', '保存', 'Save', 0, 'success', 1, 1, 6, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (11, NULL, NULL, NULL, '2025-06-20 13:15:38.536700', '2025-06-20 13:15:38.536700', '导入', 'Import', 0, 'primary', 1, 1, 7, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (12, NULL, NULL, NULL, '2025-06-20 13:15:38.548340', '2025-06-20 13:15:38.548340', '导出', 'Export', 0, 'warning', 1, 1, 8, NULL, NULL, 4);
INSERT INTO `st_system_dictionary` VALUES (13, NULL, NULL, NULL, '2025-06-20 13:15:38.559660', '2025-06-20 13:15:38.559660', '启用/禁用-数字值', 'button_status_number', 0, NULL, 0, 1, 3, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (14, NULL, NULL, NULL, '2025-06-20 13:15:38.572649', '2025-06-20 13:15:38.572649', '启用', '1', 1, 'success', 1, 1, 1, NULL, NULL, 13);
INSERT INTO `st_system_dictionary` VALUES (15, NULL, NULL, NULL, '2025-06-20 13:15:38.586554', '2025-06-20 13:15:38.586554', '禁用', '0', 1, 'danger', 1, 1, 2, NULL, NULL, 13);
INSERT INTO `st_system_dictionary` VALUES (16, NULL, NULL, NULL, '2025-06-20 13:15:38.599875', '2025-06-20 13:15:38.599875', '是/否-布尔值', 'button_whether_bool', 0, NULL, 0, 1, 4, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (17, NULL, NULL, NULL, '2025-06-20 13:15:38.615140', '2025-06-20 13:15:38.615140', '是', 'true', 6, 'success', 1, 1, 1, NULL, NULL, 16);
INSERT INTO `st_system_dictionary` VALUES (18, NULL, NULL, NULL, '2025-06-20 13:15:38.630523', '2025-06-20 13:15:38.630523', '否', 'false', 6, 'danger', 1, 1, 2, NULL, NULL, 16);
INSERT INTO `st_system_dictionary` VALUES (19, NULL, NULL, NULL, '2025-06-20 13:15:38.644517', '2025-06-20 13:15:38.644517', '是/否-数字值', 'button_whether_number', 0, NULL, 0, 1, 5, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (20, NULL, NULL, NULL, '2025-06-20 13:15:38.660574', '2025-06-20 13:15:38.660574', '是', '1', 1, 'success', 1, 1, 1, NULL, NULL, 19);
INSERT INTO `st_system_dictionary` VALUES (21, NULL, NULL, NULL, '2025-06-20 13:15:38.677025', '2025-06-20 13:15:38.677025', '否', '2', 1, 'danger', 1, 1, 2, NULL, NULL, 19);
INSERT INTO `st_system_dictionary` VALUES (22, NULL, NULL, NULL, '2025-06-20 13:15:38.695035', '2025-06-20 13:15:38.695035', '用户类型', 'user_type', 0, NULL, 0, 1, 6, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (23, NULL, NULL, NULL, '2025-06-20 13:15:38.713022', '2025-06-20 13:15:38.713022', '后台用户', '0', 1, NULL, 1, 1, 1, NULL, NULL, 22);
INSERT INTO `st_system_dictionary` VALUES (24, NULL, NULL, NULL, '2025-06-20 13:15:38.732010', '2025-06-20 13:15:38.732010', '前台用户', '1', 1, NULL, 1, 1, 2, NULL, NULL, 22);
INSERT INTO `st_system_dictionary` VALUES (25, NULL, NULL, NULL, '2025-06-20 13:15:38.749193', '2025-06-20 13:15:38.749193', '表单类型', 'config_form_type', 0, NULL, 0, 1, 7, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (26, NULL, NULL, NULL, '2025-06-20 13:15:38.768439', '2025-06-20 13:15:38.768439', 'text', '0', 1, NULL, 1, 1, 0, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (27, NULL, NULL, NULL, '2025-06-20 13:15:38.788427', '2025-06-20 13:15:38.788427', 'textarea', '3', 1, '', 1, 1, 0, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (28, NULL, NULL, NULL, '2025-06-20 13:15:38.807307', '2025-06-20 13:15:38.807307', 'number', '10', 1, '', 1, 1, 0, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (29, NULL, NULL, NULL, '2025-06-20 13:15:38.829313', '2025-06-20 13:15:38.829313', 'datetime', '1', 1, NULL, 1, 1, 1, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (30, NULL, NULL, NULL, '2025-06-20 13:15:38.851300', '2025-06-20 13:15:38.851300', 'date', '2', 1, NULL, 1, 1, 2, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (31, NULL, NULL, NULL, '2025-06-20 13:15:38.871196', '2025-06-20 13:15:38.871196', 'time', '15', 1, '', 1, 1, 3, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (32, NULL, NULL, NULL, '2025-06-20 13:15:38.892169', '2025-06-20 13:15:38.892169', 'select', '4', 1, NULL, 1, 1, 4, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (33, NULL, NULL, NULL, '2025-06-20 13:15:38.920153', '2025-06-20 13:15:38.920153', 'checkbox', '5', 1, NULL, 1, 1, 5, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (34, NULL, NULL, NULL, '2025-06-20 13:15:38.947134', '2025-06-20 13:15:38.947134', 'radio', '6', 1, NULL, 1, 1, 6, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (35, NULL, NULL, NULL, '2025-06-20 13:15:38.973123', '2025-06-20 13:15:38.973123', 'switch', '9', 1, '', 1, 1, 6, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (36, NULL, NULL, NULL, '2025-06-20 13:15:38.993111', '2025-06-20 13:15:38.993111', '文件附件', '8', 1, '', 1, 1, 7, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (37, NULL, NULL, NULL, '2025-06-20 13:15:39.013292', '2025-06-20 13:15:39.013292', '图片(单张)', '7', 1, '', 1, 1, 8, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (38, NULL, NULL, NULL, '2025-06-20 13:15:39.036361', '2025-06-20 13:15:39.036361', '图片(多张)', '12', 1, '', 1, 1, 9, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (39, NULL, NULL, NULL, '2025-06-20 13:15:39.059350', '2025-06-20 13:15:39.059350', '数组', '11', 1, '', 1, 1, 11, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (40, NULL, NULL, NULL, '2025-06-20 13:15:39.080356', '2025-06-20 13:15:39.080356', '关联表', '13', 1, '', 1, 1, 13, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (41, NULL, NULL, NULL, '2025-06-20 13:15:39.100790', '2025-06-20 13:15:39.100790', '关联表(多选)', '14', 1, '', 1, 1, 14, NULL, NULL, 25);
INSERT INTO `st_system_dictionary` VALUES (42, NULL, NULL, NULL, '2025-06-20 13:15:39.121776', '2025-06-20 13:15:39.121776', '性别', 'gender', 0, NULL, 0, 1, 8, NULL, NULL, NULL);
INSERT INTO `st_system_dictionary` VALUES (43, NULL, NULL, NULL, '2025-06-20 13:15:39.144779', '2025-06-20 13:15:39.144779', '未知', '0', 1, NULL, 1, 1, 0, NULL, NULL, 42);
INSERT INTO `st_system_dictionary` VALUES (44, NULL, NULL, NULL, '2025-06-20 13:15:39.169697', '2025-06-20 13:15:39.169697', '男', '1', 1, NULL, 1, 1, 1, NULL, NULL, 42);
INSERT INTO `st_system_dictionary` VALUES (45, NULL, NULL, NULL, '2025-06-20 13:15:39.195683', '2025-06-20 13:15:39.195683', '女', '2', 1, NULL, 1, 1, 2, NULL, NULL, 42);

-- ----------------------------
-- Table structure for st_system_field_permission
-- ----------------------------
DROP TABLE IF EXISTS `st_system_field_permission`;
CREATE TABLE `st_system_field_permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `is_query` tinyint(1) NOT NULL,
  `is_create` tinyint(1) NOT NULL,
  `is_update` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `field_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_field_permission_creator_id_0c5d991b`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_field_permission_field_id_43483cd5`(`field_id` ASC) USING BTREE,
  INDEX `st_system_field_permission_role_id_6443d450`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_field_permission
-- ----------------------------

-- ----------------------------
-- Table structure for st_system_file_list
-- ----------------------------
DROP TABLE IF EXISTS `st_system_file_list`;
CREATE TABLE `st_system_file_list`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5sum` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upload_method` smallint NULL DEFAULT NULL,
  `file_type` smallint NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_file_list_creator_id_6dd4c9a8`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_file_list
-- ----------------------------
INSERT INTO `st_system_file_list` VALUES (1, NULL, '4', NULL, '2025-06-20 13:27:02.837355', '2025-06-20 13:27:02.837355', 'cat.png', 'files/6/d/6d86571d48bb60612bf1a6024b2bbfd4.png', 'media/files\\6\\d\\6d86571d48bb60612bf1a6024b2bbfd4.png', 'local', 'image/png', '21612', '6d86571d48bb60612bf1a6024b2bbfd4', 0, 0, 4);
INSERT INTO `st_system_file_list` VALUES (2, NULL, '4', NULL, '2025-06-20 13:28:13.501562', '2025-06-20 13:28:13.501562', '27b64cd4032ef700d2309d1ef846821.jpg', 'files/1/2/1268113536aee2f370d1f68a5429c5c8.jpg', 'media/files\\1\\2\\1268113536aee2f370d1f68a5429c5c8.jpg', 'local', 'image/jpeg', '742308', '1268113536aee2f370d1f68a5429c5c8', 0, 0, 4);
INSERT INTO `st_system_file_list` VALUES (3, NULL, '4', NULL, '2025-06-20 13:31:04.325977', '2025-06-20 13:31:04.325977', '87bdffdf99337397b66c03bea227959.jpg', 'files/0/6/0617882ddf911177d53646290bf0e73b.jpg', 'media/files\\0\\6\\0617882ddf911177d53646290bf0e73b.jpg', 'local', 'image/jpeg', '248981', '0617882ddf911177d53646290bf0e73b', 0, 0, 4);
INSERT INTO `st_system_file_list` VALUES (4, NULL, NULL, NULL, '2025-07-02 09:59:31.216965', '2025-07-02 09:59:31.216965', '.jpeg', 'files/7/8/789849c7d472a4e72e0e06dcdcd3b7b1', 'media/files\\7\\8\\789849c7d472a4e72e0e06dcdcd3b7b1', 'local', 'image/jpeg', '3068', '789849c7d472a4e72e0e06dcdcd3b7b1', 0, 0, NULL);
INSERT INTO `st_system_file_list` VALUES (5, NULL, NULL, NULL, '2025-07-02 09:59:57.020971', '2025-07-02 09:59:57.020971', '1.png.jpeg', 'files/5/9/595974f1747478954a2c4b628997806e.jpeg', 'media/files\\5\\9\\595974f1747478954a2c4b628997806e.jpeg', 'local', 'image/jpeg', '5252', '595974f1747478954a2c4b628997806e', 0, 0, NULL);
INSERT INTO `st_system_file_list` VALUES (6, NULL, '4', NULL, '2025-07-02 10:16:15.706170', '2025-07-02 10:16:15.706170', '1.png', 'files/6/8/68e6c9ad1a38b7d2e8c723966363d018.png', 'media/files\\6\\8\\68e6c9ad1a38b7d2e8c723966363d018.png', 'local', 'image/png', '2974818', '68e6c9ad1a38b7d2e8c723966363d018', 0, 0, 4);

-- ----------------------------
-- Table structure for st_system_login_log
-- ----------------------------
DROP TABLE IF EXISTS `st_system_login_log`;
CREATE TABLE `st_system_login_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `agent` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `browser` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `os` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `continent` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `district` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `isp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `area_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country_english` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `country_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `longitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `latitude` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `login_type` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_login_log_creator_id_d19a1c52`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_login_log
-- ----------------------------
INSERT INTO `st_system_login_log` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:25:18.872550', '2025-06-20 13:25:18.872550', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (2, NULL, NULL, '1', '2025-06-20 14:12:39.084384', '2025-06-20 14:12:39.084384', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (3, NULL, NULL, '1', '2025-06-23 10:32:29.035221', '2025-06-23 10:32:29.035221', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (4, NULL, NULL, '1', '2025-06-24 08:10:57.777188', '2025-06-24 08:10:57.777188', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (5, NULL, NULL, '1', '2025-06-24 08:11:23.387047', '2025-06-24 08:11:23.387124', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (6, NULL, NULL, '1', '2025-06-25 08:12:17.664386', '2025-06-25 08:12:17.664386', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (7, NULL, NULL, '1', '2025-06-25 08:12:43.760859', '2025-06-25 08:12:43.760859', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (8, NULL, NULL, '1', '2025-06-26 08:11:12.794008', '2025-06-26 08:11:12.794008', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (9, NULL, NULL, '1', '2025-06-26 08:11:33.273905', '2025-06-26 08:11:33.273905', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 137.0.0', 'Chrome 137.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (10, NULL, NULL, NULL, '2025-07-02 09:40:46.635675', '2025-07-02 09:40:46.635675', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (11, NULL, NULL, '1', '2025-07-02 09:58:17.719640', '2025-07-02 09:58:17.719640', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (12, NULL, NULL, '1', '2025-07-02 09:58:41.658765', '2025-07-02 09:58:41.658765', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (13, NULL, NULL, '1', '2025-07-04 08:00:09.012629', '2025-07-04 08:00:09.012629', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (14, NULL, NULL, '1', '2025-07-05 08:11:21.782444', '2025-07-05 08:11:21.782444', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (15, NULL, NULL, NULL, '2025-07-05 10:25:59.057254', '2025-07-05 10:25:59.057254', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (16, NULL, NULL, '1', '2025-07-09 08:40:11.227366', '2025-07-09 08:40:11.227366', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (17, NULL, NULL, '1', '2025-07-09 08:40:43.834369', '2025-07-09 08:40:43.834369', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (18, NULL, NULL, NULL, '2025-07-09 16:20:36.918102', '2025-07-09 16:20:36.918102', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (19, NULL, NULL, '1', '2025-07-10 10:59:36.910341', '2025-07-10 10:59:36.910341', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (20, NULL, NULL, NULL, '2025-07-10 17:28:44.211565', '2025-07-10 17:28:44.211565', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (21, NULL, NULL, '1', '2025-07-13 08:08:50.646131', '2025-07-13 08:08:50.646131', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (22, NULL, NULL, NULL, '2025-07-13 14:56:24.751932', '2025-07-13 14:56:24.751932', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (23, NULL, NULL, '1', '2025-07-14 10:43:39.270326', '2025-07-14 10:43:39.270326', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (24, NULL, NULL, '1', '2025-07-16 08:06:57.878156', '2025-07-16 08:06:57.878156', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (25, NULL, NULL, NULL, '2025-07-16 16:29:06.255821', '2025-07-16 16:29:06.255821', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (26, NULL, NULL, '1', '2025-07-18 08:10:03.739616', '2025-07-18 08:10:03.739616', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (27, NULL, NULL, NULL, '2025-07-18 15:22:47.211611', '2025-07-18 15:22:47.211611', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (28, NULL, NULL, '1', '2025-07-19 08:23:19.037215', '2025-07-19 08:23:19.037215', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (29, NULL, NULL, '1', '2025-07-19 08:25:02.096334', '2025-07-19 08:25:02.096334', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (30, NULL, NULL, '1', '2025-07-21 13:08:08.890966', '2025-07-21 13:08:08.891966', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (31, NULL, NULL, NULL, '2025-07-22 15:01:22.458262', '2025-07-22 15:01:22.458262', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (32, NULL, NULL, '1', '2025-07-23 10:39:56.072701', '2025-07-23 10:39:56.072701', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (33, NULL, NULL, '1', '2025-07-23 10:45:37.710532', '2025-07-23 10:45:37.710532', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (34, NULL, NULL, NULL, '2025-07-23 15:39:33.745154', '2025-07-23 15:39:33.745154', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (35, NULL, NULL, '1', '2025-07-25 16:29:50.955133', '2025-07-25 16:29:50.955133', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);
INSERT INTO `st_system_login_log` VALUES (36, NULL, NULL, NULL, '2025-08-01 14:13:47.753078', '2025-08-01 14:13:47.753078', '小丁', '127.0.0.1', 'Other / Other / Other', 'Other', 'Other', '', '保留', '', '', '', '', '', '', '', '', '', 1, 4);
INSERT INTO `st_system_login_log` VALUES (37, NULL, NULL, '1', '2025-08-01 14:25:26.748726', '2025-08-01 14:25:26.748726', 'superadmin', '127.0.0.1', 'PC / Windows 10 / Chrome 138.0.0', 'Chrome 138.0.0', 'Windows 10', '', '保留', '', '', '', '', '', '', '', '', '', 1, 1);

-- ----------------------------
-- Table structure for st_system_menu
-- ----------------------------
DROP TABLE IF EXISTS `st_system_menu`;
CREATE TABLE `st_system_menu`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `icon` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NULL DEFAULT NULL,
  `is_link` tinyint(1) NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `is_catalog` tinyint(1) NOT NULL,
  `web_path` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `component_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `cache` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `is_iframe` tinyint(1) NOT NULL,
  `is_affix` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_menu_creator_id_4445edff`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_menu_parent_id_9109440a`(`parent_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_menu
-- ----------------------------
INSERT INTO `st_system_menu` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:36.556977', '2025-06-20 13:15:36.556977', 'iconfont icon-xitongshezhi', '系统管理', 1, 0, NULL, 1, '/system', '', '', 1, 0, 1, 0, 0, NULL, NULL);
INSERT INTO `st_system_menu` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:15:36.569981', '2025-06-20 13:15:36.570970', 'iconfont icon-caidan', '菜单管理', 1, 0, NULL, 0, '/menu', 'system/menu/index', 'menu', 1, 0, 1, 0, 0, NULL, 1);
INSERT INTO `st_system_menu` VALUES (3, NULL, NULL, NULL, '2025-06-20 13:15:36.792842', '2025-06-20 13:15:36.792842', 'ele-OfficeBuilding', '部门管理', 3, 0, NULL, 0, '/dept', 'system/dept/index', 'dept', 1, 0, 1, 0, 0, NULL, 1);
INSERT INTO `st_system_menu` VALUES (4, NULL, NULL, NULL, '2025-06-20 13:15:36.901780', '2025-06-20 13:15:36.901780', 'ele-ColdDrink', '角色管理', 4, 0, NULL, 0, '/role', 'system/role/index', 'role', 1, 0, 1, 0, 0, NULL, 1);
INSERT INTO `st_system_menu` VALUES (5, NULL, NULL, NULL, '2025-06-20 13:15:37.043199', '2025-06-20 13:15:37.043199', 'iconfont icon-icon-', '用户管理', 6, 0, NULL, 0, '/user', 'system/user/index', 'user', 1, 0, 1, 0, 0, NULL, 1);
INSERT INTO `st_system_menu` VALUES (6, NULL, NULL, NULL, '2025-06-20 13:15:37.234401', '2025-06-20 13:15:37.234401', 'iconfont icon-xiaoxizhongxin', '消息中心', 7, 0, NULL, 0, '/messageCenter', 'system/messageCenter/index', 'messageCenter', 1, 0, 1, 0, 0, NULL, 1);
INSERT INTO `st_system_menu` VALUES (7, NULL, NULL, NULL, '2025-06-20 13:15:37.355875', '2025-06-20 13:15:37.355875', 'ele-SetUp', '接口白名单', 8, 0, NULL, 0, '/apiWhiteList', 'system/whiteList/index', 'whiteList', 1, 0, 1, 0, 0, NULL, 1);
INSERT INTO `st_system_menu` VALUES (8, NULL, NULL, NULL, '2025-06-20 13:15:37.476063', '2025-06-20 13:15:37.476063', 'ele-Download', '下载中心', 9, 0, NULL, 0, '/downloadCenter', 'system/downloadCenter/index', 'downloadCenter', 1, 0, 1, 0, 0, NULL, 1);
INSERT INTO `st_system_menu` VALUES (9, NULL, NULL, NULL, '2025-06-20 13:15:37.522036', '2025-06-20 13:15:37.522036', 'iconfont icon-configure', '常规配置', 2, 0, NULL, 1, '/generalConfig', '', '', 1, 0, 1, 0, 0, NULL, NULL);
INSERT INTO `st_system_menu` VALUES (10, NULL, NULL, NULL, '2025-06-20 13:15:37.529373', '2025-06-20 13:15:37.529373', 'iconfont icon-system', '系统配置', 0, 0, NULL, 0, '/config', 'system/config/index', 'config', 1, 0, 1, 0, 0, NULL, 9);
INSERT INTO `st_system_menu` VALUES (11, NULL, NULL, NULL, '2025-06-20 13:15:37.578244', '2025-06-20 13:15:37.578244', 'iconfont icon-dict', '字典管理', 1, 0, NULL, 0, '/dictionary', 'system/dictionary/index', 'dictionary', 1, 0, 1, 0, 0, NULL, 9);
INSERT INTO `st_system_menu` VALUES (12, NULL, NULL, NULL, '2025-06-20 13:15:37.731175', '2025-06-20 13:15:37.732190', 'iconfont icon-Area', '地区管理', 2, 0, NULL, 0, '/areas', 'system/areas/index', 'areas', 1, 0, 1, 0, 0, NULL, 9);
INSERT INTO `st_system_menu` VALUES (13, NULL, NULL, NULL, '2025-06-20 13:15:37.879101', '2025-06-20 13:15:37.879101', 'iconfont icon-file', '附件管理', 3, 0, NULL, 0, '/file', 'system/fileList/index', 'file', 1, 0, 1, 0, 0, NULL, 9);
INSERT INTO `st_system_menu` VALUES (14, NULL, NULL, NULL, '2025-06-20 13:15:38.016006', '2025-06-20 13:15:38.016006', 'iconfont icon-rizhi', '日志管理', 3, 0, NULL, 1, '/log', '', '', 1, 0, 1, 0, 0, NULL, NULL);
INSERT INTO `st_system_menu` VALUES (15, NULL, NULL, NULL, '2025-06-20 13:15:38.024003', '2025-06-20 13:15:38.024003', 'iconfont icon-guanlidenglurizhi', '登录日志', 1, 0, NULL, 0, '/loginLog', 'system/log/loginLog/index', 'loginLog', 1, 0, 1, 0, 0, NULL, 14);
INSERT INTO `st_system_menu` VALUES (16, NULL, NULL, NULL, '2025-06-20 13:15:38.215655', '2025-06-20 13:15:38.215655', 'iconfont icon-caozuorizhi', '操作日志', 2, 0, NULL, 0, '/operationLog', 'system/log/operationLog/index', 'operationLog', 1, 0, 1, 0, 0, NULL, 14);
INSERT INTO `st_system_menu` VALUES (17, NULL, NULL, '1', '2025-06-20 13:15:39.387395', '2025-06-20 13:15:39.387395', 'iconfont icon-caijian', '定时任务', 6, 0, NULL, 1, '/celeryManage', '', '', 1, 1, 1, 0, 0, 1, NULL);
INSERT INTO `st_system_menu` VALUES (18, NULL, NULL, '1', '2025-06-20 13:15:39.394984', '2025-06-20 13:15:39.394984', 'iconfont icon-caijian', '任务管理', 1, 0, NULL, 0, '/taskManage', 'plugins/dvadmin3-celery-web/src/taskManage/index', 'taskManage', 1, 1, 1, 0, 0, 1, 17);
INSERT INTO `st_system_menu` VALUES (19, NULL, NULL, '1', '2025-06-20 13:15:39.402533', '2025-06-20 13:15:39.402533', 'iconfont icon--chaifenhang', '任务日志', 2, 0, NULL, 0, '/taskLog', 'plugins/dvadmin3-celery-web/src/taskManage/component/taskLog/index', 'taskLog', 1, 1, 1, 0, 0, 1, 17);

-- ----------------------------
-- Table structure for st_system_menu_button
-- ----------------------------
DROP TABLE IF EXISTS `st_system_menu_button`;
CREATE TABLE `st_system_menu_button`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` int NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `value`(`value` ASC) USING BTREE,
  INDEX `st_system_menu_button_creator_id_6eff19b8`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_menu_button_menu_id_affad3c6`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_menu_button
-- ----------------------------
INSERT INTO `st_system_menu_button` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:36.582962', '2025-06-20 13:15:36.582962', '查询', 'menu:Search', '/api/system/menu/', 0, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:15:36.594957', '2025-06-20 13:15:36.595956', '详情', 'menu:Retrieve', '/api/system/menu/{id}/', 0, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (3, NULL, NULL, NULL, '2025-06-20 13:15:36.613945', '2025-06-20 13:15:36.613945', '查询所有', 'menu:SearchAll', '/api/system/menu/get_all_menu/', 0, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (4, NULL, NULL, NULL, '2025-06-20 13:15:36.626938', '2025-06-20 13:15:36.626938', '路由', 'menu:router', '/api/system/menu/web_router/', 0, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (5, NULL, NULL, NULL, '2025-06-20 13:15:36.638931', '2025-06-20 13:15:36.638931', '查询按钮权限', 'btn:Search', '/api/system/menu_button/', 0, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (6, NULL, NULL, NULL, '2025-06-20 13:15:36.650923', '2025-06-20 13:15:36.650923', '查询列权限', 'column:Search', '/api/system/column/', 0, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (7, NULL, NULL, NULL, '2025-06-20 13:15:36.662916', '2025-06-20 13:15:36.662916', '新增', 'menu:Create', '/api/system/menu/', 1, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (8, NULL, NULL, NULL, '2025-06-20 13:15:36.673910', '2025-06-20 13:15:36.673910', '上移', 'menu:MoveUp', '/api/system/menu/mode_up/', 1, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (9, NULL, NULL, NULL, '2025-06-20 13:15:36.684904', '2025-06-20 13:15:36.684904', '下移', 'menu:MoveDown', '/api/system/menu/mode_down/', 1, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (10, NULL, NULL, NULL, '2025-06-20 13:15:36.696897', '2025-06-20 13:15:36.696897', '新增按钮权限', 'btn:Create', '/api/system/menu_button/', 1, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (11, NULL, NULL, NULL, '2025-06-20 13:15:36.706892', '2025-06-20 13:15:36.706892', '新增列权限', 'column:Create', '/api/system/column/', 1, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (12, NULL, NULL, NULL, '2025-06-20 13:15:36.717884', '2025-06-20 13:15:36.717884', '自动匹配列权限', 'column:Match', '/api/system/column/auto_match_fields/', 1, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (13, NULL, NULL, NULL, '2025-06-20 13:15:36.727879', '2025-06-20 13:15:36.727879', '编辑', 'menu:Update', '/api/system/menu/{id}/', 2, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (14, NULL, NULL, NULL, '2025-06-20 13:15:36.737873', '2025-06-20 13:15:36.737873', '修改按钮权限', 'btn:Update', '/api/system/menu_button/{id}/', 2, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (15, NULL, NULL, NULL, '2025-06-20 13:15:36.748867', '2025-06-20 13:15:36.748867', '编辑列权限', 'column:Update', '/api/system/column/{id}/', 2, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (16, NULL, NULL, NULL, '2025-06-20 13:15:36.758861', '2025-06-20 13:15:36.758861', '删除', 'menu:Delete', '/api/system/menu/{id}/', 3, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (17, NULL, NULL, NULL, '2025-06-20 13:15:36.769855', '2025-06-20 13:15:36.769855', '删除按钮权限', 'btn:Delete', '/api/system/menu_button/{id}/', 3, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (18, NULL, NULL, NULL, '2025-06-20 13:15:36.780849', '2025-06-20 13:15:36.780849', '删除列权限', 'column:Delete', '/api/system/column/{id}/', 3, NULL, 2);
INSERT INTO `st_system_menu_button` VALUES (19, NULL, NULL, NULL, '2025-06-20 13:15:36.802838', '2025-06-20 13:15:36.802838', '查询', 'dept:Search', '/api/system/dept/', 0, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (20, NULL, NULL, NULL, '2025-06-20 13:15:36.813830', '2025-06-20 13:15:36.813830', '详情', 'dept:Retrieve', '/api/system/dept/{id}/', 0, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (21, NULL, NULL, NULL, '2025-06-20 13:15:36.823824', '2025-06-20 13:15:36.823824', '获取所有部门', 'dept:SearchAll', '/api/system/dept/all_dept/', 0, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (22, NULL, NULL, NULL, '2025-06-20 13:15:36.837817', '2025-06-20 13:15:36.837817', '部门顶部信息', 'dept:HeaderInfo', '/api/system/dept/dept_info/', 0, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (23, NULL, NULL, NULL, '2025-06-20 13:15:36.847810', '2025-06-20 13:15:36.847810', '新增', 'dept:Create', '/api/system/dept/', 1, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (24, NULL, NULL, NULL, '2025-06-20 13:15:36.857806', '2025-06-20 13:15:36.857806', '上移', 'dept:MoveUp', '/api/system/dept/mode_up/', 1, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (25, NULL, NULL, NULL, '2025-06-20 13:15:36.868799', '2025-06-20 13:15:36.868799', '下移', 'dept:MoveDown', '/api/system/dept/mode_down/', 1, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (26, NULL, NULL, NULL, '2025-06-20 13:15:36.879792', '2025-06-20 13:15:36.879792', '编辑', 'dept:Update', '/api/system/dept/{id}/', 2, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (27, NULL, NULL, NULL, '2025-06-20 13:15:36.890789', '2025-06-20 13:15:36.890789', '删除', 'dept:Delete', '/api/system/dept/{id}/', 3, NULL, 3);
INSERT INTO `st_system_menu_button` VALUES (28, NULL, NULL, NULL, '2025-06-20 13:15:36.909775', '2025-06-20 13:15:36.909775', '查询', 'role:Search', '/api/system/role/', 0, NULL, 4);
INSERT INTO `st_system_menu_button` VALUES (29, NULL, NULL, NULL, '2025-06-20 13:15:36.917772', '2025-06-20 13:15:36.917772', '详情', 'role:Retrieve', '/api/system/role/{id}/', 0, NULL, 4);
INSERT INTO `st_system_menu_button` VALUES (30, NULL, NULL, NULL, '2025-06-20 13:15:36.927245', '2025-06-20 13:15:36.927245', '权限配置', 'role:Permission', '/api/system/role/{id}/', 0, NULL, 4);
INSERT INTO `st_system_menu_button` VALUES (31, NULL, NULL, NULL, '2025-06-20 13:15:36.933763', '2025-06-20 13:15:36.933763', '新增', 'role:Create', '/api/system/role/', 1, NULL, 4);
INSERT INTO `st_system_menu_button` VALUES (32, NULL, NULL, NULL, '2025-06-20 13:15:36.942756', '2025-06-20 13:15:36.942756', '编辑', 'role:Update', '/api/system/role/{id}/', 2, NULL, 4);
INSERT INTO `st_system_menu_button` VALUES (33, NULL, NULL, NULL, '2025-06-20 13:15:36.949753', '2025-06-20 13:15:36.949753', '保存', 'role:Save', '/api/system/role/{id}/', 2, NULL, 4);
INSERT INTO `st_system_menu_button` VALUES (34, NULL, NULL, NULL, '2025-06-20 13:15:36.958247', '2025-06-20 13:15:36.958247', '删除', 'role:Delete', '/api/system/role/{id}/', 3, NULL, 4);
INSERT INTO `st_system_menu_button` VALUES (35, NULL, NULL, NULL, '2025-06-20 13:15:37.050195', '2025-06-20 13:15:37.050195', '查询', 'user:Search', '/api/system/user/', 0, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (36, NULL, NULL, NULL, '2025-06-20 13:15:37.058192', '2025-06-20 13:15:37.058192', '详情', 'user:Retrieve', '/api/system/user/{id}/', 0, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (37, NULL, NULL, NULL, '2025-06-20 13:15:37.066185', '2025-06-20 13:15:37.067184', '新增', 'user:Create', '/api/system/user/', 1, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (38, NULL, NULL, NULL, '2025-06-20 13:15:37.076179', '2025-06-20 13:15:37.076179', '导出', 'user:Export', '/api/system/user/export/', 1, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (39, NULL, NULL, NULL, '2025-06-20 13:15:37.086173', '2025-06-20 13:15:37.086173', '导入', 'user:Import', '/api/system/user/import/', 1, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (40, NULL, NULL, NULL, '2025-06-20 13:15:37.093353', '2025-06-20 13:15:37.093353', '编辑', 'user:Update', '/api/system/user/{id}/', 2, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (41, NULL, NULL, NULL, '2025-06-20 13:15:37.101325', '2025-06-20 13:15:37.101325', '重设密码', 'user:ResetPassword', '/api/system/user/{id}/reset_password/', 2, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (42, NULL, NULL, NULL, '2025-06-20 13:15:37.108320', '2025-06-20 13:15:37.108320', '重置密码', 'user:DefaultPassword', '/api/system/user/{id}/reset_to_default_password/', 2, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (43, NULL, NULL, NULL, '2025-06-20 13:15:37.116357', '2025-06-20 13:15:37.116357', '删除', 'user:Delete', '/api/system/user/{id}/', 3, NULL, 5);
INSERT INTO `st_system_menu_button` VALUES (44, NULL, NULL, NULL, '2025-06-20 13:15:37.243382', '2025-06-20 13:15:37.243382', '查询', 'messageCenter:Search', '/api/system/message_center/', 0, NULL, 6);
INSERT INTO `st_system_menu_button` VALUES (45, NULL, NULL, NULL, '2025-06-20 13:15:37.250325', '2025-06-20 13:15:37.250325', '详情', 'messageCenter:Retrieve', '/api/system/message_center/{id}/', 0, NULL, 6);
INSERT INTO `st_system_menu_button` VALUES (46, NULL, NULL, NULL, '2025-06-20 13:15:37.260321', '2025-06-20 13:15:37.260321', '新增', 'messageCenter:Create', '/api/system/message_center/', 1, NULL, 6);
INSERT INTO `st_system_menu_button` VALUES (47, NULL, NULL, NULL, '2025-06-20 13:15:37.271316', '2025-06-20 13:15:37.271316', '编辑', 'messageCenter:Update', '/api/system/message_center/{id}/', 2, NULL, 6);
INSERT INTO `st_system_menu_button` VALUES (48, NULL, NULL, NULL, '2025-06-20 13:15:37.280310', '2025-06-20 13:15:37.280310', '删除', 'messageCenter:Delete', '/api/system/menu/{id}/', 3, NULL, 6);
INSERT INTO `st_system_menu_button` VALUES (49, NULL, NULL, NULL, '2025-06-20 13:15:37.364227', '2025-06-20 13:15:37.364227', '查询', 'api_white_list:Search', '/api/system/api_white_list/', 0, NULL, 7);
INSERT INTO `st_system_menu_button` VALUES (50, NULL, NULL, NULL, '2025-06-20 13:15:37.375863', '2025-06-20 13:15:37.375863', '详情', 'api_white_list:Retrieve', '/api/system/api_white_list/{id}/', 0, NULL, 7);
INSERT INTO `st_system_menu_button` VALUES (51, NULL, NULL, NULL, '2025-06-20 13:15:37.385857', '2025-06-20 13:15:37.385857', '新增', 'api_white_list:Create', '/api/system/api_white_list/', 1, NULL, 7);
INSERT INTO `st_system_menu_button` VALUES (52, NULL, NULL, NULL, '2025-06-20 13:15:37.393851', '2025-06-20 13:15:37.393851', '编辑', 'api_white_list:Update', '/api/system/api_white_list/{id}/', 2, NULL, 7);
INSERT INTO `st_system_menu_button` VALUES (53, NULL, NULL, NULL, '2025-06-20 13:15:37.400849', '2025-06-20 13:15:37.400849', '删除', 'api_white_list:Delete', '/api/system/api_white_list/{id}/', 3, NULL, 7);
INSERT INTO `st_system_menu_button` VALUES (54, NULL, NULL, NULL, '2025-06-20 13:15:37.483059', '2025-06-20 13:15:37.483059', '查询', 'Search', '/api/system/downloadCenter/', 0, NULL, 8);
INSERT INTO `st_system_menu_button` VALUES (55, NULL, NULL, NULL, '2025-06-20 13:15:37.491559', '2025-06-20 13:15:37.491559', '详情', 'Retrieve', '/api/system/downloadCenter/{id}/', 0, NULL, 8);
INSERT INTO `st_system_menu_button` VALUES (56, NULL, NULL, NULL, '2025-06-20 13:15:37.498554', '2025-06-20 13:15:37.498554', '新增', 'Create', '/api/system/downloadCenter/', 1, NULL, 8);
INSERT INTO `st_system_menu_button` VALUES (57, NULL, NULL, NULL, '2025-06-20 13:15:37.506552', '2025-06-20 13:15:37.506552', '编辑', 'Update', '/api/system/downloadCenter/{id}/', 2, NULL, 8);
INSERT INTO `st_system_menu_button` VALUES (58, NULL, NULL, NULL, '2025-06-20 13:15:37.514548', '2025-06-20 13:15:37.514548', '删除', 'Delete', '/api/system/downloadCenter/{id}/', 3, NULL, 8);
INSERT INTO `st_system_menu_button` VALUES (59, NULL, NULL, NULL, '2025-06-20 13:15:37.537323', '2025-06-20 13:15:37.537323', '查询', 'system_config:Search', '/api/system/system_config/', 0, NULL, 10);
INSERT INTO `st_system_menu_button` VALUES (60, NULL, NULL, NULL, '2025-06-20 13:15:37.544148', '2025-06-20 13:15:37.544666', '详情', 'system_config:Retrieve', '/api/system/system_config/{id}/', 0, NULL, 10);
INSERT INTO `st_system_menu_button` VALUES (61, NULL, NULL, NULL, '2025-06-20 13:15:37.552261', '2025-06-20 13:15:37.552261', '新增', 'system_config:Create', '/api/system/system_config/', 1, NULL, 10);
INSERT INTO `st_system_menu_button` VALUES (62, NULL, NULL, NULL, '2025-06-20 13:15:37.561253', '2025-06-20 13:15:37.561253', '编辑', 'system_config:Update', '/api/system/system_config/{id}/', 2, NULL, 10);
INSERT INTO `st_system_menu_button` VALUES (63, NULL, NULL, NULL, '2025-06-20 13:15:37.570250', '2025-06-20 13:15:37.570250', '删除', 'system_config:Delete', '/api/system/system_config/{id}/', 3, NULL, 10);
INSERT INTO `st_system_menu_button` VALUES (64, NULL, NULL, NULL, '2025-06-20 13:15:37.589236', '2025-06-20 13:15:37.589236', '查询', 'dictionary:Search', '/api/system/dictionary/', 0, NULL, 11);
INSERT INTO `st_system_menu_button` VALUES (65, NULL, NULL, NULL, '2025-06-20 13:15:37.596233', '2025-06-20 13:15:37.596233', '详情', 'dictionary:Retrieve', '/api/system/dictionary/{id}/', 0, NULL, 11);
INSERT INTO `st_system_menu_button` VALUES (66, NULL, NULL, NULL, '2025-06-20 13:15:37.605230', '2025-06-20 13:15:37.605230', '新增', 'dictionary:Create', '/api/system/dictionary/', 1, NULL, 11);
INSERT INTO `st_system_menu_button` VALUES (67, NULL, NULL, NULL, '2025-06-20 13:15:37.612224', '2025-06-20 13:15:37.612224', '编辑', 'dictionary:Update', '/api/system/dictionary/{id}/', 2, NULL, 11);
INSERT INTO `st_system_menu_button` VALUES (68, NULL, NULL, NULL, '2025-06-20 13:15:37.619219', '2025-06-20 13:15:37.619219', '删除', 'dictionary:Delete', '/api/system/dictionary/{id}/', 3, NULL, 11);
INSERT INTO `st_system_menu_button` VALUES (69, NULL, NULL, NULL, '2025-06-20 13:15:37.740006', '2025-06-20 13:15:37.740006', '查询', 'area:Search', '/api/system/area/', 0, NULL, 12);
INSERT INTO `st_system_menu_button` VALUES (70, NULL, NULL, NULL, '2025-06-20 13:15:37.746986', '2025-06-20 13:15:37.746986', '详情', 'area:Retrieve', '/api/system/area/{id}/', 0, NULL, 12);
INSERT INTO `st_system_menu_button` VALUES (71, NULL, NULL, NULL, '2025-06-20 13:15:37.755981', '2025-06-20 13:15:37.755981', '新增', 'area:Create', '/api/system/area/', 1, NULL, 12);
INSERT INTO `st_system_menu_button` VALUES (72, NULL, NULL, NULL, '2025-06-20 13:15:37.762998', '2025-06-20 13:15:37.762998', '编辑', 'area:Update', '/api/system/area/{id}/', 2, NULL, 12);
INSERT INTO `st_system_menu_button` VALUES (73, NULL, NULL, NULL, '2025-06-20 13:15:37.771546', '2025-06-20 13:15:37.771546', '删除', 'area:Delete', '/api/system/area/{id}/', 3, NULL, 12);
INSERT INTO `st_system_menu_button` VALUES (74, NULL, NULL, NULL, '2025-06-20 13:15:37.887083', '2025-06-20 13:15:37.887083', '详情', 'file:Retrieve', '/api/system/file/{id}/', 0, NULL, 13);
INSERT INTO `st_system_menu_button` VALUES (75, NULL, NULL, NULL, '2025-06-20 13:15:37.895075', '2025-06-20 13:15:37.895075', '查询', 'file:Search', '/api/system/file/', 0, NULL, 13);
INSERT INTO `st_system_menu_button` VALUES (76, NULL, NULL, NULL, '2025-06-20 13:15:37.903071', '2025-06-20 13:15:37.903071', '编辑', 'file:Update', '/api/system/file/{id}/', 1, NULL, 13);
INSERT INTO `st_system_menu_button` VALUES (77, NULL, NULL, NULL, '2025-06-20 13:15:37.912067', '2025-06-20 13:15:37.912067', '删除', 'file:Delete', '/api/system/file/{id}/', 3, NULL, 13);
INSERT INTO `st_system_menu_button` VALUES (78, NULL, NULL, NULL, '2025-06-20 13:15:38.030999', '2025-06-20 13:15:38.030999', '查询', 'login_log:Search', '/api/system/login_log/', 0, NULL, 15);
INSERT INTO `st_system_menu_button` VALUES (79, NULL, NULL, NULL, '2025-06-20 13:15:38.040992', '2025-06-20 13:15:38.040992', '详情', 'login_log:Retrieve', '/api/system/login_log/{id}/', 0, NULL, 15);
INSERT INTO `st_system_menu_button` VALUES (80, NULL, NULL, NULL, '2025-06-20 13:15:38.223652', '2025-06-20 13:15:38.223652', '详情', 'operation_log:Retrieve', '/api/system/operation_log/{id}/', 0, NULL, 16);
INSERT INTO `st_system_menu_button` VALUES (81, NULL, NULL, NULL, '2025-06-20 13:15:38.231596', '2025-06-20 13:15:38.231596', '查询', 'operation_log:Search', '/api/system/operation_log/', 0, NULL, 16);

-- ----------------------------
-- Table structure for st_system_menu_field
-- ----------------------------
DROP TABLE IF EXISTS `st_system_menu_field`;
CREATE TABLE `st_system_menu_field`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `model` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `menu_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_menu_field_creator_id_6c2bad57`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_menu_field_menu_id_5103b865`(`menu_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_menu_field
-- ----------------------------
INSERT INTO `st_system_menu_field` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:36.966243', '2025-06-20 13:15:36.966243', 'Role', 'create_datetime', '创建时间', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:15:36.973239', '2025-06-20 13:15:36.973239', 'Role', 'creator', '创建人', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (3, NULL, NULL, NULL, '2025-06-20 13:15:36.980235', '2025-06-20 13:15:36.980235', 'Role', 'dept_belong_id', '数据归属部门', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (4, NULL, NULL, NULL, '2025-06-20 13:15:36.988231', '2025-06-20 13:15:36.988231', 'Role', 'description', '描述', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (5, NULL, NULL, NULL, '2025-06-20 13:15:36.995226', '2025-06-20 13:15:36.995226', 'Role', 'id', 'Id', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (6, NULL, NULL, NULL, '2025-06-20 13:15:37.002221', '2025-06-20 13:15:37.002221', 'Role', 'key', '权限字符', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (7, NULL, NULL, NULL, '2025-06-20 13:15:37.009217', '2025-06-20 13:15:37.009217', 'Role', 'modifier', '修改人', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (8, NULL, NULL, NULL, '2025-06-20 13:15:37.015214', '2025-06-20 13:15:37.015214', 'Role', 'name', '角色名称', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (9, NULL, NULL, NULL, '2025-06-20 13:15:37.023209', '2025-06-20 13:15:37.023209', 'Role', 'sort', '角色顺序', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (10, NULL, NULL, NULL, '2025-06-20 13:15:37.029206', '2025-06-20 13:15:37.029206', 'Role', 'status', '角色状态', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (11, NULL, NULL, NULL, '2025-06-20 13:15:37.036201', '2025-06-20 13:15:37.036201', 'Role', 'update_datetime', '修改时间', NULL, 4);
INSERT INTO `st_system_menu_field` VALUES (12, NULL, NULL, NULL, '2025-06-20 13:15:37.122960', '2025-06-20 13:15:37.122960', 'Users', 'avatar', '头像', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (13, NULL, NULL, NULL, '2025-06-20 13:15:37.128784', '2025-06-20 13:15:37.128784', 'Users', 'create_datetime', '创建时间', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (14, NULL, NULL, NULL, '2025-06-20 13:15:37.135239', '2025-06-20 13:15:37.135239', 'Users', 'creator', '创建人', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (15, NULL, NULL, NULL, '2025-06-20 13:15:37.141542', '2025-06-20 13:15:37.141542', 'Users', 'dept', '所属部门', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (16, NULL, NULL, NULL, '2025-06-20 13:15:37.148539', '2025-06-20 13:15:37.148539', 'Users', 'dept_belong_id', '数据归属部门', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (17, NULL, NULL, NULL, '2025-06-20 13:15:37.154782', '2025-06-20 13:15:37.154782', 'Users', 'description', '描述', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (18, NULL, NULL, NULL, '2025-06-20 13:15:37.162157', '2025-06-20 13:15:37.162157', 'Users', 'email', '邮箱', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (19, NULL, NULL, NULL, '2025-06-20 13:15:37.168153', '2025-06-20 13:15:37.168153', 'Users', 'gender', '性别', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (20, NULL, NULL, NULL, '2025-06-20 13:15:37.174481', '2025-06-20 13:15:37.174481', 'Users', 'id', 'Id', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (21, NULL, NULL, NULL, '2025-06-20 13:15:37.182841', '2025-06-20 13:15:37.182841', 'Users', 'mobile', '电话', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (22, NULL, NULL, NULL, '2025-06-20 13:15:37.192835', '2025-06-20 13:15:37.192835', 'Users', 'modifier', '修改人', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (23, NULL, NULL, NULL, '2025-06-20 13:15:37.201830', '2025-06-20 13:15:37.201830', 'Users', 'name', '姓名', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (24, NULL, NULL, NULL, '2025-06-20 13:15:37.211626', '2025-06-20 13:15:37.211626', 'Users', 'update_datetime', '修改时间', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (25, NULL, NULL, NULL, '2025-06-20 13:15:37.220090', '2025-06-20 13:15:37.221090', 'Users', 'username', '用户账号', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (26, NULL, NULL, NULL, '2025-06-20 13:15:37.227088', '2025-06-20 13:15:37.227088', 'Users', 'user_type', '用户类型', NULL, 5);
INSERT INTO `st_system_menu_field` VALUES (27, NULL, NULL, NULL, '2025-06-20 13:15:37.288308', '2025-06-20 13:15:37.288308', 'MessageCenter', 'content', '内容', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (28, NULL, NULL, NULL, '2025-06-20 13:15:37.294736', '2025-06-20 13:15:37.294736', 'MessageCenter', 'create_datetime', '创建时间', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (29, NULL, NULL, NULL, '2025-06-20 13:15:37.301644', '2025-06-20 13:15:37.301644', 'MessageCenter', 'creator', '创建人', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (30, NULL, NULL, NULL, '2025-06-20 13:15:37.307903', '2025-06-20 13:15:37.307903', 'MessageCenter', 'dept_belong_id', '数据归属部门', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (31, NULL, NULL, NULL, '2025-06-20 13:15:37.314898', '2025-06-20 13:15:37.314898', 'MessageCenter', 'description', '描述', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (32, NULL, NULL, NULL, '2025-06-20 13:15:37.321894', '2025-06-20 13:15:37.321894', 'MessageCenter', 'id', 'Id', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (33, NULL, NULL, NULL, '2025-06-20 13:15:37.327889', '2025-06-20 13:15:37.327889', 'MessageCenter', 'modifier', '修改人', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (34, NULL, NULL, NULL, '2025-06-20 13:15:37.335884', '2025-06-20 13:15:37.335884', 'MessageCenter', 'target_type', '目标类型', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (35, NULL, NULL, NULL, '2025-06-20 13:15:37.341881', '2025-06-20 13:15:37.341881', 'MessageCenter', 'title', '标题', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (36, NULL, NULL, NULL, '2025-06-20 13:15:37.348879', '2025-06-20 13:15:37.348879', 'MessageCenter', 'update_datetime', '修改时间', NULL, 6);
INSERT INTO `st_system_menu_field` VALUES (37, NULL, NULL, NULL, '2025-06-20 13:15:37.407089', '2025-06-20 13:15:37.407089', 'ApiWhiteList', 'create_datetime', '创建时间', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (38, NULL, NULL, NULL, '2025-06-20 13:15:37.413085', '2025-06-20 13:15:37.413085', 'ApiWhiteList', 'creator', '创建人', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (39, NULL, NULL, NULL, '2025-06-20 13:15:37.419081', '2025-06-20 13:15:37.419081', 'ApiWhiteList', 'dept_belong_id', '数据归属部门', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (40, NULL, NULL, NULL, '2025-06-20 13:15:37.427093', '2025-06-20 13:15:37.427093', 'ApiWhiteList', 'description', '描述', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (41, NULL, NULL, NULL, '2025-06-20 13:15:37.433088', '2025-06-20 13:15:37.433088', 'ApiWhiteList', 'enable_datasource', '激活数据权限', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (42, NULL, NULL, NULL, '2025-06-20 13:15:37.441084', '2025-06-20 13:15:37.441084', 'ApiWhiteList', 'id', 'Id', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (43, NULL, NULL, NULL, '2025-06-20 13:15:37.448083', '2025-06-20 13:15:37.448083', 'ApiWhiteList', 'method', '接口请求方法', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (44, NULL, NULL, NULL, '2025-06-20 13:15:37.454076', '2025-06-20 13:15:37.454076', 'ApiWhiteList', 'modifier', '修改人', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (45, NULL, NULL, NULL, '2025-06-20 13:15:37.462072', '2025-06-20 13:15:37.462072', 'ApiWhiteList', 'update_datetime', '修改时间', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (46, NULL, NULL, NULL, '2025-06-20 13:15:37.468069', '2025-06-20 13:15:37.468069', 'ApiWhiteList', 'url', 'url', NULL, 7);
INSERT INTO `st_system_menu_field` VALUES (47, NULL, NULL, NULL, '2025-06-20 13:15:37.626102', '2025-06-20 13:15:37.626102', 'Dictionary', 'color', '颜色', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (48, NULL, NULL, NULL, '2025-06-20 13:15:37.633102', '2025-06-20 13:15:37.633102', 'Dictionary', 'create_datetime', '创建时间', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (49, NULL, NULL, NULL, '2025-06-20 13:15:37.640094', '2025-06-20 13:15:37.640094', 'Dictionary', 'creator', '创建人', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (50, NULL, NULL, NULL, '2025-06-20 13:15:37.645663', '2025-06-20 13:15:37.645663', 'Dictionary', 'dept_belong_id', '数据归属部门', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (51, NULL, NULL, NULL, '2025-06-20 13:15:37.651660', '2025-06-20 13:15:37.651660', 'Dictionary', 'description', '描述', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (52, NULL, NULL, NULL, '2025-06-20 13:15:37.657965', '2025-06-20 13:15:37.657965', 'Dictionary', 'id', 'Id', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (53, NULL, NULL, NULL, '2025-06-20 13:15:37.663962', '2025-06-20 13:15:37.663962', 'Dictionary', 'is_value', '是否为value值', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (54, NULL, NULL, NULL, '2025-06-20 13:15:37.670438', '2025-06-20 13:15:37.670438', 'Dictionary', 'label', '字典名称', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (55, NULL, NULL, NULL, '2025-06-20 13:15:37.677612', '2025-06-20 13:15:37.677612', 'Dictionary', 'modifier', '修改人', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (56, NULL, NULL, NULL, '2025-06-20 13:15:37.684092', '2025-06-20 13:15:37.684092', 'Dictionary', 'parent', '父级', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (57, NULL, NULL, NULL, '2025-06-20 13:15:37.691070', '2025-06-20 13:15:37.691070', 'Dictionary', 'remark', '备注', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (58, NULL, NULL, NULL, '2025-06-20 13:15:37.698069', '2025-06-20 13:15:37.698069', 'Dictionary', 'sort', '显示排序', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (59, NULL, NULL, NULL, '2025-06-20 13:15:37.706061', '2025-06-20 13:15:37.706061', 'Dictionary', 'status', '状态', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (60, NULL, NULL, NULL, '2025-06-20 13:15:37.711998', '2025-06-20 13:15:37.711998', 'Dictionary', 'type', '数据值类型', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (61, NULL, NULL, NULL, '2025-06-20 13:15:37.717792', '2025-06-20 13:15:37.717792', 'Dictionary', 'update_datetime', '修改时间', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (62, NULL, NULL, NULL, '2025-06-20 13:15:37.724151', '2025-06-20 13:15:37.724151', 'Dictionary', 'value', '字典编号', NULL, 11);
INSERT INTO `st_system_menu_field` VALUES (63, NULL, NULL, NULL, '2025-06-20 13:15:37.778020', '2025-06-20 13:15:37.778020', 'Area', 'code', '地区编码', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (64, NULL, NULL, NULL, '2025-06-20 13:15:37.785584', '2025-06-20 13:15:37.785584', 'Area', 'create_datetime', '创建时间', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (65, NULL, NULL, NULL, '2025-06-20 13:15:37.792595', '2025-06-20 13:15:37.792595', 'Area', 'creator', '创建人', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (66, NULL, NULL, NULL, '2025-06-20 13:15:37.799575', '2025-06-20 13:15:37.799575', 'Area', 'dept_belong_id', '数据归属部门', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (67, NULL, NULL, NULL, '2025-06-20 13:15:37.806570', '2025-06-20 13:15:37.806570', 'Area', 'description', '描述', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (68, NULL, NULL, NULL, '2025-06-20 13:15:37.814581', '2025-06-20 13:15:37.814581', 'Area', 'enable', '是否启用', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (69, NULL, NULL, NULL, '2025-06-20 13:15:37.821563', '2025-06-20 13:15:37.821563', 'Area', 'id', 'Id', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (70, NULL, NULL, NULL, '2025-06-20 13:15:37.828559', '2025-06-20 13:15:37.828559', 'Area', 'initials', '首字母', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (71, NULL, NULL, NULL, '2025-06-20 13:15:37.835551', '2025-06-20 13:15:37.835551', 'Area', 'level', '地区层级(1省份 2城市 3区县 4乡级)', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (72, NULL, NULL, NULL, '2025-06-20 13:15:37.842146', '2025-06-20 13:15:37.842146', 'Area', 'modifier', '修改人', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (73, NULL, NULL, NULL, '2025-06-20 13:15:37.849601', '2025-06-20 13:15:37.849601', 'Area', 'name', '名称', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (74, NULL, NULL, NULL, '2025-06-20 13:15:37.856378', '2025-06-20 13:15:37.856378', 'Area', 'pcode', '父地区编码', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (75, NULL, NULL, NULL, '2025-06-20 13:15:37.864162', '2025-06-20 13:15:37.864162', 'Area', 'pinyin', '拼音', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (76, NULL, NULL, NULL, '2025-06-20 13:15:37.872106', '2025-06-20 13:15:37.872106', 'Area', 'update_datetime', '修改时间', NULL, 12);
INSERT INTO `st_system_menu_field` VALUES (77, NULL, NULL, NULL, '2025-06-20 13:15:37.919064', '2025-06-20 13:15:37.919064', 'FileList', 'create_datetime', '创建时间', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (78, NULL, NULL, NULL, '2025-06-20 13:15:37.927057', '2025-06-20 13:15:37.927057', 'FileList', 'creator', '创建人', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (79, NULL, NULL, NULL, '2025-06-20 13:15:37.933054', '2025-06-20 13:15:37.933054', 'FileList', 'dept_belong_id', '数据归属部门', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (80, NULL, NULL, NULL, '2025-06-20 13:15:37.941050', '2025-06-20 13:15:37.941050', 'FileList', 'description', '描述', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (81, NULL, NULL, NULL, '2025-06-20 13:15:37.948049', '2025-06-20 13:15:37.948049', 'FileList', 'engine', '引擎', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (82, NULL, NULL, NULL, '2025-06-20 13:15:37.955041', '2025-06-20 13:15:37.955041', 'FileList', 'file_url', '文件地址', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (83, NULL, NULL, NULL, '2025-06-20 13:15:37.962041', '2025-06-20 13:15:37.962041', 'FileList', 'id', 'Id', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (84, NULL, NULL, NULL, '2025-06-20 13:15:37.968035', '2025-06-20 13:15:37.968035', 'FileList', 'md5sum', '文件md5', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (85, NULL, NULL, NULL, '2025-06-20 13:15:37.976030', '2025-06-20 13:15:37.976030', 'FileList', 'mime_type', 'Mime类型', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (86, NULL, NULL, NULL, '2025-06-20 13:15:37.984028', '2025-06-20 13:15:37.984028', 'FileList', 'modifier', '修改人', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (87, NULL, NULL, NULL, '2025-06-20 13:15:37.991020', '2025-06-20 13:15:37.991020', 'FileList', 'name', '名称', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (88, NULL, NULL, NULL, '2025-06-20 13:15:37.997017', '2025-06-20 13:15:37.997017', 'FileList', 'size', '文件大小', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (89, NULL, NULL, NULL, '2025-06-20 13:15:38.004016', '2025-06-20 13:15:38.004016', 'FileList', 'update_datetime', '修改时间', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (90, NULL, NULL, NULL, '2025-06-20 13:15:38.011009', '2025-06-20 13:15:38.011009', 'FileList', 'url', 'url', NULL, 13);
INSERT INTO `st_system_menu_field` VALUES (91, NULL, NULL, NULL, '2025-06-20 13:15:38.046991', '2025-06-20 13:15:38.046991', 'LoginLog', 'agent', 'agent信息', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (92, NULL, NULL, NULL, '2025-06-20 13:15:38.053984', '2025-06-20 13:15:38.053984', 'LoginLog', 'area_code', '区域代码', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (93, NULL, NULL, NULL, '2025-06-20 13:15:38.059981', '2025-06-20 13:15:38.059981', 'LoginLog', 'browser', '浏览器名', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (94, NULL, NULL, NULL, '2025-06-20 13:15:38.066981', '2025-06-20 13:15:38.066981', 'LoginLog', 'city', '城市', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (95, NULL, NULL, NULL, '2025-06-20 13:15:38.073976', '2025-06-20 13:15:38.073976', 'LoginLog', 'continent', '州', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (96, NULL, NULL, NULL, '2025-06-20 13:15:38.079973', '2025-06-20 13:15:38.079973', 'LoginLog', 'country', '国家', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (97, NULL, NULL, NULL, '2025-06-20 13:15:38.087966', '2025-06-20 13:15:38.087966', 'LoginLog', 'country_code', '简称', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (98, NULL, NULL, NULL, '2025-06-20 13:15:38.096959', '2025-06-20 13:15:38.096959', 'LoginLog', 'country_english', '英文全称', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (99, NULL, NULL, NULL, '2025-06-20 13:15:38.104956', '2025-06-20 13:15:38.105959', 'LoginLog', 'create_datetime', '创建时间', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (100, NULL, NULL, NULL, '2025-06-20 13:15:38.112951', '2025-06-20 13:15:38.112951', 'LoginLog', 'creator', '创建人', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (101, NULL, NULL, NULL, '2025-06-20 13:15:38.119948', '2025-06-20 13:15:38.120948', 'LoginLog', 'dept_belong_id', '数据归属部门', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (102, NULL, NULL, NULL, '2025-06-20 13:15:38.125942', '2025-06-20 13:15:38.125942', 'LoginLog', 'description', '描述', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (103, NULL, NULL, NULL, '2025-06-20 13:15:38.133422', '2025-06-20 13:15:38.133422', 'LoginLog', 'district', '县区', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (104, NULL, NULL, NULL, '2025-06-20 13:15:38.140936', '2025-06-20 13:15:38.140936', 'LoginLog', 'id', 'Id', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (105, NULL, NULL, NULL, '2025-06-20 13:15:38.147933', '2025-06-20 13:15:38.147933', 'LoginLog', 'ip', '登录ip', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (106, NULL, NULL, NULL, '2025-06-20 13:15:38.154844', '2025-06-20 13:15:38.154844', 'LoginLog', 'isp', '运营商', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (107, NULL, NULL, NULL, '2025-06-20 13:15:38.160716', '2025-06-20 13:15:38.160716', 'LoginLog', 'latitude', '纬度', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (108, NULL, NULL, NULL, '2025-06-20 13:15:38.167615', '2025-06-20 13:15:38.167615', 'LoginLog', 'login_type', '登录类型', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (109, NULL, NULL, NULL, '2025-06-20 13:15:38.174610', '2025-06-20 13:15:38.174610', 'LoginLog', 'longitude', '经度', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (110, NULL, NULL, NULL, '2025-06-20 13:15:38.180621', '2025-06-20 13:15:38.180621', 'LoginLog', 'modifier', '修改人', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (111, NULL, NULL, NULL, '2025-06-20 13:15:38.186983', '2025-06-20 13:15:38.186983', 'LoginLog', 'os', '操作系统', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (112, NULL, NULL, NULL, '2025-06-20 13:15:38.193147', '2025-06-20 13:15:38.193147', 'LoginLog', 'province', '省份', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (113, NULL, NULL, NULL, '2025-06-20 13:15:38.199675', '2025-06-20 13:15:38.199675', 'LoginLog', 'update_datetime', '修改时间', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (114, NULL, NULL, NULL, '2025-06-20 13:15:38.206662', '2025-06-20 13:15:38.206662', 'LoginLog', 'username', '登录用户名', NULL, 15);
INSERT INTO `st_system_menu_field` VALUES (115, NULL, NULL, NULL, '2025-06-20 13:15:38.238606', '2025-06-20 13:15:38.238606', 'OperationLog', 'create_datetime', '创建时间', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (116, NULL, NULL, NULL, '2025-06-20 13:15:38.244812', '2025-06-20 13:15:38.244812', 'OperationLog', 'creator', '创建人', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (117, NULL, NULL, NULL, '2025-06-20 13:15:38.250935', '2025-06-20 13:15:38.250935', 'OperationLog', 'dept_belong_id', '数据归属部门', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (118, NULL, NULL, NULL, '2025-06-20 13:15:38.257265', '2025-06-20 13:15:38.257265', 'OperationLog', 'description', '描述', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (119, NULL, NULL, NULL, '2025-06-20 13:15:38.264243', '2025-06-20 13:15:38.264243', 'OperationLog', 'id', 'Id', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (120, NULL, NULL, NULL, '2025-06-20 13:15:38.270505', '2025-06-20 13:15:38.270505', 'OperationLog', 'json_result', '返回信息', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (121, NULL, NULL, NULL, '2025-06-20 13:15:38.279655', '2025-06-20 13:15:38.279655', 'OperationLog', 'modifier', '修改人', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (122, NULL, NULL, NULL, '2025-06-20 13:15:38.286669', '2025-06-20 13:15:38.286669', 'OperationLog', 'request_body', '请求参数', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (123, NULL, NULL, NULL, '2025-06-20 13:15:38.293644', '2025-06-20 13:15:38.293644', 'OperationLog', 'request_browser', '请求浏览器', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (124, NULL, NULL, NULL, '2025-06-20 13:15:38.300661', '2025-06-20 13:15:38.300661', 'OperationLog', 'request_ip', '请求ip地址', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (125, NULL, NULL, NULL, '2025-06-20 13:15:38.307276', '2025-06-20 13:15:38.307276', 'OperationLog', 'request_method', '请求方式', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (126, NULL, NULL, NULL, '2025-06-20 13:15:38.314254', '2025-06-20 13:15:38.314254', 'OperationLog', 'request_modular', '请求模块', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (127, NULL, NULL, NULL, '2025-06-20 13:15:38.320237', '2025-06-20 13:15:38.320237', 'OperationLog', 'request_msg', '操作说明', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (128, NULL, NULL, NULL, '2025-06-20 13:15:38.328252', '2025-06-20 13:15:38.328252', 'OperationLog', 'request_os', '操作系统', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (129, NULL, NULL, NULL, '2025-06-20 13:15:38.335476', '2025-06-20 13:15:38.335476', 'OperationLog', 'request_path', '请求地址', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (130, NULL, NULL, NULL, '2025-06-20 13:15:38.343998', '2025-06-20 13:15:38.343998', 'OperationLog', 'response_code', '响应状态码', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (131, NULL, NULL, NULL, '2025-06-20 13:15:38.349994', '2025-06-20 13:15:38.349994', 'OperationLog', 'status', '响应状态', NULL, 16);
INSERT INTO `st_system_menu_field` VALUES (132, NULL, NULL, NULL, '2025-06-20 13:15:38.358992', '2025-06-20 13:15:38.358992', 'OperationLog', 'update_datetime', '修改时间', NULL, 16);

-- ----------------------------
-- Table structure for st_system_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `st_system_operation_log`;
CREATE TABLE `st_system_operation_log`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `request_modular` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `request_path` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `request_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `request_method` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `request_msg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `request_ip` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `request_browser` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `response_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `request_os` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `json_result` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_operation_log_creator_id_90cedb97`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 318 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_operation_log
-- ----------------------------
INSERT INTO `st_system_operation_log` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:25:18.885539', '2025-06-20 13:25:16.797835', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:27:02.909313', '2025-06-20 13:27:02.817368', '文件管理', '/api/system/file/', '{}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (3, NULL, NULL, NULL, '2025-06-20 13:27:51.745384', '2025-06-20 13:27:51.727979', '轮播图', '/api/app/slideshow/', '{\'sds_w1\': \'轮播图名称\', \'sds_w2\': \'media/files\\\\\\\\6\\\\\\\\d\\\\\\\\6d86571d48bb60612bf1a6024b2bbfd4.png\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (4, NULL, NULL, NULL, '2025-06-20 13:28:13.512556', '2025-06-20 13:28:13.491568', '文件管理', '/api/system/file/', '{}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (5, NULL, NULL, NULL, '2025-06-20 13:28:42.165496', '2025-06-20 13:28:42.144863', '轮播图', '/api/app/slideshow/', '{\'sds_w1\': \'轮播图名称2\', \'sds_w2\': \'media/files\\\\\\\\1\\\\\\\\2\\\\\\\\1268113536aee2f370d1f68a5429c5c8.jpg\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (6, NULL, NULL, NULL, '2025-06-20 13:31:04.337951', '2025-06-20 13:31:04.315082', '文件管理', '/api/system/file/', '{}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (7, NULL, NULL, NULL, '2025-06-20 13:31:18.332573', '2025-06-20 13:31:18.314567', '轮播图', '/api/app/slideshow/', '{\'sds_w1\': \'轮播图名称3\', \'sds_w2\': \'media/files\\\\\\\\0\\\\\\\\6\\\\\\\\0617882ddf911177d53646290bf0e73b.jpg\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (8, NULL, NULL, '1', '2025-06-20 14:12:39.112368', '2025-06-20 14:12:38.532020', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (9, NULL, NULL, '1', '2025-06-20 14:12:46.824721', '2025-06-20 14:12:45.635856', '用户表', '/api/system/user/login_change_password/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'password_regain\': \'0192023a7bbd73250516f069df18b500\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (10, NULL, NULL, '1', '2025-06-20 14:13:28.643131', '2025-06-20 14:13:28.625101', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/slideshow/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (11, NULL, NULL, '1', '2025-06-20 14:13:50.726420', '2025-06-20 14:13:50.671453', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/app/slideshow/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (12, NULL, NULL, '1', '2025-06-20 14:13:58.962076', '2025-06-20 14:13:58.942894', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/app/slideshow/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (13, NULL, NULL, '1', '2025-06-20 14:14:07.035868', '2025-06-20 14:14:07.015880', '接口白名单', '/api/system/api_white_list/', '{\'method\': 3, \'url\': \'/api/app/slideshow/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (14, NULL, NULL, '1', '2025-06-20 14:14:25.224756', '2025-06-20 14:14:25.206631', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/slideshow/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (15, NULL, NULL, '1', '2025-06-20 14:14:44.810935', '2025-06-20 14:14:44.374175', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/types/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (16, NULL, NULL, '1', '2025-06-20 14:14:53.699104', '2025-06-20 14:14:53.681312', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/types/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (17, NULL, NULL, '1', '2025-06-20 14:15:01.517484', '2025-06-20 14:15:01.487640', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/app/types/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (18, NULL, NULL, '1', '2025-06-20 14:15:11.210018', '2025-06-20 14:15:10.975654', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/app/types/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (19, NULL, NULL, '1', '2025-06-20 14:15:19.579601', '2025-06-20 14:15:19.516765', '接口白名单', '/api/system/api_white_list/', '{\'method\': 3, \'url\': \'/api/app/types/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (20, NULL, NULL, '1', '2025-06-20 14:15:45.598900', '2025-06-20 14:15:45.581499', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/commodity/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (21, NULL, NULL, '1', '2025-06-20 14:15:52.765796', '2025-06-20 14:15:52.744532', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/commodity/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (22, NULL, NULL, '1', '2025-06-20 14:15:58.892117', '2025-06-20 14:15:58.815162', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/app/commodity/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (23, NULL, NULL, '1', '2025-06-20 14:16:06.277376', '2025-06-20 14:16:06.255452', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/app/commodity/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (24, NULL, NULL, '1', '2025-06-20 14:16:13.407478', '2025-06-20 14:16:13.382493', '接口白名单', '/api/system/api_white_list/', '{\'method\': 3, \'url\': \'/api/app/commodity/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (25, NULL, NULL, '1', '2025-06-20 14:16:31.897229', '2025-06-20 14:16:31.877242', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/cart/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (26, NULL, NULL, '1', '2025-06-20 14:16:47.707127', '2025-06-20 14:16:47.685139', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/cart/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (27, NULL, NULL, '1', '2025-06-20 14:16:56.320623', '2025-06-20 14:16:56.300636', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/app/cart/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (28, NULL, NULL, '1', '2025-06-20 14:17:04.881298', '2025-06-20 14:17:04.864313', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/app/cart/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (29, NULL, NULL, '1', '2025-06-20 14:17:13.169692', '2025-06-20 14:17:13.146707', '接口白名单', '/api/system/api_white_list/', '{\'method\': 3, \'url\': \'/api/app/cart/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (30, NULL, NULL, '1', '2025-06-20 14:17:40.303895', '2025-06-20 14:17:40.280909', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/address/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (31, NULL, NULL, '1', '2025-06-20 14:17:47.850416', '2025-06-20 14:17:47.832874', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/address/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (32, NULL, NULL, '1', '2025-06-20 14:18:00.371216', '2025-06-20 14:18:00.353768', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/app/address/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (33, NULL, NULL, '1', '2025-06-20 14:18:09.400036', '2025-06-20 14:18:09.382029', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/app/address/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (34, NULL, NULL, '1', '2025-06-20 14:18:18.682868', '2025-06-20 14:18:18.663857', '接口白名单', '/api/system/api_white_list/', '{\'method\': 3, \'url\': \'/api/app/address/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (35, NULL, NULL, '1', '2025-06-20 14:18:48.763385', '2025-06-20 14:18:48.743376', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/saveallorder/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (36, NULL, NULL, '1', '2025-06-20 14:19:07.364475', '2025-06-20 14:19:07.344234', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/app/saveallorder/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (37, NULL, NULL, '1', '2025-06-20 14:19:39.425256', '2025-06-20 14:19:39.377283', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/app/saveallorder/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (38, NULL, NULL, '1', '2025-06-20 14:19:53.521814', '2025-06-20 14:19:53.503282', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/app/orders/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (39, NULL, NULL, '1', '2025-06-20 14:20:16.513565', '2025-06-20 14:20:16.486199', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/system/getuserlist/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (40, NULL, NULL, '1', '2025-06-20 14:42:24.446100', '2025-06-20 14:42:24.382752', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 2, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'网页标题\', \'key\': \'web_title\', \'value\': \'小丁Admin\', \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [], \'placeholder\': \'请输入网站标题\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 3, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'网站小图标\', \'key\': \'web_favicon\', \'value\': \'\', \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [], \'placeholder\': \'请输入网站小图标\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 4, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'switch\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'开启验证码\', \'key\': \'captcha_state\', \'value\': False, \'sort\': 1, \'status\': False, \'data_options\': None, \'form_item_type\': 9, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请选择\', \'setting\': None, \'creator\': None, \'parent\': 1}, {\'id\': 5, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'创建用户默认密码\', \'key\': \'default_password\', \'value\': \'admin123456\', \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入默认密码\', \'setting\': None, \'creator\': None, \'parent\': 1}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (41, NULL, NULL, '1', '2025-06-20 14:42:54.799284', '2025-06-20 14:42:54.679493', '系统配置表', '/api/system/system_config/save_content/', '{\'data\': [{\'id\': 7, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'网站标题\', \'key\': \'site_title\', \'value\': \'小丁Admin\', \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [], \'placeholder\': \'请输入网站标题\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 8, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'网站名称\', \'key\': \'site_name\', \'value\': \'后台管理系统\', \'sort\': 1, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入网站名称\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 9, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'img\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'登录网站logo\', \'key\': \'site_logo\', \'value\': None, \'sort\': 2, \'status\': True, \'data_options\': None, \'form_item_type\': 7, \'rule\': [], \'placeholder\': \'请上传网站logo\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 10, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'img\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'登录页背景图\', \'key\': \'login_background\', \'value\': None, \'sort\': 3, \'status\': True, \'data_options\': None, \'form_item_type\': 7, \'rule\': [], \'placeholder\': \'请上传登录背景页\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 11, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'版权信息\', \'key\': \'copyright\', \'value\': \'2021-2024 小丁 版权所有\', \'sort\': 4, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入版权信息\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 12, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'备案信息\', \'key\': \'keep_record\', \'value\': \'豫ICP备18005113号-3\', \'sort\': 5, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [{\'message\': \'必填项不能为空\', \'required\': True}], \'placeholder\': \'请输入备案信息\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 13, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'帮助链接\', \'key\': \'help_url\', \'value\': \'https://django-vue-admin.com\', \'sort\': 6, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': \'\', \'placeholder\': \'请输入帮助信息\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 14, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'隐私链接\', \'key\': \'privacy_url\', \'value\': \'/api/system/clause/privacy.html\', \'sort\': 7, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [], \'placeholder\': \'请填写隐私链接\', \'setting\': None, \'creator\': None, \'parent\': 6}, {\'id\': 15, \'modifier_name\': None, \'creator_name\': None, \'create_datetime\': \'2025-06-20 13:15:39\', \'update_datetime\': \'2025-06-20 13:15:39\', \'children\': [], \'form_item_type_label\': \'text\', \'description\': None, \'modifier\': None, \'dept_belong_id\': None, \'title\': \'条款链接\', \'key\': \'clause_url\', \'value\': \'/api/system/clause/terms_service.html\', \'sort\': 8, \'status\': True, \'data_options\': None, \'form_item_type\': 0, \'rule\': [], \'placeholder\': \'请输入条款链接\', \'setting\': None, \'creator\': None, \'parent\': 6}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'保存成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (42, NULL, NULL, '1', '2025-06-23 10:32:29.064123', '2025-06-23 10:32:27.689140', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (43, NULL, NULL, '1', '2025-06-24 08:10:57.809068', '2025-06-24 08:10:55.007955', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (44, NULL, NULL, '1', '2025-06-24 08:11:23.408196', '2025-06-24 08:11:22.383733', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (45, NULL, NULL, '1', '2025-06-25 08:12:17.693766', '2025-06-25 08:12:16.564650', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (46, NULL, NULL, '1', '2025-06-25 08:12:43.784346', '2025-06-25 08:12:42.827303', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (47, NULL, NULL, '1', '2025-06-26 08:11:12.814420', '2025-06-26 08:11:10.355602', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (48, NULL, NULL, '1', '2025-06-26 08:11:33.296841', '2025-06-26 08:11:32.322087', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 137.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (49, NULL, NULL, NULL, '2025-07-02 09:40:46.662678', '2025-07-02 09:40:45.211503', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (50, NULL, NULL, '1', '2025-07-02 09:58:18.001458', '2025-07-02 09:58:16.586229', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (51, NULL, NULL, '1', '2025-07-02 09:58:41.686805', '2025-07-02 09:58:40.670097', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (52, NULL, NULL, NULL, '2025-07-02 09:59:31.290482', '2025-07-02 09:59:31.206990', '文件管理', '/api/system/file/', '{}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, NULL);
INSERT INTO `st_system_operation_log` VALUES (53, NULL, NULL, '1', '2025-07-02 09:59:31.373436', '2025-07-02 09:59:31.320463', '用户表', '/api/system/user/update_user_info/', '{\'avatar\': \'media/files\\\\7\\\\8\\\\789849c7d472a4e72e0e06dcdcd3b7b1\', \'username\': \'superadmin\', \'name\': \'超级管理员\', \'email\': \'dvadmin@django-vue-admin.com\', \'mobile\': \'13333333333\', \'gender\': 1, \'dept_info\': {\'dept_id\': 0, \'dept_name\': \'DVAdmin团队\'}, \'role_info\': [{\'id\': 1, \'name\': \'管理员\', \'key\': \'admin\'}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (54, NULL, NULL, NULL, '2025-07-02 09:59:57.030965', '2025-07-02 09:59:57.011252', '文件管理', '/api/system/file/', '{}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, NULL);
INSERT INTO `st_system_operation_log` VALUES (55, NULL, NULL, '1', '2025-07-02 09:59:57.138907', '2025-07-02 09:59:57.061946', '用户表', '/api/system/user/update_user_info/', '{\'avatar\': \'media/files\\\\5\\\\9\\\\595974f1747478954a2c4b628997806e.jpeg\', \'username\': \'superadmin\', \'name\': \'超级管理员\', \'email\': \'dvadmin@django-vue-admin.com\', \'mobile\': \'13333333333\', \'gender\': 1, \'dept_info\': {\'dept_id\': 0, \'dept_name\': \'DVAdmin团队\'}, \'role_info\': [{\'id\': 1, \'name\': \'管理员\', \'key\': \'admin\'}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (56, NULL, NULL, '1', '2025-07-02 10:10:34.027136', '2025-07-02 10:10:33.988159', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/newstart/testlop/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (57, NULL, NULL, '1', '2025-07-02 10:10:56.153575', '2025-07-02 10:10:56.126591', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/newstart/testlop/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (58, NULL, NULL, NULL, '2025-07-02 10:16:15.729156', '2025-07-02 10:16:15.683182', '文件管理', '/api/system/file/', '{}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (59, NULL, NULL, NULL, '2025-07-02 10:18:19.014265', '2025-07-02 10:18:18.999253', '测试数据表', '/api/newstart/testlop/', '{\'name\': \'小明\', \'phone\': \'15000000000\', \'avatar\': \'media/files\\\\6\\\\8\\\\68e6c9ad1a38b7d2e8c723966363d018.png\', \'age\': 18, \'gender\': \'男\'}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'gender:“男” 不是合法选项。\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (60, NULL, NULL, '1', '2025-07-02 10:30:23.358929', '2025-07-02 10:30:23.304967', '字典表', '/api/system/dictionary/', '{\'sort\': 1, \'label\': \'性别\', \'value\': \'gender\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'字典编号:字典编号不能重复\'}', 0, 1);
INSERT INTO `st_system_operation_log` VALUES (61, NULL, NULL, '1', '2025-07-02 10:31:45.942580', '2025-07-02 10:31:45.911589', '用户表', '/api/system/user/update_user_info/', '{\'avatar\': \'media/files\\\\5\\\\9\\\\595974f1747478954a2c4b628997806e.jpeg\', \'username\': \'superadmin\', \'name\': \'超级管理员\', \'email\': \'dvadmin@django-vue-admin.com\', \'mobile\': \'13333333333\', \'gender\': 0, \'dept_info\': {\'dept_id\': 0, \'dept_name\': \'DVAdmin团队\'}, \'role_info\': [{\'id\': 1, \'name\': \'管理员\', \'key\': \'admin\'}]}', 'PUT', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'修改成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (62, NULL, NULL, '1', '2025-07-04 08:00:09.036750', '2025-07-04 08:00:07.539164', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (63, NULL, NULL, '1', '2025-07-05 08:11:21.822788', '2025-07-05 08:11:20.286296', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (64, NULL, NULL, NULL, '2025-07-05 10:25:48.259969', '2025-07-05 10:25:48.202000', '测试数据表', '/api/newstart/testlop/', '{\'name\': \'小明\', \'phone\': \'15000000000\', \'avatar\': \'media/files\\\\6\\\\8\\\\68e6c9ad1a38b7d2e8c723966363d018.png\', \'age\': 18, \'gender\': \'男\'}', 'POST', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (65, NULL, NULL, NULL, '2025-07-05 10:25:59.082242', '2025-07-05 10:25:57.488370', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (66, NULL, NULL, NULL, '2025-07-05 10:26:20.091986', '2025-07-05 10:26:20.075994', '测试数据表', '/api/newstart/testlop/', '{\'name\': \'小明\', \'phone\': \'15000000000\', \'avatar\': \'media/files\\\\6\\\\8\\\\68e6c9ad1a38b7d2e8c723966363d018.png\', \'age\': 18, \'gender\': \'男\'}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'gender:“男” 不是合法选项。\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (67, NULL, NULL, NULL, '2025-07-05 10:26:36.351510', '2025-07-05 10:26:36.324523', '测试数据表', '/api/newstart/testlop/', '{\'name\': \'小明\', \'phone\': \'15000000000\', \'avatar\': \'media/files\\\\6\\\\8\\\\68e6c9ad1a38b7d2e8c723966363d018.png\', \'age\': 18, \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'头像:请确保这个字段不能超过 50 个字符。\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (68, NULL, NULL, NULL, '2025-07-05 10:28:09.875746', '2025-07-05 10:28:09.834753', '测试数据表', '/api/newstart/testlop/', '{\'name\': \'小明\', \'phone\': \'15000000000\', \'avatar\': \'media/files\\\\6\\\\8\\\\68e6c9ad1a38b7d2e8c723966363d018.png\', \'age\': 18, \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (69, NULL, NULL, NULL, '2025-07-05 10:28:46.322262', '2025-07-05 10:28:45.703880', '测试数据表', '/api/newstart/testlop/', '{\'name\': \'小明\', \'phone\': \'15000000000\', \'avatar\': \'media/files\\\\6\\\\8\\\\68e6c9ad1a38b7d2e8c723966363d018.png\', \'age\': 18, \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'maximum recursion depth exceeded\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (70, NULL, NULL, NULL, '2025-07-05 10:31:19.537237', '2025-07-05 10:31:19.478269', '测试数据表', '/api/newstart/testlop/', '{\'name\': \'小明\', \'phone\': \'15000000000\', \'avatar\': \'media/files\\\\6\\\\8\\\\68e6c9ad1a38b7d2e8c723966363d018.png\', \'age\': 18, \'gender\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (71, NULL, NULL, '1', '2025-07-09 08:40:11.270361', '2025-07-09 08:40:09.785170', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': \'\', \'captchaImgBase\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (72, NULL, NULL, '1', '2025-07-09 08:40:43.859362', '2025-07-09 08:40:42.723832', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (73, NULL, NULL, NULL, '2025-07-09 16:20:36.945086', '2025-07-09 16:20:34.110593', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (74, NULL, NULL, '1', '2025-07-10 10:59:36.926332', '2025-07-10 10:59:35.381698', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (75, NULL, NULL, '1', '2025-07-10 17:08:35.005986', '2025-07-10 17:08:34.958598', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/newstart/dieinfo/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (76, NULL, NULL, '1', '2025-07-10 17:09:09.512555', '2025-07-10 17:09:09.482552', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/newstart/dieinfo/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (77, NULL, NULL, '1', '2025-07-10 17:09:25.516012', '2025-07-10 17:09:25.431065', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/newstart/dieinfo/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (78, NULL, NULL, '1', '2025-07-10 17:09:33.153782', '2025-07-10 17:09:33.129830', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/newstart/dieinfo/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (79, NULL, NULL, '1', '2025-07-10 17:09:48.180345', '2025-07-10 17:09:48.155222', '接口白名单', '/api/system/api_white_list/', '{\'method\': 3, \'url\': \'/api/newstart/dieinfo/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (80, NULL, NULL, '1', '2025-07-10 17:09:58.913379', '2025-07-10 17:09:58.881387', '接口白名单', '/api/system/api_white_list/36/', '{\'id\': 36, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2025-07-10 17:09:25\', \'update_datetime\': \'2025-07-10 17:09:25\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'1\', \'url\': \'/api/newstart/dieinfo/{id}/\', \'method\': 2, \'enable_datasource\': False, \'creator\': 1}', 'PUT', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (81, NULL, NULL, NULL, '2025-07-10 17:27:56.018787', '2025-07-10 17:27:55.954822', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {}}', 'POST', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (82, NULL, NULL, NULL, '2025-07-10 17:28:44.233541', '2025-07-10 17:28:42.865007', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (83, NULL, NULL, NULL, '2025-07-10 17:29:00.690403', '2025-07-10 17:29:00.666416', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'DieInfoSerializer\' has no attribute \'Meta\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (84, NULL, NULL, NULL, '2025-07-10 17:29:43.984353', '2025-07-10 17:29:43.934380', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'Meta\' has no attribute \'model\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (85, NULL, NULL, NULL, '2025-07-10 17:35:30.995806', '2025-07-10 17:35:30.944830', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'DieInfoSerializer\' has no attribute \'Meta\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (86, NULL, NULL, NULL, '2025-07-10 17:39:28.316892', '2025-07-10 17:39:28.271996', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'DieInfoSerializer\' has no attribute \'Meta\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (87, NULL, NULL, NULL, '2025-07-10 17:40:28.394605', '2025-07-10 17:40:28.361342', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'DieInfoSerializer\' has no attribute \'Meta\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (88, NULL, NULL, NULL, '2025-07-10 17:45:07.369967', '2025-07-10 17:45:07.316997', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'DieInfoSerializer\' has no attribute \'Meta\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (89, NULL, NULL, NULL, '2025-07-10 17:47:44.880341', '2025-07-10 17:47:44.842359', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'DieInfoSerializer\' has no attribute \'Meta\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (90, NULL, NULL, NULL, '2025-07-10 17:48:40.739358', '2025-07-10 17:48:40.695825', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field.__init__() got an unexpected keyword argument \'request\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (91, NULL, NULL, NULL, '2025-07-10 17:50:03.939895', '2025-07-10 17:50:03.907913', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'逝者姓名:该字段是必填项。\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (92, NULL, NULL, NULL, '2025-07-10 17:51:01.582306', '2025-07-10 17:51:01.547325', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'逝者姓名:该字段是必填项。\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (93, NULL, NULL, NULL, '2025-07-10 17:52:29.823996', '2025-07-10 17:52:29.762031', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (94, NULL, NULL, NULL, '2025-07-10 17:59:27.614301', '2025-07-10 17:59:27.564329', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (95, NULL, NULL, NULL, '2025-07-10 18:00:15.003374', '2025-07-10 18:00:14.951403', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (96, NULL, NULL, NULL, '2025-07-10 18:43:08.301615', '2025-07-10 18:43:07.990668', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Manager\' object is not callable\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (97, NULL, NULL, NULL, '2025-07-10 18:44:21.317930', '2025-07-10 18:44:21.164181', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (98, NULL, NULL, NULL, '2025-07-10 19:19:39.447758', '2025-07-10 19:19:39.392021', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (99, NULL, NULL, NULL, '2025-07-10 19:20:37.978290', '2025-07-10 19:20:37.918327', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (100, NULL, NULL, NULL, '2025-07-10 19:21:22.266251', '2025-07-10 19:21:22.208680', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (101, NULL, NULL, NULL, '2025-07-10 19:22:03.635117', '2025-07-10 19:22:03.587145', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (102, NULL, NULL, NULL, '2025-07-10 19:22:37.261247', '2025-07-10 19:22:37.227541', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (103, NULL, NULL, NULL, '2025-07-11 08:05:34.702372', '2025-07-11 08:05:34.638460', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (104, NULL, NULL, NULL, '2025-07-11 08:07:15.119077', '2025-07-11 08:07:15.051114', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (105, NULL, NULL, NULL, '2025-07-11 08:12:31.161609', '2025-07-11 08:12:31.100514', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'tuple\' object has no attribute \'value\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (106, NULL, NULL, NULL, '2025-07-11 08:14:28.293727', '2025-07-11 08:14:28.212756', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'QuerySet.create() takes 1 positional argument but 2 were given\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (107, NULL, NULL, NULL, '2025-07-11 08:17:10.414720', '2025-07-11 08:17:10.372219', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'__str__ returned non-string (type int)\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (108, NULL, NULL, NULL, '2025-07-11 08:20:52.870031', '2025-07-11 08:20:52.801072', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'QuerySet.create() takes 1 positional argument but 2 were given\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (109, NULL, NULL, NULL, '2025-07-11 08:22:45.771944', '2025-07-11 08:22:45.685376', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field \'id\' expected a number but got <Departed: Departed object (4)>.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (110, NULL, NULL, NULL, '2025-07-11 08:23:42.283303', '2025-07-11 08:23:42.221231', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'first\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (111, NULL, NULL, NULL, '2025-07-11 08:30:47.316535', '2025-07-11 08:30:47.255570', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'value\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (112, NULL, NULL, NULL, '2025-07-11 08:32:42.814766', '2025-07-11 08:32:42.702828', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field \'id\' expected a number but got <Departed: Departed object (7)>.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (113, NULL, NULL, NULL, '2025-07-11 08:33:43.297683', '2025-07-11 08:33:43.229180', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `dieInfo` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Response` instance.\\nOriginal exception text was: \'Response\' object has no attribute \'dieInfo\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (114, NULL, NULL, NULL, '2025-07-11 08:38:33.996628', '2025-07-11 08:38:33.942661', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'get() returned more than one Departed -- it returned 7!\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (115, NULL, NULL, NULL, '2025-07-11 08:39:11.855590', '2025-07-11 08:39:11.773637', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'get() returned more than one Departed -- it returned 7!\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (116, NULL, NULL, NULL, '2025-07-11 08:39:34.453981', '2025-07-11 08:39:34.402008', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'get() returned more than one Departed -- it returned 7!\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (117, NULL, NULL, NULL, '2025-07-11 08:41:32.638198', '2025-07-11 08:41:32.560241', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'get() returned more than one Departed -- it returned 7!\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (118, NULL, NULL, NULL, '2025-07-11 08:43:10.739191', '2025-07-11 08:43:10.662813', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field \'id\' expected a number but got <Departed: Departed object (8)>.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (119, NULL, NULL, NULL, '2025-07-11 08:43:51.070177', '2025-07-11 08:43:51.002215', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field \'id\' expected a number but got <Departed: Departed object (8)>.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (120, NULL, NULL, NULL, '2025-07-11 08:44:27.750700', '2025-07-11 08:44:27.676836', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'valueList\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (121, NULL, NULL, NULL, '2025-07-11 08:44:47.228886', '2025-07-11 08:44:47.202901', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'valueList\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (122, NULL, NULL, NULL, '2025-07-11 08:45:48.223432', '2025-07-11 08:45:48.155850', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'values\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (123, NULL, NULL, NULL, '2025-07-11 08:46:13.245936', '2025-07-11 08:46:13.161886', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'value\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (124, NULL, NULL, NULL, '2025-07-11 08:46:29.896971', '2025-07-11 08:46:29.836946', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'value\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (125, NULL, NULL, NULL, '2025-07-11 08:47:39.429334', '2025-07-11 08:47:39.372112', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object has no attribute \'values_list\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (126, NULL, NULL, NULL, '2025-07-11 08:48:05.630052', '2025-07-11 08:48:05.520115', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field \'id\' expected a number but got <Departed: Departed object (8)>.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (127, NULL, NULL, NULL, '2025-07-11 08:48:32.165925', '2025-07-11 08:48:32.105495', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field \'id\' expected a number but got <Departed: Departed object (8)>.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (128, NULL, NULL, NULL, '2025-07-11 08:53:46.241325', '2025-07-11 08:53:46.164076', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Field \'id\' expected a number but got <Departed: Departed object (9)>.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (129, NULL, NULL, NULL, '2025-07-11 08:54:39.116793', '2025-07-11 08:54:39.055441', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `dieInfo` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Response` instance.\\nOriginal exception text was: \'Response\' object has no attribute \'dieInfo\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (130, NULL, NULL, NULL, '2025-07-11 08:55:53.688345', '2025-07-11 08:55:53.636466', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `dieInfo` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Response` instance.\\nOriginal exception text was: \'Response\' object has no attribute \'dieInfo\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (131, NULL, NULL, NULL, '2025-07-11 09:00:11.400966', '2025-07-11 09:00:11.337389', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `dieInfo` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Departed` instance.\\nOriginal exception text was: \'Departed\' object has no attribute \'dieInfo\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (132, NULL, NULL, NULL, '2025-07-11 09:03:55.465237', '2025-07-11 09:03:55.348303', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `dieInfo` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Departed` instance.\\nOriginal exception text was: \'Departed\' object has no attribute \'dieInfo\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (133, NULL, NULL, NULL, '2025-07-11 09:06:06.264421', '2025-07-11 09:06:06.209121', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (134, NULL, NULL, NULL, '2025-07-11 09:06:55.264707', '2025-07-11 09:06:55.206727', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `RelationModel` instance.\\nOriginal exception text was: \'RelationModel\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (135, NULL, NULL, NULL, '2025-07-11 09:06:58.502437', '2025-07-11 09:06:58.465458', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `RelationModel` instance.\\nOriginal exception text was: \'RelationModel\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (136, NULL, NULL, NULL, '2025-07-11 09:07:00.797422', '2025-07-11 09:07:00.751143', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `RelationModel` instance.\\nOriginal exception text was: \'RelationModel\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (137, NULL, NULL, NULL, '2025-07-11 09:07:15.022615', '2025-07-11 09:07:14.942693', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (138, NULL, NULL, NULL, '2025-07-11 09:07:49.651751', '2025-07-11 09:07:49.585958', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (139, NULL, NULL, NULL, '2025-07-11 09:29:03.534621', '2025-07-11 09:29:03.492260', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Response` instance.\\nOriginal exception text was: \'Response\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (140, NULL, NULL, NULL, '2025-07-11 09:29:49.539780', '2025-07-11 09:29:49.447698', '订单表', '/api/app/orders/', '{\'cid\': 1, \'nums\': 1, \'aid\': 8, \'tatol\': 15.5}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'商品不存在\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (141, NULL, NULL, NULL, '2025-07-11 09:30:02.002618', '2025-07-11 09:30:01.972634', '订单表', '/api/app/orders/', '{\'cid\': 1, \'nums\': 1, \'aid\': 1, \'tatol\': 15.5}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'商品不存在\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (142, NULL, NULL, NULL, '2025-07-11 09:30:17.970764', '2025-07-11 09:30:17.936784', '商品表', '/api/app/commodity/', '{\'cms_t1\': \'商品名称2\', \'cms_t2\': \'media/files\\\\6\\\\d\\\\6d86571d48bb60612bf1a6024b2bbfd4.png\', \'cms_t3\': 15.5, \'cms_t4\': \'商品描述\', \'cms_t5\': 1000, \'cms_t7\': 2, \'cms_t8\': 1, \'cms_t9\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'商品分类:无效主键 “2” － 对象不存在。\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (143, NULL, NULL, NULL, '2025-07-11 09:30:32.779180', '2025-07-11 09:30:32.759192', '分类表', '/api/app/types/', '{\'st_e1\': \'女装\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (144, NULL, NULL, NULL, '2025-07-11 09:30:50.986840', '2025-07-11 09:30:50.920876', '商品表', '/api/app/commodity/', '{\'cms_t1\': \'商品名称2\', \'cms_t2\': \'media/files\\\\6\\\\d\\\\6d86571d48bb60612bf1a6024b2bbfd4.png\', \'cms_t3\': 15.5, \'cms_t4\': \'商品描述\', \'cms_t5\': 1000, \'cms_t7\': 1, \'cms_t8\': 1, \'cms_t9\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (145, NULL, NULL, NULL, '2025-07-11 09:31:01.289287', '2025-07-11 09:31:01.192750', '订单表', '/api/app/orders/', '{\'cid\': 1, \'nums\': 1, \'aid\': 1, \'tatol\': 15.5}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'收货地址不存在\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (146, NULL, NULL, NULL, '2025-07-11 09:31:18.092999', '2025-07-11 09:31:18.068809', '收货地址表', '/api/app/address/', '{\'as_t2\': \'小丁8号\', \'as_t3\': \'河南省郑州市郑东新区某某街道\', \'as_t4\': \'15000000000\', \'as_t5\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (147, NULL, NULL, NULL, '2025-07-11 09:31:24.226582', '2025-07-11 09:31:24.162905', '订单表', '/api/app/orders/', '{\'cid\': 1, \'nums\': 1, \'aid\': 1, \'tatol\': 15.5}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (148, NULL, NULL, NULL, '2025-07-11 09:33:09.538915', '2025-07-11 09:33:09.521016', '购物车表', '/api/app/cart/', '{\'ca_t2\': 4, \'ca_t3\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': ErrorDetail(string=\'商品不存在\', code=\'error\')}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (149, NULL, NULL, NULL, '2025-07-11 09:33:17.374944', '2025-07-11 09:33:17.241841', '购物车表', '/api/app/cart/', '{\'ca_t2\': 1, \'ca_t3\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'maximum recursion depth exceeded\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (150, NULL, NULL, NULL, '2025-07-11 09:33:20.624049', '2025-07-11 09:33:20.521048', '购物车表', '/api/app/cart/', '{\'ca_t2\': 1, \'ca_t3\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'maximum recursion depth exceeded\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (151, NULL, NULL, NULL, '2025-07-11 09:33:59.606552', '2025-07-11 09:33:59.393673', '购物车表', '/api/app/cart/', '{\'ca_t2\': 1, \'ca_t3\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'maximum recursion depth exceeded\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (152, NULL, NULL, NULL, '2025-07-11 09:35:31.251682', '2025-07-11 09:35:31.207200', '购物车表', '/api/app/cart/', '{\'ca_t2\': 1, \'ca_t3\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (153, NULL, NULL, NULL, '2025-07-11 09:35:35.024967', '2025-07-11 09:35:34.992930', '购物车表', '/api/app/cart/', '{\'ca_t2\': 1, \'ca_t3\': 1}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (154, NULL, NULL, NULL, '2025-07-11 09:35:55.536279', '2025-07-11 09:35:55.509087', '订单表', '/api/app/saveallorder/', '{\'Cids\': [1], \'Aid\': 8, \'total\': 15.5}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'收货地址数据不正确\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (155, NULL, NULL, NULL, '2025-07-11 09:36:01.736807', '2025-07-11 09:36:01.687835', '订单表', '/api/app/saveallorder/', '{\'Cids\': [1], \'Aid\': 1, \'total\': 15.5}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'订单总价错误\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (156, NULL, NULL, NULL, '2025-07-11 09:36:42.133891', '2025-07-11 09:36:42.091402', '订单表', '/api/app/saveallorder/', '{\'Cids\': [1], \'Aid\': 1, \'total\': 62}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'订单总价错误\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (157, NULL, NULL, NULL, '2025-07-11 09:36:46.587420', '2025-07-11 09:36:46.505519', '订单表', '/api/app/saveallorder/', '{\'Cids\': [1], \'Aid\': 1, \'total\': 62}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'订单总价错误\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (158, NULL, NULL, NULL, '2025-07-11 09:38:07.657070', '2025-07-11 09:38:07.601400', '订单表', '/api/app/saveallorder/', '{\'Cids\': [1], \'Aid\': 1, \'total\': 62}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'订单总价错误77.5\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (159, NULL, NULL, NULL, '2025-07-11 09:38:18.320903', '2025-07-11 09:38:18.288260', '订单表', '/api/app/saveallorder/', '{\'Cids\': [1], \'Aid\': 1, \'total\': 77.5}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (160, NULL, NULL, NULL, '2025-07-11 09:38:47.319139', '2025-07-11 09:38:47.254174', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (161, NULL, NULL, NULL, '2025-07-11 09:38:51.504652', '2025-07-11 09:38:51.474691', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (162, NULL, NULL, NULL, '2025-07-11 10:08:36.214038', '2025-07-11 10:08:36.120984', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Response` instance.\\nOriginal exception text was: \'Response\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (163, NULL, NULL, NULL, '2025-07-11 10:09:21.110613', '2025-07-11 10:09:21.055643', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"The field \'dieInfo\' was declared on serializer DieInfoSerializer, but has not been included in the \'fields\' option.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (164, NULL, NULL, NULL, '2025-07-11 10:10:40.742124', '2025-07-11 10:10:40.694871', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (165, NULL, NULL, NULL, '2025-07-11 10:11:32.060078', '2025-07-11 10:11:32.007854', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"technical:\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (166, NULL, NULL, NULL, '2025-07-11 10:12:52.029772', '2025-07-11 10:12:51.967408', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"technical:\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (167, NULL, NULL, NULL, '2025-07-11 10:13:24.713338', '2025-07-11 10:13:24.663359', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"technical:\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (168, NULL, NULL, NULL, '2025-07-11 10:13:46.361970', '2025-07-11 10:13:46.273022', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"technical:\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (169, NULL, NULL, NULL, '2025-07-11 10:14:28.605825', '2025-07-11 10:14:28.558666', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (170, NULL, NULL, NULL, '2025-07-11 10:14:48.262351', '2025-07-11 10:14:48.200705', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"technical:\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (171, NULL, NULL, NULL, '2025-07-11 10:15:28.084977', '2025-07-11 10:15:28.019655', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Response` instance.\\nOriginal exception text was: \'Response\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (172, NULL, NULL, NULL, '2025-07-11 10:15:35.803475', '2025-07-11 10:15:35.753503', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `DieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `Response` instance.\\nOriginal exception text was: \'Response\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (173, NULL, NULL, NULL, '2025-07-11 10:15:56.004391', '2025-07-11 10:15:55.958453', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (174, NULL, NULL, NULL, '2025-07-11 10:17:01.396064', '2025-07-11 10:17:01.342097', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'Departed\' object is not subscriptable\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (175, NULL, NULL, NULL, '2025-07-11 10:17:31.103232', '2025-07-11 10:17:31.052260', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (176, NULL, NULL, NULL, '2025-07-11 13:16:12.804620', '2025-07-11 13:16:12.728491', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'逝者姓名:该字段是必填项。\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (177, NULL, NULL, NULL, '2025-07-11 13:17:00.595248', '2025-07-11 13:17:00.534922', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (178, NULL, NULL, NULL, '2025-07-11 13:18:15.578371', '2025-07-11 13:18:15.502155', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`create()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (179, NULL, NULL, NULL, '2025-07-11 13:34:36.627273', '2025-07-11 13:34:36.572494', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号\', \'diEx2\': \'逝者姓名\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (180, NULL, NULL, NULL, '2025-07-11 13:38:11.769152', '2025-07-11 13:38:11.690200', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"type object \'Relation\' has no attribute \'_meta\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (181, NULL, NULL, NULL, '2025-07-11 13:39:14.611752', '2025-07-11 13:39:14.385259', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (182, NULL, NULL, NULL, '2025-07-11 13:50:19.802963', '2025-07-11 13:50:19.770038', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号2\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (183, NULL, NULL, NULL, '2025-07-11 13:51:24.207791', '2025-07-11 13:51:24.164131', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号2\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (184, NULL, NULL, NULL, '2025-07-11 13:51:38.794352', '2025-07-11 13:51:38.749379', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (185, NULL, NULL, NULL, '2025-07-11 13:56:11.019254', '2025-07-11 13:56:10.959288', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'dieInfo\' is an invalid keyword argument for print()\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (186, NULL, NULL, NULL, '2025-07-11 13:56:42.548496', '2025-07-11 13:56:42.493235', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'diEx1\' is an invalid keyword argument for print()\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (187, NULL, NULL, NULL, '2025-07-11 13:57:44.806700', '2025-07-11 13:57:44.686779', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (188, NULL, NULL, NULL, '2025-07-11 13:57:58.363072', '2025-07-11 13:57:58.336050', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (189, NULL, NULL, NULL, '2025-07-11 13:59:20.908685', '2025-07-11 13:59:20.816741', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (190, NULL, NULL, NULL, '2025-07-11 14:03:23.784324', '2025-07-11 14:03:23.698371', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"CoreModel.update() got an unexpected keyword argument \'diEx1\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (191, NULL, NULL, NULL, '2025-07-11 14:05:10.498557', '2025-07-11 14:05:10.438590', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"CoreModel.update() got an unexpected keyword argument \'diEx1\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (192, NULL, NULL, NULL, '2025-07-11 14:05:41.854806', '2025-07-11 14:05:41.775851', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"CoreModel.update() got an unexpected keyword argument \'diEx1\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (193, NULL, NULL, NULL, '2025-07-11 14:06:13.631452', '2025-07-11 14:06:13.581273', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"CoreModel.update() got an unexpected keyword argument \'diEx1\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (194, NULL, NULL, NULL, '2025-07-11 14:13:56.651048', '2025-07-11 14:13:56.597793', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"CoreModel.update() got an unexpected keyword argument \'diEx1\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (195, NULL, NULL, NULL, '2025-07-11 14:15:10.500756', '2025-07-11 14:15:10.445212', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'RelatedManager\' object is not iterable\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (196, NULL, NULL, NULL, '2025-07-11 14:29:01.359412', '2025-07-11 14:29:01.294447', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'RelatedManager\' object is not iterable\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (197, NULL, NULL, NULL, '2025-07-11 14:29:48.103318', '2025-07-11 14:29:48.042351', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'cannot unpack non-iterable RelationModel object\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (198, NULL, NULL, NULL, '2025-07-11 14:30:15.227017', '2025-07-11 14:30:15.162789', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'QuerySet\' object has no attribute \'items\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (199, NULL, NULL, NULL, '2025-07-11 14:30:51.789678', '2025-07-11 14:30:51.730263', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (200, NULL, NULL, '1', '2025-07-13 08:08:50.677114', '2025-07-13 08:08:48.751044', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (201, NULL, NULL, NULL, '2025-07-13 14:56:14.292117', '2025-07-13 14:56:14.243146', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (202, NULL, NULL, NULL, '2025-07-13 14:56:24.783767', '2025-07-13 14:56:23.508295', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (203, NULL, NULL, NULL, '2025-07-13 14:56:47.612056', '2025-07-13 14:56:47.545874', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (204, NULL, NULL, NULL, '2025-07-13 14:57:33.598465', '2025-07-13 14:57:33.402178', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'RelationModel\' object is not iterable\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (205, NULL, NULL, NULL, '2025-07-13 15:34:42.777275', '2025-07-13 15:34:42.687110', '逝者信息表', '/api/newstart/dieinfo/38/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (206, NULL, NULL, '1', '2025-07-13 15:35:17.799781', '2025-07-13 15:35:17.741826', '接口白名单', '/api/system/api_white_list/37/', '{\'id\': 37, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2025-07-10 17:09:33\', \'update_datetime\': \'2025-07-10 17:09:33\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'1\', \'url\': \'/api/newstart/dieinfo/{id}/\', \'method\': 0, \'enable_datasource\': True, \'creator\': 1}', 'PUT', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (207, NULL, NULL, '1', '2025-07-13 15:35:18.268782', '2025-07-13 15:35:18.232956', '接口白名单', '/api/system/api_white_list/37/', '{\'id\': 37, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2025-07-10 17:09:33\', \'update_datetime\': \'2025-07-10 17:09:33\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'1\', \'url\': \'/api/newstart/dieinfo/{id}/\', \'method\': 0, \'enable_datasource\': False, \'creator\': 1}', 'PUT', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (208, NULL, NULL, NULL, '2025-07-13 15:35:36.861130', '2025-07-13 15:35:36.804877', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (209, NULL, NULL, NULL, '2025-07-13 15:36:08.302072', '2025-07-13 15:36:08.220213', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (210, NULL, NULL, '1', '2025-07-14 10:43:39.323090', '2025-07-14 10:43:37.789283', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (211, NULL, NULL, NULL, '2025-07-14 13:50:13.164039', '2025-07-14 13:50:13.014305', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'cannot unpack non-iterable RelationModel object\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (212, NULL, NULL, NULL, '2025-07-14 13:51:57.901694', '2025-07-14 13:51:57.746781', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (213, NULL, NULL, NULL, '2025-07-14 13:53:17.423850', '2025-07-14 13:53:17.281405', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"CoreModel.update() got an unexpected keyword argument \'dciEx1\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (214, NULL, NULL, NULL, '2025-07-14 13:53:55.176144', '2025-07-14 13:53:55.075203', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"CoreModel.update() got an unexpected keyword argument \'dciEx1\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (215, NULL, NULL, NULL, '2025-07-14 13:57:35.397583', '2025-07-14 13:57:35.315629', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `CreateDieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `int` instance.\\nOriginal exception text was: \'int\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (216, NULL, NULL, NULL, '2025-07-14 14:00:23.117659', '2025-07-14 14:00:23.032704', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名2\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `CreateDieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `int` instance.\\nOriginal exception text was: \'int\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (217, NULL, NULL, NULL, '2025-07-14 14:01:08.992025', '2025-07-14 14:01:08.904076', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名52\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `CreateDieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `int` instance.\\nOriginal exception text was: \'int\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (218, NULL, NULL, NULL, '2025-07-14 14:04:43.111138', '2025-07-14 14:04:43.047032', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名52\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'QuerySet\' object has no attribute \'save\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (219, NULL, NULL, NULL, '2025-07-14 14:05:13.146539', '2025-07-14 14:05:13.033602', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `CreateDieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `QuerySet` instance.\\nOriginal exception text was: \'QuerySet\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (220, NULL, NULL, NULL, '2025-07-14 14:06:16.027080', '2025-07-14 14:06:15.913143', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'int\' object has no attribute \'first\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (221, NULL, NULL, NULL, '2025-07-14 14:07:14.367073', '2025-07-14 14:07:14.256140', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'int\' object has no attribute \'first\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (222, NULL, NULL, NULL, '2025-07-14 14:07:41.927352', '2025-07-14 14:07:41.854692', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'int\' object has no attribute \'values\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (223, NULL, NULL, NULL, '2025-07-14 14:09:10.400956', '2025-07-14 14:09:10.302012', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"Got AttributeError when attempting to get a value for field `diEx2` on serializer `CreateDieInfoSerializer`.\\nThe serializer field might be named incorrectly and not match any attribute or key on the `QuerySet` instance.\\nOriginal exception text was: \'QuerySet\' object has no attribute \'diEx2\'.\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (224, NULL, NULL, NULL, '2025-07-14 14:15:57.212116', '2025-07-14 14:15:57.146039', '逝者信息表', '/api/newstart/dieinfo/39/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名21\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名3\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (225, NULL, NULL, '1', '2025-07-16 08:06:57.943151', '2025-07-16 08:06:56.730471', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (226, NULL, NULL, NULL, '2025-07-16 16:28:54.989094', '2025-07-16 16:28:54.969106', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (227, NULL, NULL, NULL, '2025-07-16 16:29:06.276807', '2025-07-16 16:29:05.022513', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (228, NULL, NULL, NULL, '2025-07-16 16:29:25.561173', '2025-07-16 16:29:25.362285', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (229, NULL, NULL, NULL, '2025-07-16 16:30:51.253473', '2025-07-16 16:30:51.139533', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (230, NULL, NULL, NULL, '2025-07-16 16:31:36.925114', '2025-07-16 16:31:36.834166', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (231, NULL, NULL, NULL, '2025-07-16 17:52:07.625201', '2025-07-16 17:52:07.541253', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (232, NULL, NULL, NULL, '2025-07-16 17:52:56.264793', '2025-07-16 17:52:56.203830', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (233, NULL, NULL, NULL, '2025-07-16 17:53:16.770847', '2025-07-16 17:53:16.685899', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (234, NULL, NULL, NULL, '2025-07-16 17:56:05.610858', '2025-07-16 17:56:05.526906', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (235, NULL, NULL, NULL, '2025-07-16 17:56:43.027641', '2025-07-16 17:56:42.960723', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (236, NULL, NULL, NULL, '2025-07-16 17:57:07.601708', '2025-07-16 17:57:07.532750', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (237, NULL, NULL, NULL, '2025-07-16 17:57:10.238171', '2025-07-16 17:57:10.197190', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (238, NULL, NULL, NULL, '2025-07-16 17:57:38.857605', '2025-07-16 17:57:38.778416', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (239, NULL, NULL, NULL, '2025-07-16 17:57:52.612708', '2025-07-16 17:57:52.505579', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (240, NULL, NULL, NULL, '2025-07-16 17:58:19.790571', '2025-07-16 17:58:19.701622', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (241, NULL, NULL, NULL, '2025-07-16 17:59:17.785339', '2025-07-16 17:59:17.723599', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (242, NULL, NULL, NULL, '2025-07-16 17:59:34.595331', '2025-07-16 17:59:34.533366', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (243, NULL, NULL, NULL, '2025-07-16 17:59:57.594790', '2025-07-16 17:59:57.499844', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (244, NULL, NULL, NULL, '2025-07-16 18:00:16.072432', '2025-07-16 18:00:15.951502', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (245, NULL, NULL, NULL, '2025-07-16 18:06:23.301132', '2025-07-16 18:06:23.215182', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (246, NULL, NULL, NULL, '2025-07-16 18:07:54.019475', '2025-07-16 18:07:53.957718', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (247, NULL, NULL, NULL, '2025-07-16 18:09:10.265770', '2025-07-16 18:09:10.149836', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'创建逝者信息失败\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (248, NULL, NULL, NULL, '2025-07-16 18:11:39.106564', '2025-07-16 18:11:39.031026', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (249, NULL, NULL, '1', '2025-07-18 08:10:03.770770', '2025-07-18 08:10:02.476066', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (250, NULL, NULL, NULL, '2025-07-18 15:20:17.135869', '2025-07-18 15:20:17.072834', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (251, NULL, NULL, NULL, '2025-07-18 15:20:41.755070', '2025-07-18 15:20:41.745006', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (252, NULL, NULL, NULL, '2025-07-18 15:21:57.008445', '2025-07-18 15:21:56.968467', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (253, NULL, NULL, NULL, '2025-07-18 15:22:47.244996', '2025-07-18 15:22:46.086756', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (254, NULL, NULL, NULL, '2025-07-18 15:23:28.140167', '2025-07-18 15:23:28.079200', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号2\', \'diEx2\': \'逝者姓名2\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (255, NULL, NULL, NULL, '2025-07-18 15:24:20.560422', '2025-07-18 15:24:20.508507', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号2\', \'diEx2\': \'逝者姓名2\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (256, NULL, NULL, NULL, '2025-07-18 15:24:27.748220', '2025-07-18 15:24:27.668049', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号2\', \'diEx2\': \'逝者姓名2\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (257, NULL, NULL, '1', '2025-07-18 15:25:51.764458', '2025-07-18 15:25:51.729660', '接口白名单', '/api/system/api_white_list/34/', '{\'id\': 34, \'modifier_name\': \'超级管理员\', \'creator_name\': \'超级管理员\', \'create_datetime\': \'2025-07-10 17:08:34\', \'update_datetime\': \'2025-07-10 17:08:34\', \'description\': None, \'modifier\': \'1\', \'dept_belong_id\': \'1\', \'url\': \'/api/newstart/dieinfo/\', \'method\': 0, \'enable_datasource\': False, \'creator\': 1}', 'PUT', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (258, NULL, NULL, NULL, '2025-07-18 15:27:20.759581', '2025-07-18 15:27:20.709288', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (259, NULL, NULL, NULL, '2025-07-18 15:28:46.321252', '2025-07-18 15:28:46.291411', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': [ErrorDetail(string=\"更新逝者信息失败: \'Departed\' object is not subscriptable\", code=\'invalid\')]}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (260, NULL, NULL, NULL, '2025-07-18 15:31:39.059914', '2025-07-18 15:31:39.031069', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': [ErrorDetail(string=\"更新逝者信息失败: \'Departed\' object is not subscriptable\", code=\'invalid\')]}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (261, NULL, NULL, NULL, '2025-07-18 15:33:03.475673', '2025-07-18 15:33:03.404712', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': [ErrorDetail(string=\"更新逝者信息失败: \'Departed\' object is not subscriptable\", code=\'invalid\')]}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (262, NULL, NULL, NULL, '2025-07-18 15:34:06.887794', '2025-07-18 15:34:06.796192', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (263, NULL, NULL, NULL, '2025-07-18 15:34:46.748374', '2025-07-18 15:34:46.669543', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (264, NULL, NULL, NULL, '2025-07-18 15:35:08.032383', '2025-07-18 15:35:07.957426', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (265, NULL, NULL, NULL, '2025-07-18 15:35:55.174301', '2025-07-18 15:35:55.095398', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (266, NULL, NULL, NULL, '2025-07-18 15:37:05.166526', '2025-07-18 15:37:05.065998', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (267, NULL, NULL, NULL, '2025-07-18 15:38:35.213430', '2025-07-18 15:38:35.144362', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (268, NULL, NULL, NULL, '2025-07-18 15:39:12.144471', '2025-07-18 15:39:12.075272', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (269, NULL, NULL, NULL, '2025-07-18 15:39:22.294827', '2025-07-18 15:39:22.189425', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (270, NULL, NULL, NULL, '2025-07-18 15:39:38.856603', '2025-07-18 15:39:38.797557', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (271, NULL, NULL, NULL, '2025-07-18 15:40:38.338135', '2025-07-18 15:40:38.212929', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (272, NULL, NULL, NULL, '2025-07-18 15:41:09.266650', '2025-07-18 15:41:08.629605', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (273, NULL, NULL, NULL, '2025-07-18 15:41:34.968224', '2025-07-18 15:41:34.899261', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (274, NULL, NULL, NULL, '2025-07-18 15:47:04.544164', '2025-07-18 15:47:04.484025', '逝者信息表', '/api/newstart/dieinfo/64/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \'`update()` did not return an object instance.\'}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (275, NULL, NULL, NULL, '2025-07-18 15:48:25.374424', '2025-07-18 15:48:25.306639', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (276, NULL, NULL, NULL, '2025-07-18 15:48:48.863752', '2025-07-18 15:48:48.831251', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号1\', \'diEx2\': \'逝者姓名1\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名1\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (277, NULL, NULL, NULL, '2025-07-18 15:49:40.822349', '2025-07-18 15:49:40.760384', '逝者信息表', '/api/newstart/dieinfo/65/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (278, NULL, NULL, NULL, '2025-07-18 15:50:02.930474', '2025-07-18 15:50:02.879324', '逝者信息表', '/api/newstart/dieinfo/65/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (279, NULL, NULL, NULL, '2025-07-18 15:56:24.025093', '2025-07-18 15:56:23.954307', '逝者信息表', '/api/newstart/dieinfo/65/', '{\'dieInfo\': {\'diEx1\': \'逝者编号11121212122\', \'diEx2\': \'逝者姓名51\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (280, NULL, NULL, '1', '2025-07-19 08:23:19.077191', '2025-07-19 08:23:17.508559', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\', \'captchaKey\': \'\', \'captchaImgBase\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (281, NULL, NULL, '1', '2025-07-19 08:25:02.110153', '2025-07-19 08:25:01.009870', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (282, NULL, NULL, '1', '2025-07-19 13:13:52.800550', '2025-07-19 13:13:52.771803', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/newstart/refrigerated/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (283, NULL, NULL, '1', '2025-07-19 13:14:29.573417', '2025-07-19 13:14:29.556429', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/newstart/refrigerated/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (284, NULL, NULL, '1', '2025-07-21 13:08:08.944038', '2025-07-21 13:08:05.244543', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (285, NULL, NULL, NULL, '2025-07-22 15:01:14.100475', '2025-07-22 15:01:14.032235', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号551\', \'diEx2\': \'逝者姓名\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'家属姓名551\'}}', 'POST', NULL, '127.0.0.1', 'Other', '401', 'Other', '{\'code\': 401, \'msg\': {\'detail\': ErrorDetail(string=\'Given token not valid for any token type\', code=\'token_not_valid\'), \'code\': ErrorDetail(string=\'token_not_valid\', code=\'token_not_valid\'), \'messages\': [{\'token_class\': ErrorDetail(string=\'AccessToken\', code=\'token_not_valid\'), \'token_type\': ErrorDetail(string=\'access\', code=\'token_not_valid\'), \'message\': ErrorDetail(string=\'Token is invalid or expired\', code=\'token_not_valid\')}]}}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (286, NULL, NULL, NULL, '2025-07-22 15:01:22.487244', '2025-07-22 15:01:20.750577', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (287, NULL, NULL, NULL, '2025-07-22 15:06:41.825736', '2025-07-22 15:06:41.678928', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号551\', \'diEx2\': \'逝者姓名\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'家属姓名551\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (288, NULL, NULL, NULL, '2025-07-22 15:08:04.453483', '2025-07-22 15:08:04.398514', '逝者信息表', '/api/newstart/dieinfo/', '{\'dieInfo\': {\'diEx1\': \'逝者编号551\', \'diEx2\': \'逝者姓名\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'家属姓名551\'}}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (289, NULL, NULL, NULL, '2025-07-22 16:02:39.531688', '2025-07-22 16:02:39.374763', '逝者信息表', '/api/newstart/dieinfo/67/', '{\'dieInfo\': {\'diEx1\': \'逝者编号2\', \'diEx2\': \'逝者姓名2\', \'ddmEx16\': \'冷藏\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (290, NULL, NULL, NULL, '2025-07-22 16:26:54.308559', '2025-07-22 16:26:54.243176', '逝者信息表', '/api/newstart/dieinfo/67/', '{\'dieInfo\': {\'diEx1\': \'逝者编号2\', \'diEx2\': \'逝者姓名2\', \'ddmEx16\': \'火化\'}, \'dieRelation\': {\'dciEx1\': \'亲属姓名2\'}}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (291, NULL, NULL, NULL, '2025-07-23 10:39:40.069740', '2025-07-23 10:39:40.029119', '登录模块', '/api/login/', '{\'username\': \'superamdin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '4000', 'Windows 10', '{\'code\': 4000, \'msg\': \'您登录的账号不存在\'}', 0, NULL);
INSERT INTO `st_system_operation_log` VALUES (292, NULL, NULL, '1', '2025-07-23 10:39:56.095693', '2025-07-23 10:39:54.924666', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (293, NULL, NULL, '1', '2025-07-23 10:45:37.749625', '2025-07-23 10:45:36.734221', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (294, NULL, NULL, '1', '2025-07-23 10:48:04.605929', '2025-07-23 10:48:04.561952', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/newstart/cremation/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (295, NULL, NULL, '1', '2025-07-23 10:48:35.888745', '2025-07-23 10:48:35.860873', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/newstart/cremation/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (296, NULL, NULL, NULL, '2025-07-23 15:39:33.763144', '2025-07-23 15:39:32.295348', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (297, NULL, NULL, NULL, '2025-07-23 15:46:30.398594', '2025-07-23 15:46:30.363150', '火化记录表', '/api/newstart/cremation/2/', '{\'dfiEx3\': 2}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (298, NULL, NULL, '1', '2025-07-25 16:29:50.984118', '2025-07-25 16:29:49.639637', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (299, NULL, NULL, NULL, '2025-08-01 14:13:47.820040', '2025-08-01 14:13:46.694855', '登录模块', '/api/login/', '{\'username\': \'小丁\', \'password\': \'******\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (300, NULL, NULL, '1', '2025-08-01 14:25:26.776202', '2025-08-01 14:25:25.788764', '登录模块', '/api/login/', '{\'username\': \'superadmin\', \'password\': \'********************************\', \'captcha\': \'\'}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'请求成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (301, NULL, NULL, '1', '2025-08-01 14:55:41.744636', '2025-08-01 14:55:41.723648', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/newstart/reservation/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (302, NULL, NULL, '1', '2025-08-01 14:59:53.410566', '2025-08-01 14:59:53.389939', '接口白名单', '/api/system/api_white_list/', '{\'method\': 1, \'url\': \'/api/newstart/reservation/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (303, NULL, NULL, NULL, '2025-08-01 15:18:02.220279', '2025-08-01 15:18:02.197027', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 0, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (304, NULL, NULL, NULL, '2025-08-01 15:22:52.512745', '2025-08-01 15:22:52.481257', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 0, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (305, NULL, NULL, NULL, '2025-08-01 15:26:26.640331', '2025-08-01 15:26:26.595354', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (306, NULL, NULL, NULL, '2025-08-01 15:28:29.310035', '2025-08-01 15:28:29.253067', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (307, NULL, NULL, NULL, '2025-08-01 15:32:48.801950', '2025-08-01 15:32:48.746756', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'ReservationModel\' object is not subscriptable\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (308, NULL, NULL, NULL, '2025-08-01 15:33:22.075150', '2025-08-01 15:33:22.012186', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'int\' object has no attribute \'get_daEx9_display\'\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (309, NULL, NULL, NULL, '2025-08-01 15:35:15.398422', '2025-08-01 15:35:15.343454', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (310, NULL, NULL, NULL, '2025-08-01 15:36:11.564333', '2025-08-01 15:36:11.476356', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '4000', 'Other', '{\'code\': 4000, \'msg\': \"\'ReservationModel\' object does not support item assignment\"}', 0, 4);
INSERT INTO `st_system_operation_log` VALUES (311, NULL, NULL, NULL, '2025-08-01 15:36:40.249550', '2025-08-01 15:36:40.195580', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (312, NULL, NULL, '1', '2025-08-01 18:23:07.345767', '2025-08-01 18:23:07.267530', '接口白名单', '/api/system/api_white_list/', '{\'method\': 2, \'url\': \'/api/newstart/reservation/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (313, NULL, NULL, NULL, '2025-08-01 18:24:14.344389', '2025-08-01 18:24:14.314422', '预约表', '/api/newstart/reservation/1/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'PUT', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'更新成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (314, NULL, NULL, '1', '2025-08-01 18:25:12.359685', '2025-08-01 18:25:12.336664', '接口白名单', '/api/system/api_white_list/', '{\'method\': 3, \'url\': \'/api/newstart/reservation/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (315, NULL, NULL, NULL, '2025-08-01 18:25:46.757927', '2025-08-01 18:25:46.738936', '预约表', '/api/newstart/reservation/1/', '{}', 'DELETE', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'删除成功\'}', 1, 4);
INSERT INTO `st_system_operation_log` VALUES (316, NULL, NULL, '1', '2025-08-01 18:27:28.088414', '2025-08-01 18:27:28.067429', '接口白名单', '/api/system/api_white_list/', '{\'method\': 0, \'url\': \'/api/newstart/reservation/{id}/\', \'enable_datasource\': False}', 'POST', NULL, '127.0.0.1', 'Chrome 138.0.0', '2000', 'Windows 10', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 1);
INSERT INTO `st_system_operation_log` VALUES (317, NULL, NULL, NULL, '2025-08-01 18:28:28.713201', '2025-08-01 18:28:28.691508', '预约表', '/api/newstart/reservation/', '{\'daEx1\': \'联系人\', \'daEx2\': \'联系电话\', \'daEx3\': \'与逝者关系\', \'daEx4\': \'经办人姓名\', \'daEx5\': \'省份\', \'daEx6\': \'城市\', \'daEx7\': \'县区\', \'daEx8\': \'逝者姓名\', \'daEx9\': 1, \'daEx10\': \'死亡时间\', \'daEx11\': \'死亡原因\', \'daEx12\': \'预约火化时间\'}', 'POST', NULL, '127.0.0.1', 'Other', '2000', 'Other', '{\'code\': 2000, \'msg\': \'新增成功\'}', 1, 4);

-- ----------------------------
-- Table structure for st_system_post
-- ----------------------------
DROP TABLE IF EXISTS `st_system_post`;
CREATE TABLE `st_system_post`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `status` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_system_post_creator_id_9fb77042`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_post
-- ----------------------------

-- ----------------------------
-- Table structure for st_system_role
-- ----------------------------
DROP TABLE IF EXISTS `st_system_role`;
CREATE TABLE `st_system_role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `key`(`key` ASC) USING BTREE,
  INDEX `st_system_role_creator_id_5d72a805`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_role
-- ----------------------------
INSERT INTO `st_system_role` VALUES (1, NULL, NULL, NULL, '2025-06-20 13:15:36.458087', '2025-06-20 13:15:36.458087', '管理员', 'admin', 1, 1, NULL);
INSERT INTO `st_system_role` VALUES (2, NULL, NULL, NULL, '2025-06-20 13:15:36.465096', '2025-06-20 13:15:36.465096', '用户', 'public', 2, 1, NULL);

-- ----------------------------
-- Table structure for st_system_users
-- ----------------------------
DROP TABLE IF EXISTS `st_system_users`;
CREATE TABLE `st_system_users`  (
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` int NULL DEFAULT NULL,
  `user_type` int NULL DEFAULT NULL,
  `login_error_count` int NOT NULL,
  `pwd_change_count` int NOT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  `dept_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  INDEX `st_system_users_creator_id_3ae1ae32`(`creator_id` ASC) USING BTREE,
  INDEX `st_system_users_dept_id_a419edce`(`dept_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_users
-- ----------------------------
INSERT INTO `st_system_users` VALUES ('pbkdf2_sha256$600000$UH1dlj5eZNjtgftaoKECBG$JR3DXpynYBRWhnFYvqRwAsT9VNm3tsc94NTcb9jqYKo=', NULL, 1, '', '', 1, 1, '2025-06-20 13:15:36.486067', 1, NULL, '1', NULL, '2025-08-01 14:25:26.754653', '2025-06-20 13:15:36.487067', 'superadmin', 'dvadmin@django-vue-admin.com', '13333333333', 'media/files\\5\\9\\595974f1747478954a2c4b628997806e.jpeg', '超级管理员', 0, 0, 0, 1, NULL, 1);
INSERT INTO `st_system_users` VALUES ('pbkdf2_sha256$260000$g17x5wlSiW1FZAh1Eudchw$ZeSAqj3Xak0io8v/pmPW0BX9EX5R2zFXDwbbD68oBFk=', NULL, 0, '', '', 1, 1, '2025-06-20 13:15:36.510157', 2, NULL, NULL, NULL, '2025-06-20 13:15:36.519565', '2025-06-20 13:15:36.510157', 'admin', 'dvadmin@django-vue-admin.com', '18888888888', '', '管理员', 1, 0, 0, 0, NULL, 1);
INSERT INTO `st_system_users` VALUES ('pbkdf2_sha256$260000$g17x5wlSiW1FZAh1Eudchw$ZeSAqj3Xak0io8v/pmPW0BX9EX5R2zFXDwbbD68oBFk=', NULL, 0, '', '', 1, 1, '2025-06-20 13:15:36.527992', 3, NULL, NULL, NULL, '2025-06-20 13:15:36.539990', '2025-06-20 13:15:36.527992', 'test', 'dvadmin@django-vue-admin.com', '18888888888', '', '测试人员', 1, 0, 0, 0, NULL, 3);
INSERT INTO `st_system_users` VALUES ('pbkdf2_sha256$600000$6ihXHmQQaEKT33j73pWSss$+2R6FdkNVS0ZaLf45Ewn3xXO3q/HyOe3aAHhM37B3UY=', NULL, 0, '', '', 0, 1, '2025-06-20 13:22:33.976250', 4, NULL, NULL, NULL, '2025-08-01 14:13:47.766071', '2025-06-20 13:22:34.896812', '小丁', '', NULL, NULL, '', 0, 1, 0, 0, NULL, NULL);

-- ----------------------------
-- Table structure for st_system_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `st_system_users_groups`;
CREATE TABLE `st_system_users_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_system_users_groups_users_id_group_id_8505cae1_uniq`(`users_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `st_system_users_groups_group_id_4db95a7f_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `st_system_users_groups_group_id_4db95a7f_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_system_users_groups_users_id_7b854dab_fk_st_system_users_id` FOREIGN KEY (`users_id`) REFERENCES `st_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_users_groups
-- ----------------------------

-- ----------------------------
-- Table structure for st_system_users_post
-- ----------------------------
DROP TABLE IF EXISTS `st_system_users_post`;
CREATE TABLE `st_system_users_post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_system_users_post_users_id_post_id_cf3c917f_uniq`(`users_id` ASC, `post_id` ASC) USING BTREE,
  INDEX `st_system_users_post_users_id_9846d04b`(`users_id` ASC) USING BTREE,
  INDEX `st_system_users_post_post_id_fd52903e`(`post_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_users_post
-- ----------------------------

-- ----------------------------
-- Table structure for st_system_users_role
-- ----------------------------
DROP TABLE IF EXISTS `st_system_users_role`;
CREATE TABLE `st_system_users_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_system_users_role_users_id_role_id_a2962299_uniq`(`users_id` ASC, `role_id` ASC) USING BTREE,
  INDEX `st_system_users_role_users_id_485de676`(`users_id` ASC) USING BTREE,
  INDEX `st_system_users_role_role_id_ac6c3ab1`(`role_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_users_role
-- ----------------------------
INSERT INTO `st_system_users_role` VALUES (1, 1, 1);
INSERT INTO `st_system_users_role` VALUES (2, 3, 2);

-- ----------------------------
-- Table structure for st_system_users_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `st_system_users_user_permissions`;
CREATE TABLE `st_system_users_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `users_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `st_system_users_user_per_users_id_permission_id_e33d00e3_uniq`(`users_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `st_system_users_user_permission_id_16fc4360_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `st_system_users_user_permission_id_16fc4360_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `st_system_users_user_users_id_aea42d0a_fk_st_system` FOREIGN KEY (`users_id`) REFERENCES `st_system_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_system_users_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for st_test
-- ----------------------------
DROP TABLE IF EXISTS `st_test`;
CREATE TABLE `st_test`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `dept_belong_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `update_datetime` datetime(6) NULL DEFAULT NULL,
  `create_datetime` datetime(6) NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NULL DEFAULT NULL,
  `gender` smallint NULL DEFAULT NULL,
  `creator_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `st_test_creator_id_8570d622`(`creator_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_test
-- ----------------------------
INSERT INTO `st_test` VALUES (1, NULL, '4', NULL, '2025-07-05 10:28:09.866755', '2025-07-05 10:28:09.866755', '小明', '15000000000', 'media/files\\6\\8\\68e6c9ad1a38b7d2e8c723966363d018.png', 18, 1, 4);
INSERT INTO `st_test` VALUES (2, NULL, '4', NULL, '2025-07-05 10:31:19.524243', '2025-07-05 10:31:19.524243', '小明', '15000000000', 'media/files\\6\\8\\68e6c9ad1a38b7d2e8c723966363d018.png', 18, 1, 4);

SET FOREIGN_KEY_CHECKS = 1;
