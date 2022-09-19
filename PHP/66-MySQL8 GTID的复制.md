### 1.MySQL8 数据库之基于GTID 的复制

1. 基于GTID 的复制时MySQL v5.6 版本以后支持
2. 基于GTID 的复制与基于日志点的复制存在很大的差异

![Snipaste_2021-11-03_21-12-00](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-12-00.png)

**遗漏或重复导致数据不一致**

![Snipaste_2021-11-03_21-12-55](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-12-55.png)

事务可以回滚,执行一次保证不会重复

**1.什么是GTID?**

GTID 即全局事务ID,其保证为每一个在主上提交的事务在复制集群中可以生成一个唯一的ID

```
GTID=source_id:transaction_id

--source_id  MySQL在data 中存放的id
--transaction_id 新生成的id
```

### 2.MySQL8 数据库之基于GTID 的复制步骤

**在主服务器上创建复制用户,赋值权限**

```sql
CREATE USER 'user_name'@'x.x.x.x'IDENTIFIED WITH mysql_native_password By 'password';
GRANT REPLICATION SLAVE ON *.* TO 'user_name'@'%';
```

**基于GTID 配置主数据库服务器**

```
Log_bin=mysql 二进制日志
Server_id=唯一id
Gtid_mode=on
Enforce-gtid-consistency=on  强制GTID 一致性(安全)
	CREATE TABLE...SELECT	查询并创建表这条语句 不能在这里使用
	CREATE tempporary table	创建临时表也不能使用
Log-slave-updates=on	在从服务器中记录传过来的主服务器修改日志
```

**基于GTID 配置从数据库服务器**

```sql
Log_bin=mysql 二进制日志
Server_id=唯一id
Replay_log=中继日志
Gtid_mode=on
Enforce-gtid-consistency=on  强制GTID 一致性(安全)
Log-slave-updates=on
Read_only=on	[建议]
Master_info_repository=TABLE	[建议]	将master 信息存到表里
Relay_log_info_repository=TABLE	[建议]	将中继日志存到表里面
存到表里的好处,一旦操作错误,可以通过事务回滚机制,直接回滚到原来状态
```

**初始化从服务器数据**

```sql
mysqldump --master-data=2 --single-transaction
```

**启动基于GTID 的复制**

```
CHANGE MASTER TO
MASTER_HOST='master_host_ip',
MASTER_PASSWORD='password',
MASTER_AUTO_POSITION=1		自动增长值
```

**1.创建复制用户并修改规则**

![Snipaste_2021-11-03_21-47-11](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-47-11.png)

**2.赋值权限**

**3.将日志存到表里**

![Snipaste_2021-11-03_21-49-29](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-49-29.png)

**4.配置信息**

![Snipaste_2021-11-03_21-51-20](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-51-20.png)

**重启mysql**

```sql
--关闭mysql
net stop mysql;
--打开 mysql
net start mysql;
```

**5.设置从服务器my.ini 配置信息**

![Snipaste_2021-11-03_21-54-17](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-54-17.png)

重启从服务器mysql

**6.主服务器数据导出,取名为sql.sql,复制数据库到从服务器中(位置和主服务导出来时的位置一样)**

![Snipaste_2021-11-03_21-59-00](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-59-00.png)

![Snipaste_2021-11-03_21-59-58](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_21-59-58.png)

**启动从服务器**

![Snipaste_2021-11-03_22-03-05](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-03-05.png)

**导入之前要清除值**

reset slave  清除从服务器值

reset master 清除主服务器值

![Snipaste_2021-11-03_22-05-24](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-05-24.png)

**启动从服务器**

![Snipaste_2021-11-03_22-09-21](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-09-21.png)

由于值已经被清除了,为空.自己定义一个值为1

**查看从服务器状态**

![Snipaste_2021-11-03_22-10-57](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-10-57.png)

**启动从服务器,查看状态**

![Snipaste_2021-11-03_22-17-33](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-17-33.png)

![Snipaste_2021-11-03_22-18-32](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-18-32.png)

**请求主服务器成功**

![Snipaste_2021-11-03_22-20-12](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-20-12.png)

主服务器插入值,从服务器查询值

monkey 为数据库 ,lmonkey 为数据表

### 3.MySQL8 数据库之基于GTID 的复制优缺点

**优点:**

可以很方便的进行故障转移

从库不会丢失任主库上的任何修改

**缺点:**

故障处理比较复杂

对执行的SQL 有一定的限制
