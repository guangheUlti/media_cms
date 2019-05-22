SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for sys_data_source
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_source`;
CREATE TABLE `sys_data_source` (
  `id` varchar(36) NOT NULL,
  `db_key` varchar(50) NOT NULL COMMENT '索引关键字',
  `description` varchar(50) NOT NULL COMMENT '描述',
  `driver_class` varchar(50) NOT NULL COMMENT '驱动',
  `url` varchar(200) NOT NULL COMMENT 'URL',
  `db_user` varchar(50) NOT NULL COMMENT '帐号',
  `db_password` varchar(50) DEFAULT NULL COMMENT '密码',
  `db_type` varchar(50) DEFAULT NULL COMMENT '数据库类型',
  `db_name` varchar(50) DEFAULT NULL COMMENT '数据库名称',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_data_source
-- ----------------------------
INSERT INTO `sys_data_source` VALUES ('402880e74e064fc5014e0652f72b0001', 'neiwangbaogong', '微信运营数据库', 'com.mysql.jdbc.Driver', 'jdbc:mysql://localhost:3306/attendance?useUnicode=true&amp;amp;amp;amp;amp;characterEncoding=UTF-8', 'root', '你的数据库密码', 'mysql', 'attendance', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2017-08-03 08:40:26', null, '0');
INSERT INTO `sys_data_source` VALUES ('8a8aada9486347c001486401180a0003', 'PMS', 'sap db', 'oracle.jdbc.driver.OracleDriver', 'jdbc:oracle:thin:@localhost:1521:oral', 'PMS', 'tz', 'oracle', 'PMS', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `gid` varchar(32) DEFAULT NULL COMMENT '分组ID',
  `label` varchar(100) DEFAULT NULL COMMENT '键值键',
  `value` varchar(100) DEFAULT NULL COMMENT '值',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `remarks` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_dict_groupid_key` (`gid`),
  CONSTRAINT `sys_dict_groupid_key` FOREIGN KEY (`gid`) REFERENCES `sys_dict_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='数据字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('2a6cb5048f204a6d99f5ea6e8cf450bf', '0bf0a5f4378748c1b6b759aea7da9c72', '修改', 'update', '2', '修改', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:55:04', null, null, '0');
INSERT INTO `sys_dict` VALUES ('2abd99f7a44e4ef0937b97109b31db87', '9f28ef405c63412f9ef6524edb4adc68', '继续执行', '1', '1', '继续执行', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-17 15:37:58', null, null, '0');
INSERT INTO `sys_dict` VALUES ('30bf1683c3a54772bbc75193d8cc48ab', '0bf0a5f4378748c1b6b759aea7da9c72', '删除', 'delete', '5', '删除', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:55:29', null, null, '0');
INSERT INTO `sys_dict` VALUES ('39f8239fa07a49dda0f5427d750a8d9e', 'c8da4e4534924bb19cd106fbde174d4e', '一年授权', '1', '1', '一年授权', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 11:18:36', null, null, '0');
INSERT INTO `sys_dict` VALUES ('3e285e6650cb47f88f452e156b5bf903', '0bf0a5f4378748c1b6b759aea7da9c72', '导出', 'export', '7', '导出', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:56:28', null, null, '0');
INSERT INTO `sys_dict` VALUES ('40281e815ced1f27015ced2f83bc000b', '40281e815ced1f27015ced2be5330003', '男', '1', '1', '1', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40281e815cef4f99015cef6f7d070005', '40281e815ced1f27015ced2be5330003', '女', '2', '1', '女', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85a20b609015a20c422e90003', '40288ab85a20b609015a20c3f7bf0002', '是', '1', '1', '1', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85a5eecc6015a5eede8720000', '40288ab85a20b609015a20c3f7bf0002', '否', '0', '2', '否', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85bf1549e015bf175152a0001', '40288ab85bf1549e015bf17370ff0000', '在线', 'on_line', '1', '在线', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85bf1549e015bf17559ac0002', '40288ab85bf1549e015bf17370ff0000', '隐身', 'hidden', '2', '隐身', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85bf1549e015bf17590820003', '40288ab85bf1549e015bf17370ff0000', '强制退出', 'force_logout', '3', '强制退出', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85c8593cd015c859b70010011', '40288ab85c8593cd015c859b1fcf0010', '验证码', '1', '1', '验证码', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85c8593cd015c859b8ff50012', '40288ab85c8593cd015c859b1fcf0010', '通知', '2', '2', '通知', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('40288ab85c86382b015c863993a30002', '40288ab85c8593cd015c859b1fcf0010', '其他', '99', '99', '其他', null, null, null, null, '0');
INSERT INTO `sys_dict` VALUES ('406ee9ed59bc4810b0feb2aa16617706', '4ce6a66f28be454ba614339d0b018d4e', '目录', '1', '1', '目录', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 14:53:35', null, null, '0');
INSERT INTO `sys_dict` VALUES ('4335d86dce584400b739a9d62ddcb3f7', '79d26e50f69a45479bdac723beea4811', '已付款', '2', '2', '已付款', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 16:44:23', null, null, '0');
INSERT INTO `sys_dict` VALUES ('4d13a0afc66a41c5a892b677ecf51e5d', 'f8a0d22e387445b29f6c238e252c7068', 'JeeWeb 论坛', 'JeeWeb 论坛', '2', 'JeeWeb 论坛', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-01 15:23:09', null, null, '0');
INSERT INTO `sys_dict` VALUES ('4e23f0cd2a154d62bdd9417610ca2679', '0bf0a5f4378748c1b6b759aea7da9c72', '新增', 'insert', '1', '新增', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:54:48', null, null, '0');
INSERT INTO `sys_dict` VALUES ('5b905a49c182491988865986e4cc48e3', '9f28ef405c63412f9ef6524edb4adc68', '放弃执行', '3', '3', '放弃执行', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-17 15:38:20', null, null, '0');
INSERT INTO `sys_dict` VALUES ('6aeb216b950740c9ba61ba2994b4ce98', '9f28ef405c63412f9ef6524edb4adc68', '一次执行', '2', '2', '一次执行', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-17 15:38:10', null, null, '0');
INSERT INTO `sys_dict` VALUES ('72a55df5480c48b79e095eb5c6a4728f', 'd8fd027d0743468c828d7d068239d483', '成功', '1', '1', '成功', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-28 13:15:31', null, null, '0');
INSERT INTO `sys_dict` VALUES ('839273eee78947759bd8a980fcf77e99', '0bf0a5f4378748c1b6b759aea7da9c72', '查询', 'select', '3', '查询', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:55:13', null, null, '0');
INSERT INTO `sys_dict` VALUES ('8aa5b728b8c94bdcba0d54d4ba3ad8a1', '0a44514f07c64f2d867b5d88a879c795', '链接', 'view', '2', '链接', '4028ea815a3d2a8c015a3d2f8d2a0002', '2017-10-23 22:27:54', '4028ea815a3d2a8c015a3d2f8d2a0002', '2017-10-23 23:28:26', '0');
INSERT INTO `sys_dict` VALUES ('90f97d607fb745019c88e126b989fa8d', '7a4ed165f128484787a119179b7c18fd', '普通类', '2', '2', '普通类', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-20 15:00:56', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-17 17:57:04', '0');
INSERT INTO `sys_dict` VALUES ('91beec564eb04a3c9808f08c7a7aa086', '0a44514f07c64f2d867b5d88a879c795', '消息', 'click', '1', '1', '4028ea815a3d2a8c015a3d2f8d2a0002', '2017-10-23 22:27:32', '4028ea815a3d2a8c015a3d2f8d2a0002', '2017-10-23 23:28:34', '0');
INSERT INTO `sys_dict` VALUES ('95fe7c02adf345c68303c8da34e7cef4', '4ce6a66f28be454ba614339d0b018d4e', '菜单', '2', '2', '2', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 14:53:42', null, null, '0');
INSERT INTO `sys_dict` VALUES ('973bdbced7ef467fa9d21d65631fe8fc', '79d26e50f69a45479bdac723beea4811', '未付款', '1', '1', '未付款', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 16:44:06', null, null, '0');
INSERT INTO `sys_dict` VALUES ('a94650c480914ad69f4820b01086a8be', '7a4ed165f128484787a119179b7c18fd', 'SpringBean', '1', '1', 'SpringBean', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-20 15:00:31', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 12:36:33', '0');
INSERT INTO `sys_dict` VALUES ('aa6aeaf0fcaa42098f039b5e15494ebb', '0bf0a5f4378748c1b6b759aea7da9c72', '其他', 'other', '6', '其他', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:55:59', null, null, '0');
INSERT INTO `sys_dict` VALUES ('b568561ffaa5459e8c79fd71d58eede2', '0bf0a5f4378748c1b6b759aea7da9c72', '导入', 'import', '8', '导入', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:56:44', null, null, '0');
INSERT INTO `sys_dict` VALUES ('c44a4bdda43c4af1adb95ad7627f658e', '79d26e50f69a45479bdac723beea4811', '交易成功', '3', '3', '交易成功', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 16:44:40', null, null, '0');
INSERT INTO `sys_dict` VALUES ('de1ad2226ae04bb98f6db78ff9e7fee0', 'd8fd027d0743468c828d7d068239d483', '失败', '-1', '1', '失败', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-28 13:15:39', null, null, '0');
INSERT INTO `sys_dict` VALUES ('e64158128fd1400fb9f834c7a96a1046', 'd8fd027d0743468c828d7d068239d483', '退出', '0', '0', '退出', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-28 13:15:54', null, null, '0');
INSERT INTO `sys_dict` VALUES ('fb30cb9b10ed4a038ccc7d6137f68b3b', 'c8da4e4534924bb19cd106fbde174d4e', '永久授权', '2', '2', '永久授权', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 11:18:47', null, null, '0');
INSERT INTO `sys_dict` VALUES ('fbc892407e714426a62908397fc8512f', '4ce6a66f28be454ba614339d0b018d4e', '按钮', '3', '3', '按钮', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 14:53:51', null, null, '0');
INSERT INTO `sys_dict` VALUES ('fdd9f7e252fe46fb9dd99a46e292793b', '79d26e50f69a45479bdac723beea4811', '交易关闭', '4', '4', '交易关闭', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 16:44:49', null, null, '0');

-- ----------------------------
-- Table structure for sys_dict_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_group`;
CREATE TABLE `sys_dict_group` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '分组名称',
  `code` varchar(100) DEFAULT NULL COMMENT '分组编码',
  `remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典分组';

-- ----------------------------
-- Records of sys_dict_group
-- ----------------------------
INSERT INTO `sys_dict_group` VALUES ('0a44514f07c64f2d867b5d88a879c795', '菜单动作行为', 'mpmenutype', '菜单动作行为', '4028ea815a3d2a8c015a3d2f8d2a0002', '2017-10-23 22:27:02', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-03-23 09:45:44', '0');
INSERT INTO `sys_dict_group` VALUES ('0bf0a5f4378748c1b6b759aea7da9c72', '日志类型', 'logType', '日志类型', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:54:01', null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('40281e815ced1f27015ced2be5330003', '性别', 'sex', '性别', null, null, null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('40288ab85a20b609015a20c3f7bf0002', '是否', 'sf', '是否', null, null, null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('40288ab85bf1549e015bf17370ff0000', '用户登陆状态', 'onlinestatus', '', null, null, null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('40288ab85c8593cd015c859b1fcf0010', '短信业务类型', 'businesstype', '短信业务类型', null, null, null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('4ce6a66f28be454ba614339d0b018d4e', '菜单类型', 'menutype', 'menutype', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 14:53:19', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 14:54:27', '0');
INSERT INTO `sys_dict_group` VALUES ('79d26e50f69a45479bdac723beea4811', '订单编码', 'productOrderStatus', '订单编码', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 16:43:37', null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('7a4ed165f128484787a119179b7c18fd', '任务加载方式', 'loadway', '任务加载方式', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-20 15:00:01', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-27 16:46:02', '0');
INSERT INTO `sys_dict_group` VALUES ('9f28ef405c63412f9ef6524edb4adc68', '执行策略', 'misfirePolicy', '执行策略', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-17 15:37:42', null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('c8da4e4534924bb19cd106fbde174d4e', '授权期限', 'authorizationPeriod', '授权期限', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 11:16:48', null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('d8fd027d0743468c828d7d068239d483', '登陆状态', 'loginstatus', '登陆状态', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-28 13:15:00', null, null, '0');
INSERT INTO `sys_dict_group` VALUES ('f8a0d22e387445b29f6c238e252c7068', '项目类型', 'projecttype', 'projecttype', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-01 15:21:57', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-19 11:09:05', '0');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `id` varchar(32) NOT NULL COMMENT '访问ID',
  `login_name` varchar(50) DEFAULT '' COMMENT '登录账号',
  `login_ip` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(2) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `type` varchar(50) DEFAULT NULL COMMENT '资源类型',
  `url` varchar(200) DEFAULT NULL COMMENT '点击后前往的地址',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父编号',
  `parent_ids` varchar(1000) DEFAULT NULL COMMENT '父编号列表',
  `permission` varchar(100) DEFAULT NULL COMMENT '权限字符串',
  `enabled` tinyint(1) DEFAULT '0' COMMENT '是否显示',
  `sort` int(5) DEFAULT NULL COMMENT '排序',
  `menu_icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `remarks` varchar(255) DEFAULT NULL COMMENT '摘要',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_resource_parent_id` (`parent_id`),
  KEY `idx_sys_resource_parent_ids` (`parent_ids`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('004ef02eff6347de8b054834e37e7084', '查询', '3', null, '40288ab85a5eecc6015a5ef9f6160005', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef9f6160005/', 'sys:menu:list', '1', null, '', '查询', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:49:49', null, null, '0');
INSERT INTO `sys_menu` VALUES ('05e3cd68c0e44f288b5605577c54b696', '登陆日志', '2', '/admin/sys/login/log', '4028ea815a701416015a7075b4f9001f', '4028ea815a701416015a7075b4f9001f/', 'sys:login:log', '1', '3', 'fa-map-o', '登陆日志', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-28 13:09:31', null, null, '0');
INSERT INTO `sys_menu` VALUES ('0f6ed028011a4e06a90af8edfa0c9dbb', '修改', '3', null, '40288ab85a5eecc6015a5ef9f6160005', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef9f6160005/', 'sys:menu:update', '1', '3', '', '修改', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:51:35', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:15:21', '0');
INSERT INTO `sys_menu` VALUES ('1232ea9d3e374e89aef6ec3a1c693da8', '开发文档', '2', 'http://doc.jeeweb.cn/', 'e5a287017839419d9dac884d78574153', 'e5a287017839419d9dac884d78574153/', '', '1', '1', 'fa-info', '开发文档', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 15:08:40', null, null, '0');
INSERT INTO `sys_menu` VALUES ('320c2e390d25488eb18fe75261795907', '短信管理', '1', null, null, null, '', '1', '5', 'fa-trademark', '短信管理', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-14 10:07:17', null, null, '0');
INSERT INTO `sys_menu` VALUES ('34e23174debf447a86ad322c466b1020', '删除', '3', null, '40288ab85a5eecc6015a5ef9f6160005', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef9f6160005/', 'sys:menu:delete', '1', null, '', '删除', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:51:52', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:15:37', '0');
INSERT INTO `sys_menu` VALUES ('35ff47636f044375b54b6be644996c38', '添加', '3', null, '40288ab85a5eecc6015a5ef95c700004', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef95c700004/', 'sys:role:add', '1', null, '', '添加', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:58:20', null, null, '0');
INSERT INTO `sys_menu` VALUES ('3f9752eb9b7d481a85cdb3c32c442025', '短信日志', '2', '/admin/sms/sendlog', '320c2e390d25488eb18fe75261795907', '320c2e390d25488eb18fe75261795907/', 'sms:sendlog', '1', '2', 'fa-battery-0', '短信日志', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-14 10:09:23', null, null, '0');
INSERT INTO `sys_menu` VALUES ('40281e815beda90f015bedcf7102000f', '计划任务', '2', '/admin/task/schedule/job', '40288ab85cf8276b015cf82debcb005b', '40288ab85cf8276b015cf82debcb005b/', 'task:schedule:job', '1', '0', 'fa-amazon', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-17 15:34:49', '0');
INSERT INTO `sys_menu` VALUES ('40281e815c54d147015c54daf16c0001', '操作日志', '2', '/admin/sys/operation/log', '4028ea815a701416015a7075b4f9001f', '4028ea815a701416015a7075b4f9001f/', 'sys:operation:log', '1', '6', 'fa-book', '操作日志', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-30 23:29:31', '0');
INSERT INTO `sys_menu` VALUES ('40281e815c912406015c9149f7b80044', '通知公告', '1', null, null, null, '', '1', '5', 'fa-television', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 15:18:08', '0');
INSERT INTO `sys_menu` VALUES ('40281e815c912406015c914a1bc30045', '通知公告', '2', '/admin/oa/oanotification', '40281e815c912406015c9149f7b80044', '40281e815c912406015c9149f7b80044/', 'oa:oanotification', '1', '1', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85a5eecc6015a5ef22ad80001', '系统设置', '1', null, null, null, '', '1', '2', 'fa-gear', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 15:18:21', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85a5eecc6015a5ef6ce870002', '用户管理', '2', '/admin/sys/user', '40288ab85a5eecc6015a5ef22ad80001', '40288ab85a5eecc6015a5ef22ad80001/', 'sys:user:view', '1', '1', 'fa-user', 'sdfdsfsdfsdfsdfsdfsf', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:24:28', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85a5eecc6015a5ef8f2890003', '部门管理', '2', '/admin/sys/organization', '40288ab85a5eecc6015a5ef22ad80001', '40288ab85a5eecc6015a5ef22ad80001/', 'sys:organization', '1', '2', 'fa-balance-scale', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:07:59', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85a5eecc6015a5ef95c700004', '角色管理', '2', '/admin/sys/role', '40288ab85a5eecc6015a5ef22ad80001', '40288ab85a5eecc6015a5ef22ad80001/', 'sys:role:view', '1', '3', 'fa-users', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:24:05', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85a5eecc6015a5ef9f6160005', '菜单管理', '2', '/admin/sys/menu', '40288ab85a5eecc6015a5ef22ad80001', '40288ab85a5eecc6015a5ef22ad80001/', 'sys:menu:view', '1', '4', 'fa-align-justify', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:26:34', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85a5eecc6015a5efaa75d0006', '数据字典', '2', '/admin/sys/dict/group', '40288ab85a5eecc6015a5ef22ad80001', '40288ab85a5eecc6015a5ef22ad80001/', 'sys:dict', '1', '5', 'fa-yelp', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:25:41', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85b604adf015b605023a70000', '在线用户', '2', '/admin/sys/online', '4028ea815a701416015a7075b4f9001f', '4028ea815a701416015a7075b4f9001f/', 'sys:online:list', '1', '1', '', '在线用户', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c33548d015c33cdc5a600f3', '附件信息', '2', '/admin/oss/attachment', '4028ea815a701416015a7075b4f9001f', '4028ea815a701416015a7075b4f9001f/', 'oss:attachment:list', '1', '5', '', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-16 17:36:48', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f4d1f8e0000', '统计报表', '1', '', null, null, '', '1', '10', 'fa-bar-chart', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 15:26:56', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f4e1cd00001', '折线图', '2', '/charts/echarts/chart/line', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '1', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f5fa02e002a', '柱状图', '2', '/charts/echarts/chart/bar', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '2', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f626f58002d', '漏斗图', '2', '/charts/echarts/chart/funnel', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '5', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f62e726002e', '仪表盘', '2', '/charts/echarts/chart/gauge', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '6', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f6390fd002f', 'K线图', '2', '/charts/echarts/chart/k', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '7', '', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-16 16:07:49', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f6572630030', '饼状图', '2', '/charts/echarts/chart/pie', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '7', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f65e3a50031', '雷达图', '2', '/charts/echarts/chart/radar', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '9', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f672f2e0032', '散点图', '2', '/charts/echarts/chart/scatter', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '9', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('40288ab85c9eeb5c015c9f9694480064', '关系图', '2', '/charts/echarts/chart/circular', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85c9eeb5c015c9f4d1f8e0000/', '', '1', '11', 'fa-battery-4', '我发疯似的', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 17:46:00', '0');
INSERT INTO `sys_menu` VALUES ('40288ab85cf8276b015cf82debcb005b', '常见工具', '1', null, null, null, '', '1', '4', 'fa-binoculars', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 15:18:11', '0');
INSERT INTO `sys_menu` VALUES ('4028ea815a701416015a7075b4f9001f', '系统监控', '1', null, null, null, '', '1', '3', 'fa-video-camera', '', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 15:18:16', '0');
INSERT INTO `sys_menu` VALUES ('4028ea815a701416015a70766a7a0020', '数据库监控', '2', '/admin/monitor/druid', '4028ea815a701416015a7075b4f9001f', '4028ea815a701416015a7075b4f9001f/', 'monitor:druid:index', '1', '3', '', '', null, null, null, null, '0');
INSERT INTO `sys_menu` VALUES ('43aae5e9ac4b4c39b26316b54b1708ec', '源码更新', '2', 'https://gitee.com/dataact/jeeweb', 'e5a287017839419d9dac884d78574153', 'e5a287017839419d9dac884d78574153/', '', '1', '2', 'fa-info', '源码更新', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 15:09:20', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:45:57', '0');
INSERT INTO `sys_menu` VALUES ('55df31718bb643d2af588ba308029649', '导出', '3', null, '40288ab85a5eecc6015a5ef6ce870002', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef6ce870002/', 'sys:user:export', '1', null, '', '导出', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:05:56', null, null, '0');
INSERT INTO `sys_menu` VALUES ('59d1613e398e4319b3564726bd670dbc', '添加', '3', null, '40288ab85a5eecc6015a5ef6ce870002', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef6ce870002/', 'sys:user:add', '1', null, '', '添加', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:01:52', null, null, '0');
INSERT INTO `sys_menu` VALUES ('66232cfca6214d78b5416577df05ee01', '删除', '3', null, '40288ab85a5eecc6015a5ef6ce870002', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef6ce870002/', 'sys:user:delete', '1', null, '', '删除', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:02:35', null, null, '0');
INSERT INTO `sys_menu` VALUES ('6d53ef7fe9c74146b24e5d00c96a95c1', '查询', '3', null, '40288ab85a5eecc6015a5ef6ce870002', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef6ce870002/', 'sys:user:list', '1', null, '', '查询', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:01:31', null, null, '0');
INSERT INTO `sys_menu` VALUES ('6f69b26a8a0c4117834f8742b22e5afc', '更新', '3', null, '40288ab85a5eecc6015a5ef6ce870002', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef6ce870002/', 'sys:user:update', '1', null, '', '更新', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:02:12', null, null, '0');
INSERT INTO `sys_menu` VALUES ('9202cea7d208446fa14089317ba938c8', '接口文档', '2', '/admin/tool/swagger', '40288ab85cf8276b015cf82debcb005b', '40288ab85cf8276b015cf82debcb005b/', 'tool:swagger', '1', '3', 'fa-cloud', '接口文档', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 14:56:28', null, null, '0');
INSERT INTO `sys_menu` VALUES ('93c7b840d2d449cc8c23f8f3195ede63', '查询', '3', null, '40288ab85a5eecc6015a5ef95c700004', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef95c700004/', 'sys:role:list', '1', null, '', '查询', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:57:53', null, null, '0');
INSERT INTO `sys_menu` VALUES ('a2382df311694fae93d3e801798dd125', '修改', '3', null, '40288ab85a5eecc6015a5ef95c700004', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef95c700004/', 'sys:role:update', '1', null, '', '修改', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:58:47', null, null, '0');
INSERT INTO `sys_menu` VALUES ('b67720154aa640a9b8379f90f1b74678', '任务日志', '2', '/admin/task/schedule/job/log', '40288ab85cf8276b015cf82debcb005b', '40288ab85cf8276b015cf82debcb005b/', 'task:schedule:joblog', '1', '2', 'fa-amazon', '任务日志', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-17 14:46:06', null, null, '0');
INSERT INTO `sys_menu` VALUES ('ba31cd4c2b514a3e944c2c6120e6a41d', '删除', '3', null, '40288ab85a5eecc6015a5ef95c700004', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef95c700004/', 'sys:role:delete', '1', null, '', '删除', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:59:07', null, null, '0');
INSERT INTO `sys_menu` VALUES ('dab0d97279514c73b2ab6ddf427f91d6', '邮件模板', '2', '/admin/email/template', 'df7449d9e15545c7bdffee270e82aea0', 'df7449d9e15545c7bdffee270e82aea0/', 'email:template', '1', '1', 'fa-envelope-o', '邮件模板', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-12 11:08:59', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:23:20', '0');
INSERT INTO `sys_menu` VALUES ('dca06272b9e045cb953507f2ea9970d6', '短信模板', '2', '/admin/sms/template', '320c2e390d25488eb18fe75261795907', '320c2e390d25488eb18fe75261795907/', 'sms:template', '1', '1', 'fa-battery-1', '短信模板', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-14 10:08:44', null, null, '0');
INSERT INTO `sys_menu` VALUES ('df7449d9e15545c7bdffee270e82aea0', '邮件管理', '1', '', null, null, '', '1', '4', 'fa-envelope', '邮件管理', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-12 11:08:17', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:22:38', '0');
INSERT INTO `sys_menu` VALUES ('dfff75fbd33d4a3c868c3b9d6d528d85', '发送日志', '2', '/admin/email/sendlog', 'df7449d9e15545c7bdffee270e82aea0', 'df7449d9e15545c7bdffee270e82aea0/', 'email:sendlog', '1', '2', 'fa-circle-thin', '发送日志', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-09-14 09:15:58', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 20:23:03', '0');
INSERT INTO `sys_menu` VALUES ('e5a287017839419d9dac884d78574153', '系统帮助', '1', '', null, null, '', '1', '12', 'fa-info-circle', '系统帮助', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 15:07:15', null, null, '0');
INSERT INTO `sys_menu` VALUES ('fa2cce3b3cc3418e9aa152c07b619769', '角色授权', '3', '', '40288ab85a5eecc6015a5ef95c700004', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef95c700004/', 'sys:role:authMenu', '1', null, '', '角色授权', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 15:00:04', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 15:00:28', '0');
INSERT INTO `sys_menu` VALUES ('fd89335cd9324bdfb1de17c61ced6675', '新增', '3', null, '40288ab85a5eecc6015a5ef9f6160005', '40288ab85a5eecc6015a5ef22ad80001/40288ab85a5eecc6015a5ef9f6160005/', 'sys:menu:add', '1', null, '', '新增', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 12:50:44', null, null, '0');

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `content` text NOT NULL COMMENT '模版内容',
  `is_read` tinyint(1) DEFAULT NULL COMMENT '是否阅读',
  `read_uid` varchar(32) DEFAULT NULL COMMENT '阅读的用户ID',
  `read_uname` varchar(250) DEFAULT NULL COMMENT '阅读的人',
  `read_date` datetime DEFAULT NULL COMMENT '阅读时间',
  `send_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sys_message_read_uid` (`read_uid`),
  CONSTRAINT `sys_message_read_uid` FOREIGN KEY (`read_uid`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发送消息';

-- ----------------------------
-- Records of sys_message
-- ----------------------------
INSERT INTO `sys_message` VALUES ('34d90ff1d82c40c1b24d9598310d4174', '回答了求解', '<p><a href=\"/user/4028ea815a3d2a8c015a3d2f8d2a0002\" target=\"_self\" title=\"系统管理员\"><cite>系统管理员</cite></a>回答了您的求解<a href=\"/posts/3c69b5d3676e42a5ba8adbf9a3133813/detail\" target=\"_self\" title=\"dasdadasd\"><cite>dasdadasd</cite></a></p>', '1', '4028ea815a3d2a8c015a3d2f8d2a0002', '系统管理员', null, '2018-09-21 17:12:24');
INSERT INTO `sys_message` VALUES ('3daf4c6501354c64bc54d5dae1cc8532', '回答了求解', '<p><a href=\"/user/703ab3b65dd940708d191a19fb64632c\" target=\"_self\" title=\"guanghe\"><cite>guanghe</cite></a>回答了您的求解<a href=\"/posts/b27a9f2296b5490c92b86eceac13f692/detail\" target=\"_self\" title=\"标题标题标题标题标题标题标题标题标题标题\"><cite>标题标题标题标题标题标题标题标题标题标题</cite></a></p>', '0', '703ab3b65dd940708d191a19fb64632c', 'guanghe', null, '2018-09-20 11:37:39');
INSERT INTO `sys_message` VALUES ('67185c781b0541ad975ed740df5fdfd7', '回答了求解', '<p><a href=\"/user/d7bdacb99d8746548c0882417ae3abbd\" target=\"_self\" title=\"白猫\"><cite>白猫</cite></a>回答了您的求解<a href=\"/posts/b2dcc675fb5d48a88120c5900ff1a4fd/detail\" target=\"_self\" title=\"测试一个标题哈哈哈哈\"><cite>测试一个标题哈哈哈哈</cite></a></p>', '1', 'd7bdacb99d8746548c0882417ae3abbd', '白猫', null, '2018-09-13 13:42:47');
INSERT INTO `sys_message` VALUES ('7730bb741c9341c2869dfaaf70665c06', '回答了求解', '<p><a href=\"/user/d7bdacb99d8746548c0882417ae3abbd\" target=\"_self\" title=\"白猫\"><cite>白猫</cite></a>回答了您的求解<a href=\"/posts/b2dcc675fb5d48a88120c5900ff1a4fd/detail\" target=\"_self\" title=\"测试一个标题哈哈哈哈\"><cite>测试一个标题哈哈哈哈</cite></a></p>', '0', 'd7bdacb99d8746548c0882417ae3abbd', '白猫', null, '2018-09-13 13:52:10');
INSERT INTO `sys_message` VALUES ('9a311d6e471544d9b07c4d966c9b86e3', '回答了求解', '<p><a href=\"/user/4028ea815a3d2a8c015a3d2f8d2a0002\" target=\"_self\" title=\"系统管理员\"><cite>系统管理员</cite></a>回答了您的求解<a href=\"/posts/3c69b5d3676e42a5ba8adbf9a3133813/detail\" target=\"_self\" title=\"dasdadasd\"><cite>dasdadasd</cite></a></p>', '1', '4028ea815a3d2a8c015a3d2f8d2a0002', '系统管理员', null, '2018-09-21 17:12:36');
INSERT INTO `sys_message` VALUES ('9fb5dd93108340f9a8e108fa150e4dc0', '回答了求解', '<p><a href=\"/user/703ab3b65dd940708d191a19fb64632c\" target=\"_self\" title=\"guanghe\"><cite>guanghe</cite></a>回答了您的求解<a href=\"/posts/b27a9f2296b5490c92b86eceac13f692/detail\" target=\"_self\" title=\"标题标题标题标题标题标题标题标题标题标题\"><cite>标题标题标题标题标题标题标题标题标题标题</cite></a></p>', '0', '703ab3b65dd940708d191a19fb64632c', 'guanghe', null, '2018-09-21 17:12:05');

-- ----------------------------
-- Table structure for sys_message_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_message_template`;
CREATE TABLE `sys_message_template` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `name` varchar(255) NOT NULL COMMENT '模版名称',
  `code` varchar(255) NOT NULL COMMENT '模版编码',
  `template_title` varchar(255) NOT NULL COMMENT '模版标题',
  `template_content` text NOT NULL COMMENT '模版内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='发送消息模板';

