### 1.MySQL 存储过程

![Snipaste_2021-09-25_10-03-56](D:\学习\wanye\PHP\img\Snipaste_2021-09-25_10-03-56.png)

**1.存储过程**

存储过程是SQL 语句和控制语句的预编译集合,以一个名称存储并作为一个单元处理

存储过程存储在数据库内,可以由应用程序调用执行,允许用户声明变量以及流程控制,存储过程可以接收参数,可以接收输入类型参数,也可以接收输出类型参数,并且可以存在多个返回值

存储过程的功能涵盖函数的功能

**2.存储过程的优点**

1. 增强SQL 语句的功能和灵活性
2. 实现较快的执行速度(已经编译过,传入值即可执行命令)
3. 减少网络流量

### 2.MySQL8 之存储过程语法结构解析

**1.创建存储过程**

```sql
CREATE
[DEFINER={user|CURRENT_USER}]
PROCEDURE sp_name([proc_parameter[,...]])	--存储过程标识符 过程名(参数)
[characterisitc...]routine_body		--过程体

proc_parameter:	--参数类型
[IN|OUT|INOUT]param_name type
```

**2.参数**

| IN    | 表示该参数的值必须在调用存储过程时指定        |
| ----- | --------------------------------------------- |
| OUT   | 表示该参数的值可以被存储过程改变,并且可以返回 |
| INOUT | 表示该参数在调用时指定,并且可以被改变和返回   |

**3.特性**

```sqll
COMMENT 'string'	
|{CONTAINS SQL|NO SQL|READS SQL DATA|MODIFIES SQL DATA}
|sql SCURITY {DEFINER|INVOKER}
```

```
COMMENT: 注释
CONTAINS SQL: 包含SQL 语句,但不包含读或写数据的语句
NO SQL: 不包含SQL 语句
READS SQL DATA: 包含读数据的语句
MODIFIES SQL DATA:包含写数据的语句
SQL SECURITY {DEFINER|INVOKER} 指明谁有权限来执行
```

**4.过程体**

1. 过程体由合法的SQL 语句构成
2. 过程体可以是任意SQL 语句(增删改查等)
3. 过程体如果为复合结构则使用BEGIN...END 语句
4. 复合结构可以包含声明,循环,控制结构

**5.删除存储过程**

```
DROP PROCEDURE 过程名;
```



### 3.MySQL8 之创建不带参数的存储过程

**示例:**

```sql
CREATE PROCEDURE sp1() SELECT VERSION();	--查询版本号
```

**调用存储过程**

```sql
CALL sp1();
```

### 4.MySQL8 之创建带IN 参数的存储过程

**示例:**

```sql
DELIMITER //
CREATE PROCEDURE removeid(IN pid INT UNSIGNED)
GEGIN
DELETE FROM user WHERE id=pid;
END
//
```

**调用存储过程**

```sql
CALL removeid(10)//
```

### 5.MySQL8 之创建带IN 和OUT 参数的存储过程

**示例:**

```sql
DELIMITER //
CREATE PROCEDURE removeid(IN pid INT UNSIGNED,OUT pnum INT UNSIGNED)
GEGIN
DELETE FROM user WHERE id=pid;
SELECT COUNT(id) FROM user INTO pnum; --将查询结果赋值给pnum
END
//
```

**调用存储过程**

```sql
CALL removeid(9,@num)//	--使用@ 接收pnum 传过来的值,@为定义变量,这里的@num 为全局变量,可以全局使用
SELECT @num//	--查询结果
```

**定义变量**

```sql
SET @str='哈哈'//		--定义变量str 值为哈哈
```

### 6.MySQL8 之创建带有多个OUT 参数的存储过程

**示例:**

```sql
DELIMITER //
CREATE PROCEDURE removeid(IN pid INT UNSIGNED,OUT pdel INT UNSIGNED,OUT pexist INT UNSIGNED)
GEGIN
DELETE FROM user WHERE id=pid;
SELECT ROW_COUNT()  INTO pdel; --将查询结果赋值给pdel
SELECT COUNT(id) FROM user INTO Peist;
END
//
```

**调用存储过程**

```sql
CALL removeid(9,@de,@es)//
SELECT @num//	--查询结果
```

```sql
SELECT ROW_COUNT();	--查看受到影响的记录
SELECT WARNING();	--查看警告
```

### 7.MySQL8 之存储过程与自定义函数的区别

1. 存储过程实现的功能要复杂一些:而函数的针对性更强(作为一个功能来使用)
2. 存储过程可以返回多个值,函数只能有一个返回值
3. 存储过程一般独立的来执行,而函数可以作为其他SQL 语句的组成部分来表现

