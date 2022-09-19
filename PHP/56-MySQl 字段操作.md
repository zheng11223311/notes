### 1.MySQl 字段操作之修改数据表

**1.添加单列**

column_definition 表达式 TINYINT NOT NULL DEFAULT 0 ....

```sql
ALTER TABLE tab_name ADD [COLUMN] column_name column_definition [FIRST |AFTER column_name];
```

**示例:**

```sql
ALTER TABLE user ADD id TINYINT NOT NULL DEFAULT 0;

ALTER TABLE user ADD id TINYINT NOT NULL FIRST;	--在第一行

ALTER TABLE user ADD id1 TINYINT NOT NULL AFTER id;	--在id 之后
```

**2.添加多列**

```sql
ALTER TABLE tab_name ADD [COLUMN] (column_name column_definition,...);
```

**示例:**

```sql
ALTER TABLE user ADD (id TINYINT NOT NULL,id1 TINYINT NOT NULL);
```

**3.删除列**

```sql
ALTER TABLE tab_name DROP [COLUMN] col_name;
```

**示例:**

```sql
ALTER TABLE user DROP id;
```

**4.删除多列**

```sql
ALTER TABLE tab_name DROP [COLUMN] col_name,DROP [COLUMN] col_name,...;
```

**示例:**

```sql
ALTER TABLE user DROP id,DROP id1;
```

**5.添加主键约束**

```sql
ALTER TABLE tab_name ADD [CONSTRAINT[symbol]] PRIMARY KEY [index_type];(index_col_name);
```

**示例:**

```sql
ALTER TABLE user ADD  PRIMARY KEY (id);
```

**6.添加唯一约束**

```sql
ALTER TABLE tab_name ADD [CONSTRAINT[symbol]] UNIQUE [INDEX|KEY] [index_name] [index_type](index_col_name....);
```

**示例:**

```sql
ALTER TABLE user ADD UNIQUE  (id,id1);

--联合索引,将id 和id1 联合写.只在第一个上显示 MUL 约束,将两项作为一个唯一约束,如果再次插入的这两个值至少有一个与前面插入的值不同才能插入
ALTER TABLE user ADD UNIQUE  index_name(id,id1);
```

**7.添加外键约束**

```sql
ALTER TABLE tab_name ADD [CONSTRAINT[symbol]] FOREIGN KEY [index_name]; REFERENCES ftab_name(index_name);
```

**示例:**

```sql
ALTER TABLE user ADD FOREIGN KEY(id) REFERENCES father (id) ;	--外键的类型要与父表一致
```

### 2.MySQl 字段操作之修改数据表

**1.添加/删除默认约束**

```sql
ALTER TABLE tab_name ALTER [COLUMN] col_name {SET DEFAULT literal|DROP DEFAULT};
```

**示例:**

```sql
--添加
ALTER TABLE user ALTER id  SET DEFAULT 15;
--删除
ALTER TABLE user ALTER id  DROP DEFAULT;
```

**2.删除主键约束**

```sql
ALTER TABLE tab_name DROP PRIMARY KEY;
```

**示例:**

```sql
ALTER TABLE user DROP PRIMARY KEY;
```

**3.删除唯一约束**

```sql
ALTER TABLE tab_name DROP {INDEX | KEY} index_name;
```

**示例:**

```sql
--以字段的形式删除
ALTER TABLE user DROP INDEX id;
--以索引的形式删除
--索引 在SHOW CREATE TABLE user; 中可以查看到这个随机的值,如下形式
--key 'id'('id')
ALTER TABLE user DROP INDEX index_name;
```

**3.删除外键约束**

```sql
ALTER TABLE tab_name DROP FOREIGN KEY fk_symbol;
```

**示例:**

```sql
--fk_symbol 在SHOW CREATE TABLE user; 中可以查看到这个随机的值,如下
--CONSTRAINT 'fk_symbol' FOREIGN KEY ('pid') REFERENCES 'father'('id')
ALTER TABLE user DROP FOREIGN KEY fk_symbol;
```

**4,修改列定义**

```sql
ALTER TABLE tab_name MODIFY [COLUMN] col_name col_definition [FIRST|AFTER col_name];
```

**示例:**

```sql
ALTER TABLE user MODIFY id TINYINT FIRST;
```

**5.修改列名称**

```sql
ALTER TABLE tab_name CHANGE [COLUMN] old_col_name new_col_name new_col_definition [FIRST|AFTER col_name];
```

**示例:**

```sql
ALTER TABLE user CHANGE id id1 int FIRST;
```

**6.修改数据表**

方法1:

```sql
ALTER TABLE tab_name RENAME [TO | AS] new-tab_name;
```

方法2:修改多个表

```sql
RENAME TABLE tab_name TO new_tab_name [,tab_name2 TO new_tab_name2,...]
```

**示例:**

```sql
ALTER TABLE user RENAME user2;

ALTER TABLE user RENAME TO user2;
```

