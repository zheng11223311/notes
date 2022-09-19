### 1.MySQL 数据操作之插入数据

**1.插入记录**

方法1:

```sql
INSERT [into] tab_name [(col_name,...)]{VALUES | VALUE}({expr |DEFAULT},...),(...),(...);
```

**示例:**

```sql
INSERT [into] user (id,id1) VALUES(1,2);
--VALUES 和VALUE 是一样的效果
--插入多条数据
--使用默认约束default
INSERT [into] user (id,id1) VALUES(1,2),(3,default);
--插入的值要与表中的字段一一对应(包括顺序,类型)才能省略写字段名,不能少
INSERT [into] user VALUES(1,2),(3,default);
```

方法2:一次只能插入一条语句

```sql
INSERT [into] tab_name SET col_name={expr |DEFAULT},...;
```

**示例:**

```sql
INSERT into user SET id=1,name='小飞';
```

说明:与第一种方式的区别在于此方法可以使用子查询(SubQuery)

方法3:

```sql
INSERT [into] tab_name [col_name,...] SELECT ...;
```

**示例:**

```sql
INSERT test(id) SELECT id FROM user WHERE id>0;		--将user 表中查询到的id 插入到test 表中,test 表必须存在且有id 字段才能插入
```

说明:此方法可以将查询结果插入到指定数据表中

### 2.MySQL 数据操作之更新记录

**1.更新记录(单表更新)**

```sql
UPDATE [LOW_PRIORITY][IGNORE] tab_reference SET col_name1={expr1|DEFAULT}[,col_name2={expr2|DEFAULT}]...[WHERE where_condition];
```

**示例:**

```sql
UPDATE user SET id=id+5;	--将所有id 数值增加5
UPDATE user SET age=age-id,sex=0;	--设置多个值
UPDATE user SET age=id+6 where id%2=0;	--设置偶数id 的值
```

### 3.MySQL 数据操作之删除记录

**1.删除记录(单表删除)**

```sql
DELETE FROM tab_name [WHERE where_condition];
```

**示例:**

```sql
DELETE FROM user;	--删除所有数据
DELETE FROM user WHERE id=1;	--删除id=1的数据
```

### 4.MySQL 数据操作之查询表达式解析SELECT

**1.查找记录**

```sql
SELECT select_expr[,select_expr...]
[
FROM table_references
[WHERE where_condition]
[GROUP BY {col_name|position}[ASC|DESC],...]
[HAVING where_condition]
[ORDER BY{col_name |expr|position}[ASC|DESC],...]
[LIMIT {[offset,][row_count|row_count OFFSET offset]}]
]
```

**select 也可以做计算**

```sql
select 1+1;
```

### 5.MySQL 数据操作之查询表达式书写

**1.查询表达式**

每一个表达式表示想要的一列,必须至少一个

多个列之间以英文逗号分隔

星号(*) 表示所有列,tab_name.\* 可以表示该表名的所有列

查选表达式可以使用[AS] 为其赋值别名

```sql
SELECT id AS id1  FROM user;	--为id 起别名为id1,数据库原有数据不会受到影响
--也可以省略AS 
SELECT id  id1  FROM user;
```

别名可用于GROUP BY,ORDER BY 或HAVING 子句 

### 6.MySQL 数据操作之WHERE 语句进行条件查询

**1.条件表达式**

对记录进行过滤,如果没有指定WHERE 子句,则显示所有记录

在WHERE 表达式中,可以使用MySQL 支持的函数或者运算符

**示例:**

```sql
SELECT id  id1  FROM user WHERE id=1;
```

### 7.MySQL 数据操作之GROUP BY 语句对查询结果分组

**1.查询结果分组**

```sql
[GROUP BY {col_name|position}[ASC|DESC],...];
```

**示例:**

```sql
SELECT id  id1  FROM user GROUP BY sex; --按性别分组
```

**

```sql
SELECT id  id1  FROM user WHERE id=1;
```

### 8.MySQL 数据操作之HAVING 语句设置分组条件

**1.分组条件**

```sql
[HAVING where_condition];
```

**示例:**

```sql
SELECT id  id1  FROM user GROUP BY sex HAVING count(id)>2; --按性别分组且数量大于2的记录
SELECT id  id1  FROM user HAVING id>2; --查找id>2 的记录,这样查找效率低,一般使用WHERE
```

### 9.MySQL 数据操作之ORDER BY 语句对查询结果排序

**1.对查询结果进行排序**

```sql
[ORDER BY {col_name|expr|position}[ASC|DESC],...];
```

**示例:**

```sql
SELECT id  id1  FROM user ORDER BY id DESC; --按id 进行从大到小的排序

SELECT id  id1  FROM user ORDER BY id ASC,age DESC; --按id 进行从小到大的排序,如果id 相等,按年龄进行从大到小的排序
```

### 10.MySQL 数据操作之LIMIT 语句限制查询数量

**1.限制查询结果返回的数量**

```sql
[LIMIT {[offset,]row_count|row_count OFFSET offset}];
```

**示例:**

```sql
SELECT id  id1  FROM user LIMIT 2 --取前面 2条数据

SELECT id  id1  FROM user LIMIT 2,4 --从第3 条数据开始取4条数据(2,2+4]
```

