### 1.MySQL 慢查询

**定位MySQL 执行较慢的语句**

启动MySQL 服务并设置参数

```
mysql_safe --user=mysql --slow_query_log --show_query_log_file=/tmp/show-query.log --long_query_time=1
```

- show_query_log	//是否启动慢查询
- slow_query_log_file      //慢查询日志文件存放的位置
- long_query_time         //慢查询的时间限制 ,1 为1s,即执行语句时超过1s 时保存到这个日志

可以借助 mysql 内置命令来查看日志

```
mysqldumpslow /tmp/slow-query.log
```



