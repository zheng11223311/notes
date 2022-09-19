### 1.MySQL数据操作之多表更新

```sql
UPDATE table_references SET col_name1={expr1|DEFAULT}[,col_name2={expr2|DEFAULT}]...[WHERE where_condition]
```

**示例:**

```sql
UPDATE user INNER JOIN test ON user.id=test.age	SET user.id=test.age
--更新user
--将user 表和test 表连接查询,条件为user 的id =test 的age 查询到修改user 的id 值为test 的age 值
```

### 2.MySQL数据操作之多表更新一步到位

创建数据表同时将查询结果写入到数据表

```sql
CREATE TABLE [IF NOT EXISTS] tab_name
[(create_definition,...)]
select_statement
```

**示例:**

```sql
CREATE TABLE IF NOT EXISTS class(
	id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	className VARCHAR(20) NOT NULL
)SELECT className FROM user GROUP BY className;
```

### 