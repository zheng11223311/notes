### 1.MySQL数据操作之子查询简介

**子查询(SubQuery) 是指出现在其他SQL 语句内的SELECT 子句,例如:**

```sql
SELECT * FROM tab1 WHERE col1=(SELECT col2 FROM tab2);
```

其中SELECT * FROM tab1,称为Outer Query/Outer Statement, SELECT col2 FROM tab2,被称为SubQuery

### 2.MySQl 数据库操作之子查询

1. 子查询之嵌套在查询内部且必须出现在圆括号内
2. 子查询可以包含多个关键字或条件
   1. 如:DISTINCT,GROUP BY,ORDER BY,LIMIT ,函数等
3. 子查询的外层查询可以是:SELECT,INSERT,UPDATE,SET 或DO
   1. 注意:外层查询指的是SQL 命令的统称
4. 子查询的返回值:
   1. 子查询可以返回标量,一行,一列或子查询

### 3.MySQL数据操作之由比较运算符引发的子查询

**1.使用比较运算符的子查询**

```
=	等于
>	大于
<	小于
>=	大于等于
<=	小于等于
<>	不等于
!=	不等于
<=>	
示例:
$c = $a <=> $b;
如果 $a > $b, 则 $c 的值为 1。
如果 $a == $b, 则 $c 的值为 0。
如果 $a < $b, 则 $c 的值为 -1。
```

**2.语法结构**

```
operand comparsion_operator subquery;
```

**3.用ANY,SOME 或ALL 修饰的比较运算符**

```
operand comparsion_operator ANY(subquery);
operand comparsion_operator SOME(subquery);
operand comparsion_operator ALL(subquery);
```

| 运算符/关键字 | ANY    | SOME   | ALL    |
| ------------- | ------ | ------ | ------ |
| >,>=          | 最小值 | 最小值 | 最大值 |
| <,<=          | 最大值 | 最大值 | 最小值 |
| =             | 任意值 | 任意值 |        |
| <>,!=         |        |        | 任意值 |

**示例:**

```sql
SELECT id FROM user WHERE id>(SELECT ROUND(AVG(id),2) FROM user);
--AVG(id)	计算所有id 的平均值
--ROUND(AVG(id),2) 将AVG(id)得到的值保留2位小数

SELECT id FROM user WHERE id>ANY(SELECT ROUND(AVG(id),2) FROM user);	-- 大于最小值
```

### 4.MySQL数据操作之由[NOT] IN EXISTS 引发的子查询

**语法结构**

```
operand comparsion_operator [NOT] IN (subquery)
=ANY 运算符与IN 等效
!=ALL 或者<>ALL 运算符与NOT IN 等效
使用[NOT]EXISTS 的子查询
如果子查询返回任何行,EXISTS 将返回TRUE,否则为FALSE;
```

**示例:**

```sql
SELECT id FROM user WHERE id!=ALL(SELECT ROUND(AVG(id),2) FROM user));
SELECT id FROM user WHERE id NOT IN (SELECT ROUND(AVG(id),2) FROM user));
--两句是等效的

SELECT id FROM user WHERE id=ANY(SELECT ROUND(AVG(id),2) FROM user));
SELECT id FROM user WHERE id  IN (SELECT ROUND(AVG(id),2) FROM user));
--两句是等效的
```

