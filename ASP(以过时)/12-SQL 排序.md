### 1.使用SQL 排序

**SELECT...FROM...ORDER BY...语法(排序)**

有时候我们会需要宝筛选出来的记录依次递增或递减顺序来进行排序,那么我们加上order by 排序句子

```
select * from 成绩单 order by 语文 asc 		//asc 从低到高,desc 从高到低
```

**可以先筛选在排序**

```
select * from 成绩单 where 语文>90 order by 语文 asc 
```

**注意:**筛选出来的数据还可以作为一个表进行多层筛选,例如

```
select * from (select * from 成绩单 order by 语文 asc) order by 语文 asc
```

### 2.SQL 常用函数

**合计函数:SUM**

```
select sum(语文) from 成绩单			'返回所有语文分数的总和'
```

**最大最小值:max/min**

```
select max(语文) from 成绩单		'筛选出语文最大值'
```

**返回集合中项目的数目:count**

```
select count(语文) from 成绩单		'返回总语文共多少条数据,如果有一条语文为空,不会筛选这条记录'
```

**返回集合中项目的平均值:avg**

```
select avg(语文) from 成绩单	
```

### 3.SQL 新增,删除,修改

我们分别使用了SQL 语句的INSERT.DELETE,UPDATE 指令去完成新增,删除,修改记录的工作

**1.使用SQL 语句的INSERT 指令去新增记录**

SQL 语句的INSERT 指令可以在表内插入新增的记录

**格式:    insert into 表名称(字段1,字段2,...) values (数据1,数据2,...)**

如果按照字段的顺序进行插入(不能少任何字段的数据),可以省略字段名称

**格式:    insert into 表名称 values (数据1,数据2,...)**

举例来说,假设我们想在"成绩表"表内插入一条新的记录,器字段分别为"All","陈小生","88","89","92",那么我们可以这么写:

```
dim sql,conn
Set conn=Server.CreateObject("ADOOB.Connection")
conn.ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="$server.mapPath("数据库名.mdb")
conn.open

sql="insert into 成绩单(学号,姓名,语文,数学,自然) values ('All','陈小生',88,89,92)"
conn.execute(sql)
```

**程序解释:**execute 可以执行一个SQL 语句

**2.使用SQL 语句的update 指令去更新记录**

SQL 的语句的update 指令可以更新表内现有的数据

**格式:   update 表名称 set 字段1=数据1,字段2=数据2 where 条件**

```
dim sql,conn
Set conn=Server.CreateObject("ADOOB.Connection")
conn.ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="$server.mapPath("数据库名.mdb")
conn.open

sql="update 成绩单 set 学号='All',姓名='陈小生',语文=88,数学=89,自然=92) where 语文>80"
conn.execute(sql)
```

**3.使用SQL 语句的delete 指令去删除记录**

SQL 语句的delete 指令可以删除表内现有的记录

**格式:    delete*from 成绩单 where 条件**

```
dim sql,conn
Set conn=Server.CreateObject("ADOOB.Connection")
conn.ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="$server.mapPath("数据库名.mdb")
conn.open

sql="delete *(* 可以省略) from 成绩单 where 语文>80"
conn.execute(sql)
```