-- ----------------------------
-- Records of sys_message_template
-- ----------------------------
INSERT INTO `sys_message_template` VALUES ('980000eda2bf4644b099404cc4b8cd68', '产品付款成功模板', 'ur780e3fjt', '产品付款成功模板', '&lt;p&gt;&lt;a href=&quot;/user/${uid}&quot; target=&quot;_self&quot; title=&quot;${realname}&quot;&gt;&lt;cite&gt;${realname}&lt;/cite&gt;&lt;/a&gt;在求解&lt;a href=&quot;/posts/${postsId}/detail&quot; target=&quot;_self&quot; title=&quot;${postsTitle}&quot;&gt;&lt;cite&gt;${postsTitle}&lt;/cite&gt;&lt;/a&gt;。中回复了你&lt;/p&gt;');
INSERT INTO `sys_message_template` VALUES ('c1fc105870bc4e3b8252973cc557ad75', '回答了求解', 'iheyj2har8', '回答了求解', '&lt;p&gt;&lt;a href=&quot;/user/${uid}&quot; target=&quot;_self&quot; title=&quot;${realname}&quot;&gt;&lt;cite&gt;${realname}&lt;/cite&gt;&lt;/a&gt;回答了您的求解&lt;a href=&quot;/posts/${postsId}/detail&quot; target=&quot;_self&quot; title=&quot;${postsTitle}&quot;&gt;&lt;cite&gt;${postsTitle}&lt;/cite&gt;&lt;/a&gt;&lt;/p&gt;');
INSERT INTO `sys_message_template` VALUES ('f5f928d3d7354a73a73bd67e21bc54dd', '回复中AT了你', 'yfsidsne12', '回复中AT了你', '&lt;p&gt;&lt;a href=&quot;/user/${uid}&quot; target=&quot;_self&quot; title=&quot;${realname}&quot;&gt;&lt;cite&gt;${realname}&lt;/cite&gt;&lt;/a&gt;在求解&lt;a href=&quot;/posts/${postsId}/detail&quot; target=&quot;_self&quot; title=&quot;${postsTitle}&quot;&gt;&lt;cite&gt;${postsTitle}&lt;/cite&gt;&lt;/a&gt;。中回复了你&lt;/p&gt;');

