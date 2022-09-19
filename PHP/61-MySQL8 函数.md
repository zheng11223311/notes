### 1-MySQL8 字符函数

| 函数名称    | 描述                           |
| ----------- | ------------------------------ |
| CONCAT()    | 字符连接,不限参数个数          |
| CONCAT_WS() | 使用指定的分割符进行字符串连接 |
| FORMAT()    | 数字格式化                     |
| LOWER()     | 转换成小写字母                 |
| UPPER()     | 转换成大写字母                 |
| LEFT()      | 获取左侧字符                   |
| RIGHT()     | 获取右侧字符                   |
| LENGTH()    | 获取字符串长度                 |
| LTRIM()     | 删除前导空格                   |
| RTRIM()     | 删除后续空格                   |
| TRIM()      | 删除前导和后续空格             |
| SUBSTRING() | 字符串截取                     |
| [NOT] LIKE  | 模式匹配                       |
| REPLACE()   | 字符串替换                     |

**示例:**

```sql
SELECT CONCAt(id,age) AS p FROM user;
--将id 与age查询出来并 连接
SELECT CONCAt(id,'-',age) AS p FROM user;
--将id 与age查询出来并使用 '-' 连接
SELECT CONCAT('aa','bb');
--连接成 aabb
SELECT CONCAT('aa','-','+','bb');
--连接成 aa-+bb
```

```sql
SELECT CONCAT_WS('/','id','name');
--连接成 id/name
SELECT CONCAT_WS('/','id','name','age');
--连接成 id/name/age
```

```sql
SELECT FORMAT(1234.567,2);
--将结果保留2位小数,四舍五入,1234.57
```

```sql
SELECT LOWER('MYSQL');
--mysql
SELECT UPPER('aaa');
--AAA
SELECT LEFT('ABC',2);	--获取超出的字符数,只取到所给字符的最大长度
--获取左侧2位字符,AB
SELECT RIGHT('ABC',2);
--获取右侧2位字符,BC
```

```sql
SELECT LENGTH('lmonkey');
--7
SELECT LENGTH('lmonkey ');
--8
SELECT LTRIM(' lmonkey');
--lmonkey
SELECT RTRIM('lmonkey ');	--只能删除空格,不能删除指定字符
--lmonkey
SELECT TRIM(' lmonkey ');	--默认删除前后空格
--lmonkey
SELECT TRIM(LEADING '?' FROM '??lmonke??');	--删除前面的??
--lmonkey??
SELECT TRIM(TRAILING '?' FROM '??lmonke??');	--删除后面的??
--??lmonkey
SELECT TRIM(BOTH '?' FROM '??lmonkey??');	--删除两边的?
--lmonkey
SELECT REPLACE('??lmo??nkey??','?','');	--替换? 为空
--lmonkey
SELECT SUBSTRING('lmonkey',2); --,下标时从1开始的,没有0下标,从第二位开始截取字符串 [2,]
--monkey
SELECT SUBSTRING('lmonkey',-1); --从倒数1 位开始截取字符串 [-1,]
--y
SELECT 'lmonkey' LIKE 'l%';		--%代表任意长度的任意字符
--1,代表真
SELECT 'lmonkey' LIKE '_m%';     --_代表一个长度任意字符
--1,代表真

SELECT 'lmo%nkey' LIKE '%1%%' ESCAPE 1;     --匹配特殊字符,告诉1 后面的一个% 不是通配符
--1,代表真
```

### 2-MySQL8 中数值运算符与函数

| 名称       | 描述         |
| ---------- | ------------ |
| CEIL()     | 进一取整     |
| DIV        | 整数除法     |
| FLOOR()    | 舍去法取整   |
| MOD        | 取余数(取模) |
| POWER()    | 幂运算       |
| ROUND()    | 四舍五入     |
| TRUNCATE() | 数字截取     |

**示例:**

```sql
SELECT CEIL(3.0001);
--4
SELECT CEIL(3.000);
--3
SELECT 10 DIV 3;
--3
SELECT FLOOR(3.99);
--3
SELECT 10 MOD 3;  --等同于SELECT 10%3;
--1
SELECT POWER(10,2);
--100
SELECT ROUND(3.1415,3); 四舍五入,保留3为小数
--3.142
SELECT TRUNCATE(123.456,2); 保留2位小数,不进行四舍五入
--123,45
SELECT TRUNCATE(123.456,-1);  将整数最后一位转为0,且去掉小数
--120
SELECT TRUNCATE(123.456,-2);  将整数最后2位转为0,且去掉小数
--100
SELECT TRUNCATE(123.456,-3);  将整数最后3位转为0,且去掉小数
--0


```

### 3-MySQL8 中比较运算符与函数

| 名称                   | 描述               |
| ---------------------- | ------------------ |
| [NOT] BETWEEN...AND... | [不]在范围之内     |
| [NOT] IN()             | [不]在列出值范围内 |
| IS [NOT] NULL          | [不]为空           |

**示例:**

```sql
SELECT 123 BETWEEN 100 AND 200;	--取值范围[100,200]
--1
SELECT 123 IN(100,200,300) 	;
--0
SELECT 123 NOT IN(100,200,300) 	;
--1
SELECT NULL IS NULL;	--只有NULL 才为真,其他不为真
--1
SELECT 'NULL' IS NULL;
--0
SELECT 1 IS NULL;
--0
SELECT '' IS NULL;
--0


```

### 4-MySQL8 中日期时间函数

| 名称          | 描述           |
| ------------- | -------------- |
| NOW()         | 当前日期和时间 |
| CURDATE()     | 当前日期       |
| CURTIME()     | 当前时间       |
| DATE_ADD()    | 日期变化       |
| DATEDIFF()    | 日期差值       |
| DATE_FORMAT() | 日期格式化     |

