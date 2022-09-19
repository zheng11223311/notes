### 1.MySQL数据操作之连接的语法结构

MySQl 在SELECT 语句,多表更新,多表删除语句中都支持JOIN 操作

**1.语法结构**

```sql
table_reference	--参照表
{[INNER|CROSS]JOIN|{LEFT |RIGHT}[OUTER] JOIN} --内连接|外连接
table_reference
ON conditional_expr	--参照条件
```

**2.数据参照表**

table_reference

```sql
table_name [[AS] alias]|table_subquery [AS] alias
数据表可以使用tab_name AS alias_name 或tab_name alias_name 赋予别名
table_subquery 可以作为子查询使用在FROM 子句中,这样的子查询必须为其赋予别名
```

### 2.MySQL数据操作之内连接INNER JOIN

**1.连接类型**

```
INNER JOIN ,内连接
	在MySQL 中,JOIN,CROSS JOIN 和INNER JOIN 是等价的
LEFT[OUTER]JOIN ,左外连接
RIGHT[OUTER]JOIN,右外连接
```

**2.连接条件**

使用ON 关键字来设定连接条件,也可以使用WHERE 来代替

通常使用ON 关键字来设定连接条件

使用WHERE 关键字进行结果集记录的过滤

**3.内连接**

显示左表及右表符合连接条件的记录(交集)

**示例:**

```sql
SELECT user.id FROM user INNER JOIN test WHERE user.id=test.id;
```

### 3.MySQL 数据操作之外连接OUTER JOIN

**1.左外连接**

显示左表的全部记录及右表符合连接条件的记录,右表不符合条件的显示为NULL

**示例:**

```sql
SELECT u.id FROM user AS u LEFT JOIN test AS t WHERE u.id=t.id;
```

**2.右外连接**

显示右表的全部记录及左表符合连接条件的记录,左表不符合条件的显示为NULL

**示例:**

```sql
SELECT u.id FROM user AS u RIGHT JOIN test AS t WHERE u.id=t.id;
```

### 4.MySQL 数据操作之多表连接

显示多个表的记录

**示例:**

```sql
SELECT u.id FROM user AS u INNER JOIN test AS t ON  u.id=t.id
							INNER JOIN test1 AS t1 ON t1.id=u.id
							INNER JOIN test2 AS t2 ON t2.id=u.id;
							
--INNER JOIN test1 AS t1 ON t1.id=u.id 等表, INNER 前面的默认都为user 表
--等同语句
SELECT u.id, FROM user AS u,test AS t,test1 AS t1,test2 AS t2 WHERE u.id=t.id AND t1.id=u.id AND t2.id=u.id;
```

### 5.MySQL 数据操作之关于连接的几点说明

A LEFT JOIN B join_condition

数据表B 的结果集依赖数据表A

数据表A 的结果集根据左连接条件依赖所有数据表(B 表除外)

左外连接条件决定如何检索数据表B(在没有指定WHERE 条件的情况下)

如果数据表A 的某条记录符合WHERE 条件,但是在数据表B 不存在符合连接条件的记录,将生成一个所有列为空的额外的B 行

如果使用内连接查找记录在连接数据表中不存在,并且在WHERE 子句中尝试以下操作:

col_name IS NULL 时,如果col_name 被定义为NOT NULL , MySQL 将在找到符合连接执行条件的记录后停止搜索更多的行

### 6.MySQL 数据操作之自身连接查询

同一个数据表对其自身进行连接

**示例:**

```sql
SELECT u.id from user AS u LEFT JOIN user AS u1 ON u.id=u1.id;
```

### 7.MySQL 数据操作之多表删除

```sql
DELETE tab_name [.*][,tab_name[.*]]..from tab_references [WHERE where_condition]
```

**示例:**

```sql
DELETE u1 FROM user AS u1 LEFT JOIN user AS u1 WHERE u.id=u1.pid;
```

