### 1.MySQL 字段约束

有时只定义了字段的数据类型还不够,还要设置其他一些附加的属性,如自动增量的设置,自动补0的设置和默认值等一些特殊的设置,下面具体介绍这些特殊字段的属性.

**1.UNSINGNED**

该属性只能用于设置数值类型,**不允许数据列出现负数**,如果不需要向某字段中插入负数,则使用该属性修饰可以使字段的最大存储长度增加一倍,例如,正常情况下数据类型TINYINT 的数值范围在-128~127,而使用UNSINGNED 属性修饰后最小值为0,最大值可以达到255.正常情况下,设置TINYINT(3),只能储存-128-127 的字节,设置UNSINGNED 后能存储0~255字节

**2.ZEROFILL**

该属性也只能用于设置数值类型,**在数值之前自动用0 补齐不足的位数**,例如,将5插入一个声明为int(3) ZEROFILL 的字段,在之后查询输出是,输出的数据将是'005',当给一个字段使用ZEROFILL 修饰时,该字段自动应用UNSINGNED 属性

**3.AUTO_INCREMENT**

该属性用于设置字段的**自动增量属性**,当数值类型的字段设置为自动增量时,每增加一条新记录,该字段的值就自动加1,而且此字段的值不允许重复,此修饰符只能修饰整数类型的字段.插入新纪录时自增字段可以为NULL,0 或留空,这时自增字段自动使用上次此字段的值加1,作为此次的值,插入时也可以为自增字段指定某一非0 数值,这时如果表中已经存在此值将出错,否则使用指定数值作为自增字段的值,并且下次插入时,下个字段的值将在此值的基础上加1

注:**插入失败也会导致自增.**但是不会记录数据,下次插入数据会使用失败后的自增值+1

**4.NULL 和NOT NULL**

默认为NULL,既没有在此字段插入值,如果指定了NOT NULL,则必须在此字段插入值

**5.DEFAULT**

可以通过此属性来指定一个默认值,如果没有在此列添加值,那么默认添加此值,例如,在用户表users 中,可以将性别字段的默认值设置为'男',在该列插入数据时,只有当用户为'女' 时才需要指定,否则可以不为该字段指定值,默认值就是为'男'

**示例:**

```sql
CREATE TABLE [IF NOT EXISTS] user(
    num TINYINT UNSINGNED,
)ENGINE=MYISAM DEFAULT CHARSET=utf8MB4;
```

### 2.MySQL 字段约束之主键约束

1. 主键约束 PRIMARY KEY
2. 每张数据表中只能存在一个主键
3. 主键保证记录的唯一性
4. 主键自动为NOT NULL
5. AUTO_INCREMENT 必须和PRIMARY KEY 一起使用,但PRIMARY KEY 不需要
6. 主键相当于一本书的目录,可以快速定位到想要的数据

**示例:**

```sql
CREATE TABLE [IF NOT EXISTS] user(
    num TINYINT AUTO_INCREMENT PRIMARY KEY,
)ENGINE=MYISAM DEFAULT CHARSET=utf8MB4;
```

### 3.MySQL 字段约束之唯一约束

1. 唯一约束 UNIQUE KEY
2. 唯一约束可以保证记录的唯一性
3. 唯一约束的字段可以为空值(NULL),只能存在一个空值
4. 每张数据表可以存在多个唯一约束
5. 适用手机号和用户名的唯一性,使用主键不合适(主键只能设置一个)

**示例:**

```sql
CREATE TABLE IF NOT EXISTS user(
    num TINYINT UNIQUE KEY,
);
```

### 4.MySQL 字段约束之外键约束(了解,使用外键会降低效率,自己模拟约束查询效率更高)

1. 约束保证数据的完整性和一致性
2. 约束分为表级约束和列级约束
3. 约束类型包括
   1. NOT NULL (非空约束)
   2. PRIMARY KEY (主键约束)
   3. UNIQUE KEY (唯一约束)
   4. DEFAULT (默认约束)
   5. FOREIGN KEY (外键约束)
4. 外键约束 FOREIGN KEY
   1. 保持数据一致性,完整性
   2. 实现一对一或一对多关系

### 5.MySQL 字段约束之外键约束的要求

1. 父表和子表必须使用相同的存储引擎,而且禁止使用临时表

2. 数据表的存储引擎只能为InnoDB(默认为 InnoDB)

3. 外键列(子表中)和参照列(父表中)必须具有相同的数据类型,其中数字的长度或是否有符号位必须相同,而字符的长度则可以不同

4. 外键列和参照列必须创建索引,如果外键列不存在索引的话,MySQL 将自动创建索引

5. 查看索引:

   ```sql
   SHOW INDEXES FROM tab_name;
   ```

   **查看建表语句**

   ```sql
   SHOW CREATE TABLE table_name;
   
   网格形式查看:
   SHOW CREATE TABLE table_name\G;
   ```

   **示例:**

   创建父表(参照列):

   ```sql
   CREATE TABLE  father(
       id TINYINT UNSIBNED AUTO_INCREMENT PRIMARY KEY
   );
   ```

   创建子表(外键列):

   ```sql
   CREATE TABLE  son(
       id TINYINT AUTO_INCREMENT PRIMARY KEY,
       cid TINYINT UNSIBNED,
       FOREIGN KEY (cid) REFERENCES father(id)
   );
   ```

   ### 6.MySQL 字段约束之外键约束参照操作

   **1.CASCADE**

   从父表删除或更新且自动删除或更新子表中匹配的行

   格式:

   ```sql
   ON UPDATE | DELETE CASCADE
   ```

   **2.SET NULL**

   从父表删除或更新行,并设置子表中的外键列为NULL,如果使用该选项必须保证子表列没有指定NOT NULL

   **3.RESTRICT**

   拒绝对附表的删除或更新操作

   **4.NO ACTION **

   标准SQL 的关键字,在MySQL 中与RESTRICT 相同

   **示例:**

   ```
   CREATE TABLE  son(
       id TINYINT AUTO_INCREMENT PRIMARY KEY,
       cid TINYINT UNSIBNED,
       FOREIGN KEY (cid) REFERENCES father(id)	ON DELETE CASCADE
   );
   ```

   

