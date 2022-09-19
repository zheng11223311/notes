### 1.安装配置MySQL

**1.下载**

官网:[MySQL](https://www.mysql.com/)

**2.配置my.ini**

在根目录(C:\mysql-8.0.16-winx64)下创建my.ini 文件,并在文件中输入以下代码的代码

```ini
[mysqld]
basedir="C:\mysql-8.0.16-winx64"
basedir="C:\mysql-8.0.16-winx64\data"
port=3306
server_id=10
character-set-server=utf8
character_set_filesystem=utf8
[client]
port=3306
default-character-set=utf8
[mysqld_safe]
timezone="CST"
[mysql]
deafult-character-set=utf8
```

**3.配置变量环境,将mysql/bin 加入到系统环境变量PATH 中**

![Snipaste_2021-09-25_10-03-55](D:\学习\wanye\PHP\img\Snipaste_2021-09-25_10-03-55.png)

**4.找到cmd.exe,以管理员身份运行(确保是管理员)**

**5.首先将MySQL 加入到Windows 的服务中,输入命令:**

```
mysqld --install;
```

**6.开始初始化数据库,输入:**

生成data 文件夹

```
mysqld --initialize --user=root --console	(记住初始密码)
```

![Snipaste_2021-10-29_15-24-19](D:\学习\wanye\PHP\img\Snipaste_2021-10-29_15-24-19.png)

**7.开启数据库:**

```
net start mysql
稍后你也可以使用 net stop mysql 关闭MySQL 服务
```

**8.然后就可以进入MySQl 了.输入:**

```
mysql -u root -p	此时会要求你输入密码
```

**9.修改初始密码(方便记忆密码)**

```
alert user user() identified by '123456';	密码修改为123456
```

### 2.使用MySQL 之登入与退出命令

**1.登入MySQL 命令:**

```
mysql [-h 数据库服务器地址] -u 用户名 -p	
[] 代表可以省略,如果服务器是在本地的,就可以省略不写,如果是在远程服务器的,必须要写
```

**2.退出命令(三种):**

```
\q
exit
quit
```

**3,认识登入成功提示:**

```
Welecome to the MySQL monitor (欢迎来到mysql 终端)
Commands end with; or \g	(命令以; 或\g 结尾结束)
Your MySQL connection id is 18	(mysql 被链接次数)
Server version:8.0.16 MySQL Community Server -GPL(mysql 版本号)
Type 'help;' or '\h' for help	(输入help; 或\h 打开帮助)
Type '\c' to clear the current input satement	(清除等待命令\c)
```

### 3.使用MySQL 之常见到的符号

```
-> 表示当前命令没有命令执行符( ; 或\g )或者说等待命令执行符来确认
'> 表示当前的SQL 命令缺少单引号
"> 表示当前的SQL 命令缺少双引号
```

### 4.使用MySQL 之修改MySQL 提示符

| 参数 | 描述       |
| ---- | ---------- |
| \D   | 完整的日期 |
| \d   | 当前数据库 |
| \h   | 服务器名称 |
| \u   | 当前用户   |

**连接客户端时指定参数指定**

```
mysql -u root  -p 密码 --p'rompt	提示符
```

**连接上客户端后,通过prompt 命令修改**

prompt 提示符,例如

```
prompt \u@\h\d> 		修改 当前用户和 服务器名称和 当前数据库,回车返回每个需要修改成的名称
```

### 5.使用MySQL 之语句介绍及编码规范

SQL 语句结构化查询语句

**主要分为4大类:**

```
DDL 数据库定义语言(CREATE,DROP,ALTER 等)
DML 数据库操作语言(INSERT,DELETE,UPDATE 等)
DQL 数据库查询语言(SELECT,WHERE 等)
DCL 数据库控制语言(了解)(GRANT,REVOKE 等)
```

**编码规范:**

1. 关键字与函数名称全部大写
2. 数据库名称,表名称,字段名称全部小写
3. SQL 语句必须以分号结尾

### 6.使用MySQL 之认识字符集

**常用中文字符集:**

```
GB2312 双字节编码 早期标准 不推荐使用
GBK 双字节编码 中期标准 不是国标 但支持系统很多,而且在GB2312 基础上增加了很多偏僻生字
UTF-8 1~4 字节的编码 互联网广泛使用 亚洲通用字符集国际标准化 支持任何语言,在MySQL 中写成utf8(为以前的,存储1-3字节,现在的mysql 版本mb4 编码==utf8 编码,mb3==以前的utf8)
```

**utf-8 与gbk 的区别**

存储长度一样,GBK 一个汉字占2个字节,utf-8 占位3个字节,推荐使用UTF-8 (支持语言更多)

**数据库字符集依赖关系**

内容字符集 -> 字符字符集 -> 表字符集 -> 库字符集

