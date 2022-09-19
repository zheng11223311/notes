### 1.MySQL8 数据库之主从复制

为什么要做主从复制(两表同步)?

1. 在业务复杂的系统中,有这么一个情景,有一句SQL 语句需要锁表,导致展示不能使用读的服务,那么就很影响运行中的业务,使用主从复制,让主库负责写,从库负责读,这样,即使主库出现了锁表的情景,通过读从库也可以保证业务的正常运行
2. 做数据的热备
3. 架构的扩展,随着业务量越大,I/O 访问频率过高,单机无法满足,此时多库的存储,降低磁盘I/O 访问频率,提高单个机器的I/O 性能

![Snipaste_2021-11-02_20-25-53](D:\学习\wanye\PHP\img\Snipaste_2021-11-02_20-25-53.png)

将主库master 需要的操作写入日志,从库访问连接主库,主库将日志传送给从库,从库根据日志进行操作和供应读取

### 2.MySQL8 数据库之基于日志点的复制配置步骤

**在主服务器上创建复制用户,赋值权限**

```sql
CREATE user 'user_name'@'x.x.x.x'IDENTIFIED BY 'password';	--创建复制用户
GRANT REPLICATION SLAVE ON *.* TO 'user_name'@'%';	--赋值权限,*.* 代表所有的库所有的表,直接一个%代表所有IP
```

**1.配置主机服务器MySQL 配置文件My.ini**

1. 1.设置bin_log
   1. log_bin=MySQL 日志文件路径
2. 设置server_id
   1. server_id=可以选择主机IP 地址后段, 表示唯一编号

**2.配置从服务器MySQL 配置文件My.ini**

1. 设置bin_log
   1. log_bin=mysql 日志文件路径
2. 设置server_id
   1. server_id 可以选择主机IP 地址后段,表示唯一编号,不能与主服务器相同
3. 3.设置relay_log 中继日志
   1. relay_log=mysql-relay-bin
4. [可选]设置log_slave_updates 允许日志记录到从服务器本机的二进制文件中
   1. log_slave_updates=on
5. [可选]设置replay_only 只读属性,可以防止没有权限的用户进行写操作
   1. read_only=on

**3.初始化从服务器数据**

```sql
mysqldump-master-data=2 --single-transaction --triggers --routines --all-databases -u root -p >>导出文件路径
```

**参数介绍**

```
--master-data	可以把binlog 的位置和文件名添加到输出中,设置等于2 会加上注释前缀
--single-transaction	设置事务的隔离级别,重复读取,不会对数据造成影响
--triggers	备份所有的触发器
--routines	备份储存过程和函数
--all-databases 所有库
--flush-logs	刷新日志
```

**4.启动复制连路**

```sql
CHANGE MASTER TO
MASTER_HOST='master_host_ip',
MASTER_USER='master_user',
MASTER_PASSWORD='pasword',
MASTER_LOG_FILE='mysql_log_filename',
MASTER_LOG_POS=值;
```

表示从从库从主库的什么位置开始备份二级制文件名及偏移量

**5.启动从服务器**

启动或停止命令:

```sql
START SLAVE|STOP SLAVE;
```

查看从服务器状态:

```sql
SHOW SLAVE STATUS;
```

### 3.MySQL8 数据库之基于日志点的复制

**创建复制用户**

**示例:**

```sql
CREATE user 'lmonkey'@'172.16.39.%'IDENTIFIED BY '123456';
```

**% 代表所有**

在cmd 中(非mysql 控制台)输入ipconfig 找到自己的ip

<img src="D:\学习\wanye\PHP\img\Snipaste_2021-11-02_21-13-02.png" alt="Snipaste_2021-11-02_21-13-02"  />

**创建复制权限**

```sql
GRANT REPLICATION SLAVE ON *.* TO 'lmonkey'@'172.16.39.%';
```

![Snipaste_2021-11-03_20-16-37](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-16-37.png)

修改my.ini 配置文件,并在根目录下创建log 文件夹

![Snipaste_2021-11-03_20-18-37](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-18-37.png)

重启mysql,如下

```sql
--关闭mysql
net stop mysql;
--打开 mysql
net start mysql;
```

自动生成索引文件和日志文件

**在另一台电脑上开启从服务器,步骤如下**

修改配置,并在根目录下创建log 文件夹

![Snipaste_2021-11-03_20-27-03](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-27-03.png)

重启mysql,如下

```sql
--关闭mysql
net stop mysql;
--打开 mysql
net start mysql;
```

(在主服务器cmd中执行)主库导出数据,导出名为all.sql 的数据库

![Snipaste_2021-11-03_20-33-02](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-33-02.png)

![Snipaste_2021-11-03_20-35-21](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-35-21.png)

**复制all.sql 到从服务器,从服务器导入数据**

![Snipaste_2021-11-03_20-40-27](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-40-27.png)

**启动复制连路**

![Snipaste_2021-11-03_20-44-43](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-44-43.png)

```
MASTER_LOG_FILE='mysql_log_filename',
MASTER_LOG_POS=值;  的值在all.sql 中可以查看
```

![Snipaste_2021-11-03_20-43-29](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-43-29.png)

**在主服务器中也可以查看**

![Snipaste_2021-11-03_20-44-52](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-44-52.png)

**从服务器上查看相关的信息**

![Snipaste_2021-11-03_20-48-14](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-48-14.png)

**主服务器修改密码规则,从服务器才能连接上**

![Snipaste_2021-11-03_20-57-33](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-57-33.png)

**从服务连接上主服务器**

![Snipaste_2021-11-03_20-59-03](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_20-59-03.png)

**主服务器选择数据库,并插入数据**

![Snipaste_2021-11-03_21-00-33](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-00-33.png)

**从服务器选择数据库,并查看数据**

![Snipaste_2021-11-03_21-01-38](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-01-38.png)

**优点:**

是MySQL 最早支持复制技术,BUG 相对较少,对SQL 查询没有任何限制

**缺点:**

故障转移时从新获取新的日志点信息比较难(MASTER_LOG_POS=值; 比较难得到)