-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_log`;
CREATE TABLE `sys_operation_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `content` varchar(1000) DEFAULT '' COMMENT '日志内容',
  `log_type` varchar(10) DEFAULT '' COMMENT '操作方式',
  `create_by` varchar(32) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URL',
  `browser` varchar(255) DEFAULT NULL COMMENT '浏览器',
  `os` varchar(100) DEFAULT NULL COMMENT '操作系统',
  `operation_ip` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `operation_name` varchar(255) DEFAULT NULL COMMENT '操作人',
  `method` varchar(255) DEFAULT NULL COMMENT '操作方法',
  `params` text COMMENT '数据',
  `msg` text COMMENT '异常信息',
  `status` varchar(1) DEFAULT NULL COMMENT '请求状态',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`operation_ip`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------
INSERT INTO `sys_operation_log` VALUES ('0513ea692ea6405db3645bcf757940ac', '菜单管理', '', 'select', null, '2018-10-05 20:46:49', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743609420\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('054d8ea5b7554a668e51d7cdab777720', '操作日志', '', 'select', null, '2018-10-05 20:27:19', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538742439723\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"],\"createDate\":[\"\"],\"query.createDate||between\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('0a38310d12cd4745b6f1e978245407cc', '菜单管理', '', 'select', null, '2018-10-05 20:55:51', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538744151739\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('0d76768b923f485e80f0136943fa1085', '菜单管理', '', 'update', null, '2018-10-05 20:45:57', '/admin/sys/menu/43aae5e9ac4b4c39b26316b54b1708ec/update', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.update()', '{\"id\":[\"43aae5e9ac4b4c39b26316b54b1708ec\"],\"type\":[\"2\"],\"enabled\":[\"1\"],\"parentId\":[\"e5a287017839419d9dac884d78574153\"],\"parentname\":[\"系统帮助\"],\"name\":[\"源码更新\"],\"permission\":[\"\"],\"url\":[\"https://gitee.com/dataact/jeeweb\"],\"remarks\":[\"源码更新\"],\"menuIcon\":[\"fa-info\"],\"sort\":[\"2\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('0df1fc973e254bf6b17693d5453a3c8d', '菜单管理', '', 'select', null, '2018-10-05 20:45:48', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743548033\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('0e1bdbb973a349479512b39066e9f790', '菜单管理', '', 'select', null, '2018-10-05 20:22:09', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742129429\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"n_level\":[\"0\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('10083fa8a97e4eb294287780759923a1', '部门管理', '', 'select', null, '2018-10-05 20:16:02', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538741762890\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('1055311795644ce687296e34ced8fe5b', '字典分组', '', 'select', null, '2018-10-05 20:20:22', '/admin/sys/dict/group/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictGroupController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538742022780\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('10e6aba32bc049258fdb1f3c38b67779', '菜单管理', '', 'select', null, '2018-10-05 20:23:30', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742210744\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('142bed17f447458188c23445e87032c7', '角色管理', '', 'select', null, '2018-10-05 20:39:06', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538743146218\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('14bc1023c7fd4b129bd9dad528261f92', '计划任务', '', 'select', null, '2018-10-05 20:16:14', '/admin/task/schedule/job/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.task.controller.ScheduleJobController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,jobName,jobGroup,beanClass,methodName,methodName,cronExpression,jobStatus,isConcurrent,createTime,\"],\"_search\":[\"false\"],\"nd\":[\"1538741774931\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('171064c76e504bd88c9bf0d718ceeb3c', '邮件模板', '', 'select', null, '2018-10-05 20:21:43', '/admin/email/template/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.email.controller.EmailTemplateController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538742103117\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('1c64701c20514f0e88b658bd1dc2587e', '邮件模板', '', 'select', null, '2018-10-05 20:21:00', '/admin/email/template/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.email.controller.EmailTemplateController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538742060059\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('222ccd797bd64ba5850f37dab0fb8bdd', '菜单管理', '', 'update', null, '2018-10-05 20:21:21', '/admin/sys/menu/dab0d97279514c73b2ab6ddf427f91d6/update', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.update()', '{\"id\":[\"dab0d97279514c73b2ab6ddf427f91d6\"],\"type\":[\"2\"],\"enabled\":[\"1\"],\"parentId\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"parentname\":[\"邮件管理\"],\"name\":[\"邮件模板\"],\"permission\":[\"email:template\"],\"url\":[\"/admin/email/template\"],\"remarks\":[\"邮件模板\"],\"menuIcon\":[\"fa-amazon\"],\"sort\":[\"1\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('23162d5f12c4491695b2b8f64c5e0c88', '操作日志', '', 'select', null, '2018-10-05 20:33:34', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538742814595\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('23d88f0a661d42479fdc6348923b4694', '菜单管理', '', 'select', null, '2018-10-05 20:51:27', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743887099\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('253d7e5fec7f4db8a8a95555e42f51f7', '计划任务日志', '', 'select', null, '2018-10-05 20:16:15', '/admin/task/schedule/job/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.task.controller.ScheduleJobLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,jobName,jobGroup,springBean,methodName,methodParams,jobMessage,status,createTime,\"],\"_search\":[\"false\"],\"nd\":[\"1538741775902\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('257e760e9ac6415c997d313dfda83c69', '角色管理', '', 'select', null, '2018-10-05 20:55:48', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538744148120\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('2722e14156b340f69958d250a069b709', '用户管理', '', 'select', null, '2018-10-05 20:20:25', '/admin/sys/user/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.UserController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,realname,username,email,phone,\"],\"_search\":[\"false\"],\"nd\":[\"1538742025423\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('29b677aaf23c49148a42811d6e5bf3ce', '菜单管理', '', 'select', null, '2018-10-05 20:21:21', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742081945\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"\"],\"n_level\":[\"\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('2dcd777387bf4f89a6484a434947b292', '菜单管理', '', 'select', null, '2018-10-05 20:45:57', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743557186\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"\"],\"n_level\":[\"\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('2e48974b12cb4c7488e04fc1739e093e', '菜单管理', '', 'select', null, '2018-10-05 20:21:11', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742071854\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"n_level\":[\"0\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('2fe5731aeb564f7e8fb87590b0233b1f', '部门管理', '', 'select', null, '2018-10-05 20:38:27', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538743107927\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"],\"nodeid\":[\"40288ab85b6080e1015b60996d690005\"],\"n_level\":[\"0\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('303a5fddacc1482f84bfb0e45635d8ad', '操作日志', '', 'select', null, '2018-10-05 20:14:29', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538741669406\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"],\"createDate\":[\"\"],\"query.createDate||between\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('331246b6badb46378aaad7c8af3d82d4', '菜单管理', '', 'update', null, '2018-10-05 20:23:03', '/admin/sys/menu/dfff75fbd33d4a3c868c3b9d6d528d85/update', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.update()', '{\"id\":[\"dfff75fbd33d4a3c868c3b9d6d528d85\"],\"type\":[\"2\"],\"enabled\":[\"1\"],\"parentId\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"parentname\":[\"邮件管理\"],\"name\":[\"发送日志\"],\"permission\":[\"email:sendlog\"],\"url\":[\"/admin/email/sendlog\"],\"remarks\":[\"发送日志\"],\"menuIcon\":[\"fa-info-circle\"],\"sort\":[\"2\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('34985f62aeff49c3ba3a02a734a604da', '字典管理', '', 'select', null, '2018-10-05 20:38:17', '/admin/sys/dict/ajaxList', 'Chrome', 'Windows 10', '127.0.0.1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,label,value,\"],\"_search\":[\"false\"],\"nd\":[\"1538743097718\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('35c2553176b640e0a7afb5e7a3835278', '邮件模板', '', 'select', null, '2018-10-05 20:21:45', '/admin/email/template/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.email.controller.EmailTemplateController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538742105009\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('3a4cf01ea0e14ddab4d60254641690c4', '字典管理', '', 'select', null, '2018-10-05 20:55:52', '/admin/sys/dict/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,label,value,\"],\"_search\":[\"false\"],\"nd\":[\"1538744152589\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('3a693edbb3014fb2ad39c66ad6c24a4b', '操作日志', '', 'select', null, '2018-10-05 20:14:27', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538741667156\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"],\"createDate\":[\"\"],\"query.createDate||between\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('3aab5554a0af4104ae29e75b0788bc5d', '字典分组', '', 'select', null, '2018-10-05 20:38:17', '/admin/sys/dict/group/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictGroupController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538743097666\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('3b0d7ee4aa8741bcbaf30c5a4943c3c8', '字典管理', '', 'select', null, '2018-10-05 20:20:22', '/admin/sys/dict/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,label,value,\"],\"_search\":[\"false\"],\"nd\":[\"1538742022821\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('3c761983ae7b4c4db886d5e062fe5933', '菜单管理', '', 'select', null, '2018-10-05 20:47:16', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743636552\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('41c1d00df541436a9b26a443efe145a2', '部门管理', '', 'select', null, '2018-10-05 20:39:13', '/admin/sys/organization/bootstrapTreeData', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.bootstrapTreeData()', '{}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('42f71d1755a64cff89df468bb1205c17', '菜单管理', '', 'select', null, '2018-10-05 20:22:38', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742158595\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"\"],\"n_level\":[\"\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('464155b207964d8e9a1b29705b8079eb', '用户管理', '', 'select', null, '2018-10-05 20:39:16', '/admin/sys/user/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.UserController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,realname,username,email,phone,\"],\"_search\":[\"false\"],\"nd\":[\"1538743156054\"],\"page.size\":[\"30\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('47156a84455b43df9db7bf48a2cf812d', '菜单管理', '', 'select', null, '2018-10-05 20:20:17', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742017728\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('4855c0f7876c496aa9ce00b588885d51', '部门管理', '', 'select', null, '2018-10-05 20:51:23', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538743883407\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('49605c1c6e70468183d4e568d1e5f60d', '角色管理', '', 'select', null, '2018-10-05 20:33:29', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538742809042\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('4e738278219649bfb96ce5c6587cc58f', '菜单管理', '', 'select', null, '2018-10-05 20:23:33', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742213342\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"4028ea815a701416015a7075b4f9001f\"],\"n_level\":[\"0\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('4e8606d6f8ac475cbeec09429ece6563', '菜单管理', '', 'select', null, '2018-10-05 20:21:32', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742092075\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('4ea978b8b565431c90ac6de0163de583', '角色管理', '', 'select', null, '2018-10-05 20:21:34', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538742094055\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('4f51f85d9e5247178123b047dfe5d6e4', '角色管理', '', 'select', null, '2018-10-05 20:23:27', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538742207518\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('510eff5431284d3187cc0eb5b02823e8', '部门管理', '', 'select', null, '2018-10-05 20:19:15', '/admin/sys/organization/bootstrapTreeData', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.bootstrapTreeData()', '{}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('523d86c87e7744bf8862fdd4be06a768', '菜单管理', '', 'update', null, '2018-10-05 20:22:38', '/admin/sys/menu/df7449d9e15545c7bdffee270e82aea0/update', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.update()', '{\"id\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"type\":[\"1\"],\"enabled\":[\"1\"],\"parentId\":[\"\"],\"parentname\":[\"无\"],\"name\":[\"邮件管理\"],\"permission\":[\"\"],\"url\":[\"\"],\"remarks\":[\"邮件管理\"],\"menuIcon\":[\"fa-envelope\"],\"sort\":[\"4\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('527d8375c45f462c9a4ad6ae56a81f46', '部门管理', '', 'select', null, '2018-10-05 20:20:26', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538742026218\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('58a09d18c32b464ca3b1eda3267a3b83', '菜单管理', '', 'select', null, '2018-10-05 20:51:29', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743889200\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"e5a287017839419d9dac884d78574153\"],\"n_level\":[\"0\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('5b48a4cd93434983961cd50c6434e610', '菜单管理', '', 'select', null, '2018-10-05 20:46:46', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743606190\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"\"],\"n_level\":[\"\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('5e881eff8fd84e43bc7216974695d34d', '操作日志', '', 'select', null, '2018-10-05 20:27:24', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538742444908\"],\"page.size\":[\"10\"],\"page.pn\":[\"2\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"],\"createDate\":[\"\"],\"query.createDate||between\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('6088ddbe26794d6e91578b5e2d2efbe1', '用户管理', '', 'select', null, '2018-10-05 20:16:02', '/admin/sys/user/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.UserController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,realname,username,email,phone,\"],\"_search\":[\"false\"],\"nd\":[\"1538741762043\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('60f41476fdd3451385d67d33974df500', '计划任务', '', 'select', null, '2018-10-05 20:20:50', '/admin/task/schedule/job/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.task.controller.ScheduleJobController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,jobName,jobGroup,beanClass,methodName,methodName,cronExpression,jobStatus,isConcurrent,createTime,\"],\"_search\":[\"false\"],\"nd\":[\"1538742050490\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('61c671060ac843308b0cd72db9802ea7', '角色管理', '', 'select', null, '2018-10-05 20:16:03', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538741763568\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('623effee0b9c41a5aa02b530df97a21b', '字典分组', '', 'select', null, '2018-10-05 20:16:05', '/admin/sys/dict/group/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictGroupController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538741764974\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('662eb333f20644b7b9906ee0e38f5777', '菜单管理', '', 'select', null, '2018-10-05 20:23:23', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742203270\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('6732fbd9a09d4074b90e53b806f1495e', '操作日志', '', 'select', null, '2018-10-05 20:20:45', '/admin/sys/operation/log/c2b8a0e35fa14e30b581065b6c8510d6/detail', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.detail()', '{\"id\":[\"c2b8a0e35fa14e30b581065b6c8510d6\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('6b49cdf2ae294eafa337e5d83439414a', '部门管理', '', 'select', null, '2018-10-05 20:20:25', '/admin/sys/organization/bootstrapTreeData', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.bootstrapTreeData()', '{}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('6e3fdb93b8814764820b405938903f32', '菜单管理', '', 'select', null, '2018-10-05 20:22:42', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742162965\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"n_level\":[\"0\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('7250c40af9324cb0b9d1a2080bd9e791', '用户管理', '', 'select', null, '2018-10-05 20:55:44', '/admin/sys/user/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.UserController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,realname,username,email,phone,\"],\"_search\":[\"false\"],\"nd\":[\"1538744144505\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('75788cf27e414011b406d65d48bef36b', '菜单管理', '', 'select', null, '2018-10-05 20:47:30', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743650011\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('7932ef3567db4d62a36215c3870d1e07', '部门管理', '', 'select', null, '2018-10-05 20:19:15', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538741955770\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('842193215af74cb9bb5620556263cda9', '邮件模板', '', 'select', null, '2018-10-05 20:21:06', '/admin/email/template/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.email.controller.EmailTemplateController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538742066621\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('896c2a25b2d645b39af927165a15d449', '菜单管理', '', 'select', null, '2018-10-05 20:45:50', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743550648\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"e5a287017839419d9dac884d78574153\"],\"n_level\":[\"0\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('8ac3fd573d0d458e8f6705d5853d6098', '菜单管理', '', 'select', null, '2018-10-05 20:51:51', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743904375\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"\"],\"n_level\":[\"\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('8b944a390b3f4d2b9cc026c66228ab9b', '角色管理', '', 'select', null, '2018-10-05 20:55:46', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538744146016\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('8b94db6c95e54a93ae6a38e072d35728', '菜单管理', '', 'select', null, '2018-10-05 20:23:03', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742183709\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"\"],\"n_level\":[\"\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('8c8afac496d74e4da5a9b9760f00fe32', '菜单管理', '', 'select', null, '2018-10-05 20:41:07', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743266845\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('8cbaec735bdd4f9f850408c24991b703', '部门管理', '', 'select', null, '2018-10-05 20:55:45', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538744145265\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('8d7168ad02834a3e8d66a078a4170d17', '用户强制退出', '', 'other', null, '2018-10-05 20:16:09', '/admin/sys/online/forceLogout', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.UserOnlineController.forceLogout()', '{\"ids\":[\"582222f1-43d7-410b-8625-0d37417c4817\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('918f1e22eb534694ba8ded083d3c368c', '字典分组', '', 'select', null, '2018-10-05 20:38:20', '/admin/sys/dict/group/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictGroupController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538743100030\"],\"page.size\":[\"20\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('939ce43ae7504b6098325f899b466eee', '操作日志', '', 'select', null, '2018-10-05 20:39:18', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538743157971\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('952ca8e5f3a34746b0528a42f307d1b8', '字典管理', '', 'select', null, '2018-10-05 20:20:24', '/admin/sys/dict/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,label,value,\"],\"_search\":[\"false\"],\"nd\":[\"1538742024597\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"],\"gid\":[\"d8fd027d0743468c828d7d068239d483\"],\"label\":[\"\"],\"value\":[\"\"],\"query.gid||eq\":[\"d8fd027d0743468c828d7d068239d483\"],\"query.label||eq\":[\"\"],\"query.value||eq\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('968194e6919247b682bf77ddaba66dfc', '菜单管理', '', 'update', null, '2018-10-05 20:23:20', '/admin/sys/menu/dab0d97279514c73b2ab6ddf427f91d6/update', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.update()', '{\"id\":[\"dab0d97279514c73b2ab6ddf427f91d6\"],\"type\":[\"2\"],\"enabled\":[\"1\"],\"parentId\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"parentname\":[\"邮件管理\"],\"name\":[\"邮件模板\"],\"permission\":[\"email:template\"],\"url\":[\"/admin/email/template\"],\"remarks\":[\"邮件模板\"],\"menuIcon\":[\"fa-envelope-o\"],\"sort\":[\"1\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('9b667674cd2449ceba88cdb016752461', '邮件发送日志', '', 'select', null, '2018-10-05 20:21:44', '/admin/email/sendlog/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.email.controller.EmailSendLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,email,subject,tryNum,status,\"],\"_search\":[\"false\"],\"nd\":[\"1538742104289\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('9b8746056d124be68213496fdc1eb40d', '字典分组', '', 'select', null, '2018-10-05 20:55:47', '/admin/sys/dict/group/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictGroupController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538744147398\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('9c5f48aab06d4ffd8b1e7ac491a307d5', '菜单管理', '', 'select', null, '2018-10-05 20:21:27', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742087284\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"40288ab85a5eecc6015a5ef22ad80001\"],\"n_level\":[\"0\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('a06f0ce12a6e451c9968aee6c3fdef8b', '字典管理', '', 'select', null, '2018-10-05 20:20:24', '/admin/sys/dict/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,label,value,\"],\"_search\":[\"false\"],\"nd\":[\"1538742024127\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"],\"gid\":[\"f8a0d22e387445b29f6c238e252c7068\"],\"label\":[\"\"],\"value\":[\"\"],\"query.gid||eq\":[\"f8a0d22e387445b29f6c238e252c7068\"],\"query.label||eq\":[\"\"],\"query.value||eq\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('a082d6d76a8a482d9a1a00b78d8f6f8a', '用户管理', '', 'select', null, '2018-10-05 20:39:13', '/admin/sys/user/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.UserController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,realname,username,email,phone,\"],\"_search\":[\"false\"],\"nd\":[\"1538743153108\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('a1ac59d934084275b69c6e8d4d45e138', '操作日志', '', 'select', null, '2018-10-05 20:27:26', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538742445989\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"],\"createDate\":[\"\"],\"query.createDate||between\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('a375955050cc4904bba85749abad3a06', '菜单管理', '', 'select', null, '2018-10-05 20:22:07', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742127926\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('a4cfde4e471544568d1069d2f44cd135', '操作日志', '', 'select', null, '2018-10-05 20:20:40', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538742040687\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('a4e33a46d0a54ea1956657a60db1c6f2', '部门管理', '', 'select', null, '2018-10-05 20:45:25', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538743525524\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('b29d21a70e3748f2a40a1a69a779c7d4', '菜单管理', '', 'select', null, '2018-10-05 20:20:19', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742019701\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"e5a287017839419d9dac884d78574153\"],\"n_level\":[\"0\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('b3b2199e806a4cfc918c0dc2999802f2', '菜单管理', '', 'select', null, '2018-10-05 20:55:47', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538744147749\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('b66fde7c4dad4d999d0ae38d35c5c3d8', '用户管理', '', 'select', null, '2018-10-05 20:19:15', '/admin/sys/user/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.UserController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,realname,username,email,phone,\"],\"_search\":[\"false\"],\"nd\":[\"1538741954909\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('b751cf21f387463d80fe528882ca8347', '字典管理', '', 'select', null, '2018-10-05 20:16:05', '/admin/sys/dict/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,label,value,\"],\"_search\":[\"false\"],\"nd\":[\"1538741765007\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('b832ed2f92c9448d903daea01a09588d', '角色管理', '', 'select', null, '2018-10-05 20:21:38', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538742097996\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"],\"name\":[\"\"],\"code\":[\"\"],\"query.name||eq\":[\"\"],\"query.code||eq\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c0b92879e1544bde89fe140bcc5106d0', '字典分组', '', 'select', null, '2018-10-05 20:38:21', '/admin/sys/dict/group/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictGroupController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538743101213\"],\"page.size\":[\"30\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c10e2e0d7a024c74a508096e83ce1aad', '菜单管理', '', 'select', null, '2018-10-05 20:23:09', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742189101\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"df7449d9e15545c7bdffee270e82aea0\"],\"n_level\":[\"0\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c26370a41cc048dc901f2a8dd3e5ae6f', '菜单管理', '', 'select', null, '2018-10-05 20:21:30', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742090714\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c2b8a0e35fa14e30b581065b6c8510d6', '角色管理', '', 'select', null, '2018-10-05 20:20:26', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538742026702\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c3a6de19e12041aa8e1d9c286849d917', '菜单管理', '', 'select', null, '2018-10-05 20:23:20', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742200878\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"\"],\"n_level\":[\"\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c3eab9e8ba924f37aacb5944e1086771', '菜单管理', '', 'select', null, '2018-10-05 20:40:06', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743206622\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c72198481c4049e28520cb13aae3c42c', '菜单管理', '', 'select', null, '2018-10-05 20:55:46', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538744146660\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('c962f88b0d3b4c3ca753dc3c8f155127', '字典管理', '', 'select', null, '2018-10-05 20:55:47', '/admin/sys/dict/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,label,value,\"],\"_search\":[\"false\"],\"nd\":[\"1538744147435\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('cce1fbe0d84f4c77957c87f57413dfe1', '角色管理', '', 'select', null, '2018-10-05 20:46:48', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538743608356\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('cce65cfbc68d470b9eb74ae65b420a94', '字典分组', '', 'select', null, '2018-10-05 20:55:52', '/admin/sys/dict/group/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.DictGroupController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538744152560\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('cf773cfc12854f7a8ea81154b892e7ef', '部门管理', '', 'select', null, '2018-10-05 20:55:44', '/admin/sys/organization/bootstrapTreeData', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.bootstrapTreeData()', '{}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('d45b4bbed34c42269175eb15380a0934', '计划任务日志', '', 'select', null, '2018-10-05 20:20:52', '/admin/task/schedule/job/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.task.controller.ScheduleJobLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,jobName,jobGroup,springBean,methodName,methodParams,jobMessage,status,createTime,\"],\"_search\":[\"false\"],\"nd\":[\"1538742052695\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('d49b4ecf8280458d89cfd7a1c7dc12b9', '菜单管理', '', 'select', null, '2018-10-05 20:21:24', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742084805\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"nodeid\":[\"4028ea815a701416015a7075b4f9001f\"],\"n_level\":[\"0\"],\"parentid\":[\"\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('ddb0f9e0b02343a7ae8878d2e53b37b8', '邮件模板', '', 'select', null, '2018-10-05 20:21:02', '/admin/email/template/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.email.controller.EmailTemplateController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,\"],\"_search\":[\"false\"],\"nd\":[\"1538742062803\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('de3c6d586ee6451c896ae8222007fee9', '角色管理-菜单授权', '', 'other', null, '2018-10-05 20:21:37', '/admin/sys/role/doAuthMenu', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.doAuthMenu()', '{\"id\":[\"40288ab85a362150015a3675ca950006\"],\"selectIds\":[\"e5a287017839419d9dac884d78574153,43aae5e9ac4b4c39b26316b54b1708ec,1232ea9d3e374e89aef6ec3a1c693da8,40288ab85c9eeb5c015c9f4d1f8e0000,40288ab85c9eeb5c015c9f9694480064,40288ab85c9eeb5c015c9f65e3a50031,40288ab85c9eeb5c015c9f672f2e0032,40288ab85c9eeb5c015c9f6390fd002f,40288ab85c9eeb5c015c9f6572630030,40288ab85c9eeb5c015c9f62e726002e,40288ab85c9eeb5c015c9f626f58002d,40288ab85c9eeb5c015c9f5fa02e002a,40288ab85c9eeb5c015c9f4e1cd00001,320c2e390d25488eb18fe75261795907,3f9752eb9b7d481a85cdb3c32c442025,dca06272b9e045cb953507f2ea9970d6,40281e815c912406015c9149f7b80044,40281e815c912406015c914a1bc30045,40288ab85cf8276b015cf82debcb005b,9202cea7d208446fa14089317ba938c8,b67720154aa640a9b8379f90f1b74678,40281e815beda90f015bedcf7102000f,df7449d9e15545c7bdffee270e82aea0,dfff75fbd33d4a3c868c3b9d6d528d85,dab0d97279514c73b2ab6ddf427f91d6,4028ea815a701416015a7075b4f9001f,40281e815c54d147015c54daf16c0001,40288ab85c33548d015c33cdc5a600f3,05e3cd68c0e44f288b5605577c54b696,4028ea815a701416015a70766a7a0020,40288ab85b604adf015b605023a70000,40288ab85a5eecc6015a5ef22ad80001,40288ab85a5eecc6015a5efaa75d0006,40288ab85a5eecc6015a5ef9f6160005,0f6ed028011a4e06a90af8edfa0c9dbb,004ef02eff6347de8b054834e37e7084,34e23174debf447a86ad322c466b1020,fd89335cd9324bdfb1de17c61ced6675,40288ab85a5eecc6015a5ef95c700004,35ff47636f044375b54b6be644996c38,93c7b840d2d449cc8c23f8f3195ede63,a2382df311694fae93d3e801798dd125,ba31cd4c2b514a3e944c2c6120e6a41d,fa2cce3b3cc3418e9aa152c07b619769,40288ab85a5eecc6015a5ef8f2890003,40288ab85a5eecc6015a5ef6ce870002,55df31718bb643d2af588ba308029649,59d1613e398e4319b3564726bd670dbc,66232cfca6214d78b5416577df05ee01,6d53ef7fe9c74146b24e5d00c96a95c1,6f69b26a8a0c4117834f8742b22e5afc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('de514695f43a4b9686ee38add3acb110', '角色管理', '', 'select', null, '2018-10-05 20:21:39', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538742099856\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('e32db31cdbdd452a8c7738efc09bf45c', '菜单管理', '', 'select', null, '2018-10-05 20:21:10', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538742070298\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('e3efe647836a45d3b30c3c16626e0d4c', '角色管理', '', 'select', null, '2018-10-05 20:19:16', '/admin/sys/role/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.RoleController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,name,code,isSys,usable,\"],\"_search\":[\"false\"],\"nd\":[\"1538741956564\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('e68911bc2c8a42d09bc982207147ca1d', '操作日志', '', 'select', null, '2018-10-05 20:27:22', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538742442815\"],\"page.size\":[\"10\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"],\"createDate\":[\"\"],\"query.createDate||between\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('e6c85d69470f4d13ba098a5b08fa5c29', '部门管理', '', 'select', null, '2018-10-05 20:16:02', '/admin/sys/organization/bootstrapTreeData', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.bootstrapTreeData()', '{}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('e9001a31d90841f89f1903d73012f97c', '菜单管理', '', 'select', null, '2018-10-05 20:51:23', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743865897\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('f0ac3f1064d74114a9ef52ba466fc595', '部门管理', '', 'select', null, '2018-10-05 20:38:23', '/admin/sys/organization/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OrganizationController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,remarks,\"],\"_search\":[\"false\"],\"nd\":[\"1538743103447\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"id\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('f444941aa4c1430d80cdc75150723ebb', '菜单管理', '', 'select', null, '2018-10-05 20:38:56', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743136530\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('f56d3e8224bb45c5a19704fe70165f9b', '菜单管理', '', 'select', null, '2018-10-05 20:47:14', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538743634919\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"],\"name\":[\"\"],\"type\":[\"\"],\"query.name||like\":[\"\"],\"query.type||like\":[\"\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('f59182c549a14ddca25737fc9b2ae4be', '操作日志', '', 'select', null, '2018-10-05 20:39:20', '/admin/sys/operation/log/ajaxList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.OperationLogController.ajaxList()', '{\"gridtype\":[\"jqgrid\"],\"queryFields\":[\"id,title,logType,requestUri,operationName,operationIp,browser,os,status,createDate,\"],\"_search\":[\"false\"],\"nd\":[\"1538743160718\"],\"page.size\":[\"30\"],\"page.pn\":[\"1\"],\"sort\":[\"createDate\"],\"order\":[\"desc\"]}', null, '1');
INSERT INTO `sys_operation_log` VALUES ('ff9980ca762342928edd64689825a183', '菜单管理', '', 'select', null, '2018-10-05 20:16:04', '/admin/sys/menu/ajaxTreeList', 'Chrome', 'Windows 10', '0:0:0:0:0:0:0:1', 'admin', 'cn.jeeweb.web.modules.sys.controller.MenuController.ajaxTreeList()', '{\"gridtype\":[\"jqgrid\"],\"async\":[\"1\"],\"queryFields\":[\"id,name,type,url,permission,enabled,\"],\"_search\":[\"false\"],\"nd\":[\"1538741764206\"],\"page.size\":[\"10000\"],\"page.pn\":[\"1\"],\"sort\":[\"sort\"],\"order\":[\"asc\"]}', null, '1');

-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_organization`;
CREATE TABLE `sys_organization` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `parent_id` varchar(32) DEFAULT NULL COMMENT '父节点',
  `parent_ids` varchar(1000) DEFAULT NULL COMMENT '父节点路径',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL COMMENT '删除标记',
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_organization_parent_id` (`parent_id`),
  KEY `idx_sys_organization_parent_ids` (`parent_ids`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_organization
-- ----------------------------
INSERT INTO `sys_organization` VALUES ('40288ab85b6080e1015b60996d690005', '数立行', null, null, null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-16 16:06:40', '0', null);
INSERT INTO `sys_organization` VALUES ('4028ea815a452f69015a45346f7b0001', '研发部', '40288ab85b6080e1015b60996d690005', '40288ab85b6080e1015b60996d690005/', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-10-05 19:47:18', '0', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `code` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `usable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('402880e45b5d7636015b5d8baca60000', '普通用户', 'normal', '1', '1', null, '2017-04-11 23:04:46', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 14:19:50', '', '0');
INSERT INTO `sys_role` VALUES ('40288ab85a362150015a3675ca950006', '系统管理员', 'admin', '1', '1', null, '2017-02-13 15:52:53', '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 13:07:41', '系统管理员', '0');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `menu_id` varchar(32) NOT NULL COMMENT '菜单编号',
  `role_id` varchar(32) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`),
  KEY `sys_role_menu_menuid` (`menu_id`),
  KEY `sys_role_menu_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('00e36aff04c647b7bc9a335ebd237b15', 'fa2cce3b3cc3418e9aa152c07b619769', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('06a757ad0fb543ccad16cda20699705c', 'b67720154aa640a9b8379f90f1b74678', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('07d9ab133d3c46b891a57e9598339fdf', '34e23174debf447a86ad322c466b1020', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('081424d2dc3d40f486b8d5fde27e02c1', '40288ab85c9eeb5c015c9f4e1cd00001', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('097fba0dffcd4741b949cd32826ef58b', '40288ab85c9eeb5c015c9f626f58002d', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('0ee051c288904e92bdb8e72b74c5149b', '55df31718bb643d2af588ba308029649', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('0f0d1fd6f2294204a8a9241923181b46', '40288ab85a5eecc6015a5ef95c700004', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('1022131a72d2495dbde0b83ecaef3f89', '40288ab85c9eeb5c015c9f4d1f8e0000', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('117b5193bef34704926a86becb0ff8e8', '59d1613e398e4319b3564726bd670dbc', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('19bfec325a3a4bc0a85bd7a8eecc3b9f', '40288ab85a5eecc6015a5ef8f2890003', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('1fd83fba75a1408b9ed71276fb6678ca', '40288ab85c9eeb5c015c9f6390fd002f', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('2055ad752ad14cc8b774259431b023be', '40288ab85a5eecc6015a5ef6ce870002', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('2937e21a18e941a6a6593e846455e7cc', '40288ab85c9eeb5c015c9f5fa02e002a', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('2988c6ab6049493f94edb2361e57b2ac', '93c7b840d2d449cc8c23f8f3195ede63', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('30f458832f814fe7b7a0ac11b10c8a6c', '004ef02eff6347de8b054834e37e7084', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('31eb598ba7d04e7a8e4dfb6e83be9f85', '40288ab85c9eeb5c015c9f6390fd002f', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('3fd61b027ce845e4b2ff474658284db6', '66232cfca6214d78b5416577df05ee01', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('4028ea815a701416015a7080f45b0030', '40288ab85a5eecc6015a5ef22ad80001', '40288ab85a406a03015a40781a6e0000');
INSERT INTO `sys_role_menu` VALUES ('4028ea815a701416015a7080f45d0031', '40288ab85a5eecc6015a5ef8f2890003', '40288ab85a406a03015a40781a6e0000');
INSERT INTO `sys_role_menu` VALUES ('4028ea815a701416015a7080f45d0032', '40288ab85a5eecc6015a5ef95c700004', '40288ab85a406a03015a40781a6e0000');
INSERT INTO `sys_role_menu` VALUES ('4028ea815a701416015a7080f45d0033', '40288ab85a5eecc6015a5ef9f6160005', '40288ab85a406a03015a40781a6e0000');
INSERT INTO `sys_role_menu` VALUES ('4028ea815a701416015a7080f45d0034', '40288ab85a5eecc6015a5efaa75d0006', '40288ab85a406a03015a40781a6e0000');
INSERT INTO `sys_role_menu` VALUES ('4028ea815a701416015a7080f45d0035', '4028ea815a701416015a7075b4f9001f', '40288ab85a406a03015a40781a6e0000');
INSERT INTO `sys_role_menu` VALUES ('4028ea815a701416015a7080f45e0036', '4028ea815a701416015a70766a7a0020', '40288ab85a406a03015a40781a6e0000');
INSERT INTO `sys_role_menu` VALUES ('49c8460670484af0aeaf24a8d58b926a', '320c2e390d25488eb18fe75261795907', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('4cd3944c941846e08917229dc5b7a186', '40281e815c912406015c9149f7b80044', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('50181df3fae241bd9a3734dd8b34fea2', '1232ea9d3e374e89aef6ec3a1c693da8', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('6ae16da3db794250b3a2ef398ea4bc69', 'dfff75fbd33d4a3c868c3b9d6d528d85', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('6e1ab798645f40ad86568d3ff3f819f2', '40288ab85c9eeb5c015c9f4d1f8e0000', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('701a266facbb4e87a754a271289e1698', '40288ab85c33548d015c33cdc5a600f3', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('70cb3e489ccd42a8b2cdff7914c0839f', '40288ab85c9eeb5c015c9f5fa02e002a', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('73b6a277f9bb45a7a40f7e629c461e08', '40288ab85a5eecc6015a5ef22ad80001', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('750cacefd23c43a4b9a4d4a1c16b07a2', '40288ab85cf8276b015cf82debcb005b', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('782b100135c24677b4bd7b27309ecfd9', '40288ab85c9eeb5c015c9f6572630030', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('796d91aeabc94f7481a7ca19947e9b01', '40288ab85c9eeb5c015c9f65e3a50031', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('79adea4aa6b14d34a55a1bdd2d95bcd0', 'dab0d97279514c73b2ab6ddf427f91d6', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('7d40d0b5bc8b45b78d765c1119c083fb', '40281e815beda90f015bedcf7102000f', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('808301693cf94743b18eb7aefe28e9f8', '40288ab85a5eecc6015a5ef9f6160005', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('90433bd81ac649689c6150151415620f', '43aae5e9ac4b4c39b26316b54b1708ec', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('99b9c431333d44b9bfc0b58312c8576d', '3f9752eb9b7d481a85cdb3c32c442025', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('9a80a9a4c8b34f8f8797f84cd30dea95', '05e3cd68c0e44f288b5605577c54b696', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('9b6f0313094e4df8bd03e5c3bc530782', '40288ab85c9eeb5c015c9f9694480064', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('9ddb04c92db249da9255e2e8f0de7f21', '4028ea815a701416015a7075b4f9001f', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('a1caa8d19d6c48d589a591122d6b140a', '0f6ed028011a4e06a90af8edfa0c9dbb', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('a3c34fbe8dca4c83b5c542cfcf829081', '40288ab85c9eeb5c015c9f626f58002d', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('a420ad6a58e64394bb15691dd701b1a9', '40288ab85c9eeb5c015c9f4e1cd00001', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('a58f2442c02d42258621996853e53d35', '40288ab85c9eeb5c015c9f62e726002e', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('b3491f508345442ca20033fbe422b10b', '40288ab85c9eeb5c015c9f9694480064', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('bdb20d81f1224d9299f5972632ea4107', '40281e815c912406015c914a1bc30045', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('c0dc3a44a73a455799c4a235248c121d', 'a2382df311694fae93d3e801798dd125', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('c171e25414eb4ce28d9cfa6cdf6d1a44', '9202cea7d208446fa14089317ba938c8', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('c30c5c731d074f22979b8cca5041835e', '40288ab85c9eeb5c015c9f672f2e0032', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('c6fc3e54d5b944f5b0fb75df03ab9331', 'fd89335cd9324bdfb1de17c61ced6675', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('c92bd6831b0a4ae3bda883d21e05299a', 'ba31cd4c2b514a3e944c2c6120e6a41d', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('cb3315b0b320497b89246cfd53bd1600', '6f69b26a8a0c4117834f8742b22e5afc', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('cbc96ade94f8448480cdbcb142f18f6d', '40288ab85a5eecc6015a5efaa75d0006', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('d14e93aaaa44439dac9a28b104138572', 'df7449d9e15545c7bdffee270e82aea0', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('d766b882e1ca4905ac19a6cd7092be7d', '40288ab85c9eeb5c015c9f62e726002e', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('d89c9aa2999f4fe5b6e7b439dca8bc60', 'dca06272b9e045cb953507f2ea9970d6', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('da0f8148ef8e48f58c96809050d5fad0', '4028ea815a701416015a70766a7a0020', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('da2e0479f9f34996b65f050c5270f67e', '40288ab85c9eeb5c015c9f65e3a50031', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('dab904096e2245138468be64bc13f928', '40288ab85b604adf015b605023a70000', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('dc71c1083a694650bc76db66a19a645e', '40288ab85c9eeb5c015c9f6572630030', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_role_menu` VALUES ('f4208fc595fc4456989549e5b53f8575', 'e5a287017839419d9dac884d78574153', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('f546d231aad342a193450633f91676ac', '40281e815c54d147015c54daf16c0001', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('fa33688ae0e647dba24ec7743972dd87', '35ff47636f044375b54b6be644996c38', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('fa9a0232fc3748c4a981427c764aa204', '6d53ef7fe9c74146b24e5d00c96a95c1', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_role_menu` VALUES ('ff8c66617a8a4333895ab4f47a61d5d5', '40288ab85c9eeb5c015c9f672f2e0032', '402880e45b5d7636015b5d8baca60000');

-- ----------------------------
-- Table structure for sys_sessions
-- ----------------------------
DROP TABLE IF EXISTS `sys_sessions`;
CREATE TABLE `sys_sessions` (
  `id` varchar(200) NOT NULL DEFAULT '',
  `session` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `realname` varchar(255) DEFAULT NULL COMMENT '真实名称',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `portrait` varchar(250) DEFAULT NULL COMMENT '头像',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `salt` varchar(100) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL COMMENT '邮件',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `status` varchar(255) DEFAULT NULL COMMENT '系统用户的状态',
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `del_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_user_username` (`username`),
  UNIQUE KEY `idx_sys_user_email` (`email`),
  UNIQUE KEY `idx_sys_user_phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('40288ab85ce3c20a015ce3ca6df60000', '测试用户', 'test', null, '2ebb8bee885791cb053cfe142353cb8a', '5a9d6207da81bd4c1cca29d5e3b6695b', 'test@qq.com', '15085980308', '1', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 17:36:44', null, '0');
INSERT INTO `sys_user` VALUES ('4028ea815a3d2a8c015a3d2f8d2a0002', '系统管理员', 'admin', 'http://oss-test-my-jeeweb.oss.gzdata.com.cn/hellows/test/2018/08/24/1535101920920.jpg', '9af085bddb58515c1b391f7483feaca3', '7287174b3c96603d2d28ec8cab59418b', 'test2@qq.com', '14785571304', '1', null, null, '4028ea815a3d2a8c015a3d2f8d2a0002', '2018-08-24 17:36:49', null, '0');

-- ----------------------------
-- Table structure for sys_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_organization`;
CREATE TABLE `sys_user_organization` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `user_id` varchar(32) NOT NULL COMMENT '用户主键',
  `organization_id` varchar(32) NOT NULL COMMENT '部门主键',
  PRIMARY KEY (`id`),
  KEY `sys_user_role_userid` (`user_id`),
  KEY `sys_user_role_roleid` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-部门';

-- ----------------------------
-- Records of sys_user_organization
-- ----------------------------
INSERT INTO `sys_user_organization` VALUES ('2a6fedbc887340fca68b2b377d35f39a', '40288ab85ce3c20a015ce3ca6df60000', '4028ea815a452f69015a45346f7b0001');
INSERT INTO `sys_user_organization` VALUES ('40281e815cfc4624015cfcc8c640000e', '40288ab85cf6aab4015cf6ecea890000', '40288ab85c20329e015c2037a7800003');
INSERT INTO `sys_user_organization` VALUES ('40281e815cfc4624015cfcc8c641000f', '40288ab85cf6aab4015cf6ecea890000', '40288ab85c20329e015c2037d2090004');
INSERT INTO `sys_user_organization` VALUES ('40281e815cfc4624015cfce005b3006e', '40281e815cfc4624015cfcce3d310029', '4028ea815a452f69015a45346f7b0001');
INSERT INTO `sys_user_organization` VALUES ('9ac4cf35fc33474ca0be229289285952', '40288ab85ce3c20a015ce3ca6df60000', '40288ab85b6080e1015b60996d690005');
INSERT INTO `sys_user_organization` VALUES ('c72514f8d6aa4456b93307f687e9b6c1', '4028ea815a3d2a8c015a3d2f8d2a0002', '40288ab85b6080e1015b60996d690005');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) NOT NULL COMMENT '编号',
  `user_id` varchar(32) NOT NULL COMMENT '用户编号',
  `role_id` varchar(32) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`id`),
  KEY `sys_user_role_userid` (`user_id`),
  KEY `sys_user_role_roleid` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('4f4593ff063b4fd7a2eda05d028c8df4', '4028ea815a3d2a8c015a3d2f8d2a0002', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_user_role` VALUES ('519fb0f440204d8db1b608fe93c31a35', '4028ea815a3d2a8c015a3d2f8d2a0002', '402880e45b5d7636015b5d8baca60000');
INSERT INTO `sys_user_role` VALUES ('9a0516d91dec49eca038edf13424de67', '40288ab85ce3c20a015ce3ca6df60000', '40288ab85a362150015a3675ca950006');
INSERT INTO `sys_user_role` VALUES ('f938ba96fa1e40c78a09394d0dcd0785', '40288ab85ce3c20a015ce3ca6df60000', '402880e45b5d7636015b5d8baca60000');

-- ----------------------------
-- Table structure for task_schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `task_schedule_job`;
CREATE TABLE `task_schedule_job` (
  `id` varchar(32) NOT NULL,
  `cron_expression` varchar(255) NOT NULL COMMENT 'cron表达式',
  `method_name` varchar(255) NOT NULL COMMENT '任务调用的方法名',
  `method_params` varchar(255) DEFAULT NULL COMMENT '请求参数',
  `misfire_policy` varchar(4) DEFAULT NULL COMMENT '执行策略',
  `is_concurrent` varchar(255) DEFAULT NULL COMMENT '任务是否有状态',
  `description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `job_status` varchar(255) DEFAULT NULL COMMENT '任务状态',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务分组',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `execute_class` varchar(255) DEFAULT NULL COMMENT 'Spring bean',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名',
  `load_way` varchar(1) DEFAULT NULL COMMENT '加载任务方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_schedule_job
-- ----------------------------
INSERT INTO `task_schedule_job` VALUES ('4ff760aa5e1042158f760fc41a225691', '0/10 * * * * ?', 'run', '', '3', '0', '测试任务', null, null, '1', 'sys', null, null, 'confessTask', '表白定时任务', '1');

-- ----------------------------
-- Table structure for task_schedule_job_log
-- ----------------------------
DROP TABLE IF EXISTS `task_schedule_job_log`;
CREATE TABLE `task_schedule_job_log` (
  `id` varchar(32) NOT NULL COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `method_name` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `method_params` varchar(200) DEFAULT '' COMMENT '方法参数',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(2) DEFAULT '0' COMMENT '执行状态（0正常 1成功 -1失败）',
  `exception_info` text COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of task_schedule_job_log
-- ----------------------------
INSERT INTO `task_schedule_job_log` VALUES ('0005702609b64a1dba7bbfa54815e794', '邮件修复发送定时任务', 'sys', 'run', '', '邮件修复发送定时任务 总共耗时：18毫秒', '1', null, '2018-09-28 11:55:30');