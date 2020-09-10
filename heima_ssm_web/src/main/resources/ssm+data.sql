prompt PL/SQL Developer import file
prompt Created on 2020年5月12日, 星期二 by 28147
set feedback off
set define off
prompt Disabling triggers for MEMBER...
alter table MEMBER disable all triggers;
prompt Disabling triggers for PRODUCT...
alter table PRODUCT disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for TRAVELLER...
alter table TRAVELLER disable all triggers;
prompt Disabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable all triggers;
prompt Disabling triggers for PERMISSION...
alter table PERMISSION disable all triggers;
prompt Disabling triggers for ROLE...
alter table ROLE disable all triggers;
prompt Disabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable all triggers;
prompt Disabling triggers for SYSLOG...
alter table SYSLOG disable all triggers;
prompt Disabling triggers for USERS...
alter table USERS disable all triggers;
prompt Disabling triggers for USERS_ROLE...
alter table USERS_ROLE disable all triggers;
prompt Disabling foreign key constraints for ORDERS...
alter table ORDERS disable constraint SYS_C005438;
alter table ORDERS disable constraint SYS_C005439;
prompt Disabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER disable constraint SYS_C005441;
alter table ORDER_TRAVELLER disable constraint SYS_C005442;
prompt Disabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION disable constraint SYS_C005452;
alter table ROLE_PERMISSION disable constraint SYS_C005453;
prompt Disabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE disable constraint SYS_C005448;
alter table USERS_ROLE disable constraint SYS_C005449;
prompt Deleting USERS_ROLE...
delete from USERS_ROLE;
commit;
prompt Deleting USERS...
delete from USERS;
commit;
prompt Deleting SYSLOG...
delete from SYSLOG;
commit;
prompt Deleting ROLE_PERMISSION...
delete from ROLE_PERMISSION;
commit;
prompt Deleting ROLE...
delete from ROLE;
commit;
prompt Deleting PERMISSION...
delete from PERMISSION;
commit;
prompt Deleting ORDER_TRAVELLER...
delete from ORDER_TRAVELLER;
commit;
prompt Deleting TRAVELLER...
delete from TRAVELLER;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting PRODUCT...
delete from PRODUCT;
commit;
prompt Deleting MEMBER...
delete from MEMBER;
commit;
prompt Loading MEMBER...
insert into MEMBER (id, name, nickname, phonenum, email)
values ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');
commit;
prompt 1 records loaded
prompt Loading PRODUCT...
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('676C5BD1D35E429A8C2E114939C5685A', 'itcast-002', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'itcast-003', '上海五日游', '上海', to_timestamp('25-04-2018 14:30:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1800, '魔都我来了', 0);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('9F71F01CB448476DAFB309AA6DF9497F', 'itcast-001', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
commit;
prompt 3 records loaded
prompt Loading ORDERS...
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '12345', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '54321', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('2FF351C4AC744E2092DCF08CFD314420', '67890', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('E4DD4C45EED84870ABA83574A801083E', '11111', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('55F9AF582D5A4DB28FB4EC3199385762', '33333', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('3081770BC3984EF092D9E99760FDABDE', '55555', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
commit;
prompt 9 records loaded
prompt Loading TRAVELLER...
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', 0, '123456789009876543', 0);
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', 0, '987654321123456789', 1);
commit;
prompt 2 records loaded
prompt Loading ORDER_TRAVELLER...
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');
commit;
prompt 9 records loaded
prompt Loading PERMISSION...
insert into PERMISSION (id, permissionname, url)
values ('5555', 'ROLE_USER', '/**');
insert into PERMISSION (id, permissionname, url)
values ('97BA1668784C4E47955D2DFAE7BC26D4', 'ROLE_VISITOR', '/visitor');
commit;
prompt 2 records loaded
prompt Loading ROLE...
insert into ROLE (id, rolename, roledesc)
values ('EA2A477360E54F3DAF978615D5711067', 'fanor', '很帅');
insert into ROLE (id, rolename, roledesc)
values ('1111', 'ADMIN', 'vip');
insert into ROLE (id, rolename, roledesc)
values ('2222', 'USER', 'vip');
insert into ROLE (id, rolename, roledesc)
values ('B6AD4B6A56AC4B718C62ACD9FC47EE3D', 'visitor', '/visitor');
commit;
prompt 4 records loaded
prompt Loading ROLE_PERMISSION...
insert into ROLE_PERMISSION (permissionid, roleid)
values ('5555', '1111');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('5555', '2222');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('5555', 'EA2A477360E54F3DAF978615D5711067');
insert into ROLE_PERMISSION (permissionid, roleid)
values ('97BA1668784C4E47955D2DFAE7BC26D4', '2222');
commit;
prompt 4 records loaded
prompt Loading SYSLOG...
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A3CED749F57D43CD8F3BE47FED66D098', to_timestamp('12-05-2020 17:54:14.353000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 16, '[类名] com.itheima.ssm.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1183A9C9FFAD4B5E8640C6E0FD9C3640', to_timestamp('12-05-2020 17:54:16.886000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 6, '[类名] com.itheima.ssm.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('61F69A4B3C9B4C3898D4C1A265611490', to_timestamp('12-05-2020 17:54:22.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 2, '[类名] com.itheima.ssm.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E7D152029DD349AA83EDD16ACC01EFC3', to_timestamp('12-05-2020 17:54:26.107000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/permission/findAll.do', 4, '[类名] com.itheima.ssm.controller.PermissionController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8A76FF9DC70D45C19A5AA52B727DCB4F', to_timestamp('12-05-2020 17:54:31.347000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 22, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('16BE81AA23FF4E27997F17C8FD9EB2A8', to_timestamp('12-05-2020 17:52:34.817000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 23, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('49B62703DF3D40BEB64C087C77C831EA', to_timestamp('12-05-2020 17:52:40.451000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 5, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('21924A65F98D4E258C60600C690110EC', to_timestamp('12-05-2020 17:52:50.472000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 3, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('F99B340097614A61AB394C8F5F32BA40', to_timestamp('12-05-2020 17:52:51.589000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 13, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3EE22C1AF16346F3BBC543EC4C324428', to_timestamp('12-05-2020 17:52:58.194000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/role/findAll.do', 20, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('982230236A8D4E4ABE7D6FF67D25E160', to_timestamp('12-05-2020 17:53:01.581000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/role/findAll.do', 4, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('0BBA5FACA8AD44639A349FEB27B24668', to_timestamp('12-05-2020 17:53:04.336000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/role/findAll.do', 62, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('4C905CDA7E714B878D015F35DC4B3881', to_timestamp('12-05-2020 17:53:17.310000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 4, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C1732662791F472AABA65652CFE5E277', to_timestamp('12-05-2020 17:53:20.348000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 10, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('8C6BF18ECAD34D64853C9EDCE3A6B960', to_timestamp('12-05-2020 17:54:08.624000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/role/findAll.do', 3, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('ADF09102F8034278B3345CEDA79DDA5C', to_timestamp('12-05-2020 17:54:10.318000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/role/findAll.do', 5, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E7C5ABA8AF9D4BD383629493BABEEA05', to_timestamp('12-05-2020 17:54:40.990000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/product/findAll.do', 11, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EAB66C733003486EB29B4CE28E817B2D', to_timestamp('12-05-2020 17:54:48.822000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5487982F8C454F57BB8DE6B8E66D8601', to_timestamp('12-05-2020 17:55:25.013000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('903A196C608542FFA679AA2501DF6E1B', to_timestamp('12-05-2020 17:55:29.531000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7693ABFFD3A343A6B710F130E5971C6A', to_timestamp('12-05-2020 17:55:34.373000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 2, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('08F5D81E2A8642CEA4685B0619E0CF94', to_timestamp('12-05-2020 17:55:38.487000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 8, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9345AB726E92406E9A5815DFAB551368', to_timestamp('12-05-2020 17:55:40.585000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/product/findAll.do', 3, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9383675444B947ED9B3C3152ECDC38DF', to_timestamp('12-05-2020 17:55:45.799000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 57, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('3A6466DB27664F79AD163D2A3190B9A5', to_timestamp('12-05-2020 17:55:51.781000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 12, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('117CF77218D44A2B8CA804DD6E66D869', to_timestamp('12-05-2020 17:55:52.878000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7234DCED6EC9444CB065DB817728FB17', to_timestamp('12-05-2020 17:55:53.767000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 11, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('57B8E65048F141BBBB800EF786D3D76D', to_timestamp('12-05-2020 17:55:56.667000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/product/findAll.do', 5, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C718A168C1FF49EDA946D888F4AF27B7', to_timestamp('12-05-2020 17:56:01.702000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 9, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B0468779EAE34C03B7A14F02527F69C6', to_timestamp('12-05-2020 17:56:05.641000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 10, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C746B7B48BC6441EA94BC9C577F8D7DF', to_timestamp('12-05-2020 17:52:46.043000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 6, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('AB39DAD868C94FA189FBBD2B0FB8DA0D', to_timestamp('12-05-2020 17:52:49.084000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/user/findAll.do', 16, '[类名] com.itheima.ssm.controller.UserController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A71D32D8D19C4F02B8A034FDE7B32D87', to_timestamp('12-05-2020 17:56:06.545000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 8, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('9C86BF0C8FD647DB9FB5CBC685378C7F', to_timestamp('12-05-2020 17:56:08.160000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 51, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1F90DE44CB3243029EB9E95F661D4BCD', to_timestamp('12-05-2020 17:56:09.703000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'tom', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 10, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
commit;
prompt 35 records loaded
prompt Loading USERS...
insert into USERS (id, email, username, password, phonenum, status)
values ('53F24FF383294BA9BC482E9240250D1B', 'fox@itcast.cn', 'fox', '$2a$10$6fqAhTKTYazf4I03evc6MOTKt7y44TnKPnpav5cN5nLcAVkiAPOq2', '13444444444', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('3D1C31C88ADA4EA7BB48F6BDFFD011CE', '125254626@qq.com', '9999', '$2a$10$xFAbSYz5tjUpSvSGrR/Wg.zlaKDF9Q4tgpvL/D/HNMjLPCrmBcaiW', '13644444444', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('111-222', 'tom@itcast.cn', 'tom', '$2a$10$6fqAhTKTYazf4I03evc6MOTKt7y44TnKPnpav5cN5nLcAVkiAPOq2', '133333333333', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('81640419E4724723BD46409FF405007E', '125451626@qq.com', 'zrf', '$2a$10$SByVkaufhgWBNW4o1WThs.2nvOluZIftCpseWaB3Bi0cuVmNesOTy', '17844444444', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('6A98E42085CF4AF486A88EBF90F473B6', 'fax@itcast.cn', 'fax', '$2a$10$OJWqLng6wDx018ux1f65a.Mm0DN3rmP5wk2i0aGw2bEYkq6Jo9HCa', '13684444444', 1);
commit;
prompt 5 records loaded
prompt Loading USERS_ROLE...
insert into USERS_ROLE (userid, roleid)
values ('111-222', '1111');
insert into USERS_ROLE (userid, roleid)
values ('111-222', '2222');
insert into USERS_ROLE (userid, roleid)
values ('3D1C31C88ADA4EA7BB48F6BDFFD011CE', '2222');
insert into USERS_ROLE (userid, roleid)
values ('3D1C31C88ADA4EA7BB48F6BDFFD011CE', 'EA2A477360E54F3DAF978615D5711067');
insert into USERS_ROLE (userid, roleid)
values ('53F24FF383294BA9BC482E9240250D1B', '1111');
insert into USERS_ROLE (userid, roleid)
values ('53F24FF383294BA9BC482E9240250D1B', '2222');
insert into USERS_ROLE (userid, roleid)
values ('81640419E4724723BD46409FF405007E', '1111');
commit;
prompt 7 records loaded
prompt Enabling foreign key constraints for ORDERS...
alter table ORDERS enable constraint SYS_C005438;
alter table ORDERS enable constraint SYS_C005439;
prompt Enabling foreign key constraints for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable constraint SYS_C005441;
alter table ORDER_TRAVELLER enable constraint SYS_C005442;
prompt Enabling foreign key constraints for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable constraint SYS_C005452;
alter table ROLE_PERMISSION enable constraint SYS_C005453;
prompt Enabling foreign key constraints for USERS_ROLE...
alter table USERS_ROLE enable constraint SYS_C005448;
alter table USERS_ROLE enable constraint SYS_C005449;
prompt Enabling triggers for MEMBER...
alter table MEMBER enable all triggers;
prompt Enabling triggers for PRODUCT...
alter table PRODUCT enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for TRAVELLER...
alter table TRAVELLER enable all triggers;
prompt Enabling triggers for ORDER_TRAVELLER...
alter table ORDER_TRAVELLER enable all triggers;
prompt Enabling triggers for PERMISSION...
alter table PERMISSION enable all triggers;
prompt Enabling triggers for ROLE...
alter table ROLE enable all triggers;
prompt Enabling triggers for ROLE_PERMISSION...
alter table ROLE_PERMISSION enable all triggers;
prompt Enabling triggers for SYSLOG...
alter table SYSLOG enable all triggers;
prompt Enabling triggers for USERS...
alter table USERS enable all triggers;
prompt Enabling triggers for USERS_ROLE...
alter table USERS_ROLE enable all triggers;
set feedback on
set define on
prompt Done.
