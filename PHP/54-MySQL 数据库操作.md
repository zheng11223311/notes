### 1.MySQl 数据库操作之建立数据库

数据表示数据库最重要的组成部分之一,是其他对象的基础

**1.打开数据库,命令:**

```sql
USE 数据库名称;
```

**2.查看当前所在(正在使用)的数据库:**

```sql
SELECT DATABASE();
```

**3.查看所有数据库:**

```sql
SHOW DATABASES;
```

**4.创建数据表:**

```sql
CREATE TABLE [IF NOT EXISTS] table_name(
	column_name data_type,
	...
)[ENGINE=表引擎 [DEFAULT] CHARSET=utf8];
```

**示例:**

```sql
CREATE TABLE [IF NOT EXISTS] user(
	username VARCHAR(10),
    num TINYINT,
    money DECIMAL(8,2),		--8个长度,包括2个小数位,最大值 999999.99
    sex ENUM('男','女','保密'),
    content TEXT
)ENGINE=MYISAM DEFAULT CHARSET=utf8;
```

### 2.MySQl 数据库操作之查看数据表

**1.查看数据表列表:**

```sql
SHOW TABLES [FROM db_name];
```

**示例:**

```sql
SHOW TABLES;	--查看当前数据库的表
SHOW TABLLES FROM lmonkey;	--查看lmonkey 数据库中的表
```

### 3.MySQl 数据表操作之查看数据表结构

**1.查看数据表结构:**

```sql
DESC table_name;
或
SHOW COLUMNS FROM table_name;
```

**示例:**

```sql
DESC user;		--查看 user 数据表中的表结构
或
SHOW COLUMNS FROM user; --查看 user 数据表中的表结构
```

### 4.MySQl 数据表操作之记录的操作与查找

**1.插入数据:**

```sql
INSERT [INTO] table_name [(col_name,...)] VALUES (val,...);	--每一个 val 都要插入到对应的col_name,文本或字符类型的val 值需要写上'',如果值与表中所有列都一一对应可以不写列名[(col_name,...)]
```

**示例:**

```sql
INSERT INTO user (username,num) VALUES ('张三',10);	
```

**2.查找数据:**

```sql
SELECT * FROM table_name;	--查找table_name 表中的所有字段
SELECT col_name,... FROM table_name;	--查找table_name 表中的col_name,... 字段
```

### 4.MySQl 基础数据类型之超出范围处理

**1.严格SQL 模式:**

```sql
SET sql_mode='TRADITIONAL';	--插入数据过大时,不会存储进去,并且报一个错误
```

**2.关闭严格模式:**

```sql
SET sql_mode='';	--插入数据过大时,以设置的最大长度来储存其值
```

