### 1.MySQL 数据库的备份与还原

**导出**

```sql
mysqldump 参数 >>导出SQL 文件路径
```

**导入:**

```sql
mysql 参数 < 导入SQL 文件路径
```

将binlog 文件导出SQL 文件

Mysqlbinlog 参数和binlog 文件路径>>SQL 文件路径

**清空以前的值和日志**

```sql
RESET MASTER
```

退出数据库,在cmd上进行数据的导出,生成日志为2的日志文件(记录生成日志之后的所有操作,便于恢复数据),要导出的表为lmonkey,导出名为lmonkey.sql

![Snipaste_2021-11-03_22-33-42](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-33-42.png)

![Snipaste_2021-11-03_22-36-29](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-36-29.png)

![Snipaste_2021-11-03_22-38-39](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-38-39.png)

导出并刷新日志  -F 刷新

![Snipaste_2021-11-03_22-39-36](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-39-36.png)

**在log 下存放日志00002,查看日志**

```sql
mysqlbinlog --no-defaults mysql_log.000002
--no-defaults 忽略默认字符集
```

![Snipaste_2021-11-03_22-44-12](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-44-12.png)

**查看并导出为002bin 数据库(将二进制转化为我们能看得懂的)**

![Snipaste_2021-11-03_22-48-01](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-48-01.png)

**导入数据表时,如果不存在对应的数据库名的数据库,要自己创建一个对应数据库名的数据库**

![Snipaste_2021-11-03_22-57-52](D:\学习\wanye\PHP\img\Snipaste_2021-11-03_22-57-52.png)

将日志转化成的数据库导入,这里报的错误上节课的GTID 错误,这里已经关掉了,数据已经导入,对数据操作没有影响,(日志包含所有的操作信息,即数据库信息,如果没有备份而删除数据时,使用日志恢复数据)