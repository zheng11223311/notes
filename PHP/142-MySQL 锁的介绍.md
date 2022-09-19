### 1.MySQL 锁的介绍

**1.锁分类和特点**

**读锁**

读锁不会影响其他用户对该表的读操作,但是会阻塞用户对该表的写操作

**写锁**

写锁会阻塞其他用户对该表的读操作和写操作

**2.操作过程**

**查看当前表锁的争用情况**

```
mysql>show status like 'table_locks_waited';
```

**设置参数**

```
mysql>set global concurrent_insert=0;
```

**3.读写并行**

写入操作

```
mysql>insert into aa(title) select age from aa;
```

读取操作

```
mysql>select * from aa limit 10;
```

写入时,无法读取数据,读取数据一直在等待,直到写入操作完成之后才读取成功