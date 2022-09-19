### 使用MySQL 常用命令及建库语句

**1.显示但当前服务器版本**

```mysql
SELECT VERSION();
```

**2.显示当前用户**

```sql
SELECT USER();
```

**3.显示当前日期时间**

```sql
SELECT NOW();
```

**建库语句(DDL):**

```
CREATE {DATEBASE|SCHEMA} [IF NOT EXISTS] db_NAME [DEFAULT] CHARACTER SET [=] charset_name

DATEBASE 或SCHEME 都表示数据库的意思
IF NOT EXISTS 如果不存在这个数据库
db_NAME 数据库名
CHARACTER SET [=] charset_name 设置字符集
```

**示例:创建lmonkey 数据库**

```sql
CREATE DATABASE lmonkey;
或者
CREATE DATABASE lmonkey DEFAULT CHARACTER SET utf8mb4;
```

**显示创建的数据库 命令(DDL)**

```
SHOW CREATE DATABASE 库名;
```

**修改数据库**

```sql
ALTER {DATABASE|SCHEMA} [db_name][DEFAULT]CHARACTER SET[=] charset_name;
```

**示例**

```sql
ALTER DATABASE lmonkey CHARACTER SET gbk;
```

**删除数据库(DDL)**

```sql
DROP {DATABASE|SCHEMA}[IF EXISTS]db_NAME;
```

**查看数据库命令**

```sql
SHOW DATABASES;
```

**查看警告提示**

```sql
SHOW WARNINGS;
```