**示例:**

```sql
SELECT NOW();
--2021-11-1 10:35:16
SELECT CURDATE();
--2021-11-1
SELECT CURTIME();
--10:36:36
SELECT DATE_ADD('2021-11-1',INTERVAL 365 DAY);  --在2021 年上添加365 天
--2022-10-31
SELECT DATE_ADD('2021-11-1',INTERVAL -365 DAY);  --在2021 年上减少365 天
--2020-11-1
SELECT DATE_ADD('2021-11-1',INTERVAL 1 YEAR);  --在2021 年上添加1年
--2022-11-1
SELECT DATE_ADD('2021-11-1',INTERVAL -1 YEAR);  --在2021 年上减少1年
--2020-11-1
SELECT DATE_ADD('2021-11-1',INTERVAL 1 month);  --在2021 年上添加1月
--2022-12-1
SELECT DATE_ADD('2021-11-1',INTERVAL 1 week);  --在2021 年上添加1周
--2022-11-8
SELECT DATEDIFF('2022-11-1','2021-11-1')	--计算差值
--365
SELECT DATE_FORMATE('2021-11-1','11/1/2021');
--11/29/2021
SELECT DATE_FORMATE('2021-11-1','%m/%d/%Y');
--11/29/2021
SELECT DATE_FORMATE(NOW(),'%Y年%m月%d日 %H点%i分%秒');
--2021年11月1日 11点19分10秒
```

**注:一般不会使用数据库来计算日期,减少数据库的压力**

### 5-MySQL8 中信息函数

| 名称             | 描述             |
| ---------------- | ---------------- |
| CONNECTION_ID()  | 连接ID           |
| DATABASE()       | 当前数据库       |
| LAST_INSERT_ID() | 最后插入记录的ID |
| USER()           | 当前用户         |
| VERSION()        | 版本信息         |

**示例:**

```sql
SELECT DATABASE();
--user
SELECT USER();
--root@localhost
SELECT VERSION();
--8.0.16
SELECT CONNECTION_ID();		--当前是第14次连接此数据库
--14
SELECT LAST_INSERT_ID();	--获取插入数据时的当前id,即当前表的插入的id 字段的值
--1
```

### 6-MySQL8 中聚合函数

| 名称    | 描述   |
| ------- | ------ |
| AVG()   | 平均值 |
| COUNT() | 计数   |
| MAX()   | 最大值 |
| MIN()   | 最小值 |
| SUM()   | 求和   |

**示例:**

```sql
SELECT AVG(id) FROM user; --计算user 表中所有id 和的平均值
--10
--其他函数同理
--MAX(),MIN() 需要先进行分组GROUP BY 才能使用
SELECT * FROM user WHERE id=(SELECT MAX(id) FROM user);
```

### 7-MySQL8 中加密函数

| 名称       | 描述                   |
| ---------- | ---------------------- |
| MD5()      | 信息摘要算法           |
| PASSWORD() | 密码算法8.0.11版本删除 |

**示例:**

```sql
SELECT MD5(123);
--一堆乱七八招的字符
```

### 8-MySQL8 中自定义函数

**1.自定义函数**

用户自定义函数(user-defined function,UDF)是一种对MySQL 扩展的途径,其用法与内置函数一致

**2.自定义函数的两个必要条件**

参数

返回值

函可以返回任意类型的值,同样可以接收这些类型的参数

**3.创建自定义函数**

```sql
CREATE FUNCTION function_name	--函数名
RETURNS		--指定返回类型
{STRING|INTGER|REAL|DECIMAL}
routine_body
```

**4.关于函数体**

1. 函数体由合法的SQL 语句构成
2. 函数体可以是简单的SELECT 或INSERT 语句
3. 函数体如果为复合结构则使用BEGIN...END 语句
4. 复合结构可以包含声明,循环,控制结构等

**5.删除函数**

不能存在同名函数

```sql
DROP FUNCTION [IF EXISTS] function_name;
```

**示例:**

```sql
CREATE FUNCTION myDate() RETURNS VARCHAR(10)	
RETURN DATE_FORMATE(NOW(),'%Y年%m月%d日 %H点%i分%秒')
```

此处需要信任开发者,在安装的目录下/mysql-8.0.16-windowx64/my.ini 配置文件

方法1:在[mysqld] 下增加一行

```ini
 log-bin-trust-function-creators=1
```

方法2:在命令行里修改

```sql
SET GLOBAL log_bin_trust_function_creators=1;
```

**6.使用自定义函数**

```sql
SELECT myDate();
```

### 9-MySQL8 中带有参数的函数

**示例:**

```sql
CREATE FUNCTION myDate(num1 SMALLINT UNSIGNED,num2 SMALLINT UNSIGNED) 
RETURNS FLOAT(10,2) UNSIGNED --10个长度,2个小数	
RETURN (num1+num2)/2;
```

**使用函数**

```sql
SELECT myDate(50,80);
```

### 10-MySQL8 创建具有复合结构函数体的自定义函数

**1.修改命令符**

```sql
DELIMITER //	--将命令符; 换成// ,以//执行命令
```

**2.创建复合函数**

```sql
CREATE FUNCTION add_user(user1 VARCHAR(20))
RETURNS INT UNSIGNED
RETURN 
BEGIN	--多条语句执行要在begin..end 里面
INSERT user.id VALUES(user1);	--设置// 为命令执行符后,这里的;不会执行语句
LAST_INSERT_ID();	--返回id
END
//
```

**使用函数**

```sql
DELIMITER ;		--修改回来
SELECT add_user('1+x' );
```

### 
