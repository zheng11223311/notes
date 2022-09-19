### 1.MySQL 主从复制

当一台服务器负载到一定程度时,需要添加额外的MySQL 服务器来提供服务,主从复制时启动两台MySQL 服务器,一台负责读取数据,另外一台负责更新数据,而两台MySQL 的数据始终保持同步

### 操作流程

**克隆一台服务器**

1.删除mac 地址,修改新服务IP

```
vim /etc/sysconfig/network-scripts/ifcfg-eth0
删除
HWADDR=00:0c:29:a5:74:85
```

2.删除文件

```
cd /etc/udev/rules.d/
rm -rf 70-persistent-net.rules
```

3.重启 centos

```
reboot
```

**主服务器配置**

1.修改主配置文件 `/etc/my.cnf`

```
[mysqld]
log-bin=mysql-bin    //[必须]启用二进制日志
server-id=1
```

2.重启mysql 服务

```
mysqladmin -u root -p shutdown
```

3.创建mysql用户并授权

```
mysql>GRANT REPLICATION SLAVE ON *.* to 'slaver'@'%' identified by  '123456';
//GRANT 授权
// REPLICATION SLAVE  主从复制的权限
//  ON  赋值给哪个库,表
// *.*   所有库下所有表
//  'slaver'@'%'   用户名slaver % 代表允许任意ip 段来连接
//  identified by  '123456'   密码为123456
```

4.查看当前服务器信息

```
mysql>show master status;
```

**从服务器配置**

1.修改主配置文件 `/etc/my.cnf`

```
[mysqld]
server-id=2			//这里必须和主服务器区分开
```

2,设置主服务器相关参数

```
mysql>change master to master_host ='192.168.209.250',master_user='slaver',master_passsword='123456',master_log_file='mysql-bin.000018',master_log_pos=107;
//master to master_host ='192.168.209.250'  与那台主服务器连接
//master_user='slaver',master_passsword='123456'  主服务器的账号,密码
//master_log_file='mysql-bin.000018'  主服务器日志文件是第几个,以下参数在主服务器的show master status 中查看
//master_log_pos=107  日志位置
```

3.启动同步

```
mysql>start slave
```

4.查看从服务器状态

```
mysql>show slave status\G;
显示
Slave_IO_Running:YES
Slave_SQL_Running:YES   //表示连接成功
```

主服务器写,从服务器读