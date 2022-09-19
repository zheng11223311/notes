### 1.MySQL8 新增JSON 类型

```sql
CREATE TABLE tab_name(
...
json_name JSON...
)
```

**示例:**

```sql
CREATE TABLE json_tab(
id INT AUTO_INCREMENT PRIARY KEY,
conent JSON NOT NULL	--像其他字段一样,不过类型不是INT,而是JSON
);
```

**查看表**

```sql
DESC json_tab;
```

### 2.MySQL8 新增类型之JSON 类型相关函数

| 名称                 | 描述                                                         |
| -------------------- | ------------------------------------------------------------ |
| JSON_ARRAY()         | 返回JSON 数组                                                |
| JSON_OBJECT()        | 返回JSON 对象                                                |
| JSON_ARRAY_INSERT()  | 将数据插入到JSON 数组中,原本存在的值不会被替换,也不影响原数据 |
| JSON_INSERT()        | 将数据插入到JSON 文档中,原本存在的值不会被替换,也不影响原数据 |
| JSON_ARRAY_APPEND()  | 将值附加到JSON 文档中指定数组的末尾并返回结果                |
| JSON_SET()           | 替换现有的值,并增加不存在的值                                |
| JSON_REPLACE()       | 仅替换现有值                                                 |
| JSON_PRETTY()        | 提供漂亮的JSON 值打印                                        |
| JSON_CONTAINS_PATH() | 返回JSON 文档是否包含指定的路径                              |
| JSON_CONTAINS()      | 返回查找数据是否在指定的json 文档中                          |
| JSON_LENGTH()        | 返回JSON 文档的长度                                          |
| JSON_REMOVE()        | 删除指定JSON 值                                              |
| JSON_EXTRACT()       | 从JSON 中返回数据                                            |

**示例:**

```sql
SELECT JSON_ARRAY(1,2,3,'aa','cc');		--创建一个json 数组
SELECT JSON_OBJECT('id',1,name.'小明','sex',1);		--创建一个json 对象 {"id":1,"name":'小明',..}
```

```sql
SET @JSON=JSON_OBJECT('id',1,name.'小明','sex',1);
SELECT  JSON_PRETTY(@JSON);	--以键值对返回
```

```sql
SET @a=JSON_ARRAY(1,2,3,'aa','cc');
SELECT @a;	--查看@a
SELECT JSON_ARRAY_INSERT(@a,'$[0]','x'); --在数组第一个位置($[0])插入x	['x',1,2,3,'aa','cc']
```

```sql
SET @a=JSON_OBJECT('id',1,name.'小明','sex',1);
SELECT @a;
SELECT JSON_ARRAY_INSERT(@a,'$.age','12'); --在对象中插入age	{"id":1,"name":'小明','age':'12'}
```

```sql
SET @a=JSON_ARRAY(1,2,3,'aa','cc');		
SET @b=JSON_OBJECT('id',1,name.'小明','sex',1);
SELECT JSON_ARRAY_APPEND(@a,'$[2]','y','$[3]','z');	--可以添加多个值 [1,2,'y','z',3,'aa','cc']
SELECT JSON_ARRAY_APPEND(@b,'$.name','xxyd');	--{"id":1,'sex':1,"name":['小明','xxyd']}  向name中在添加一个值
```

```sql
SET @b=JSON_OBJECT('id',1,name.'小明','sex',1);
SELECT JSON_SET(@b,'$.name','哈哈','$.age',18); --{"id":1,"name":'哈哈','age':18,'sex':1}
```

```sql
SET @b=JSON_OBJECT('id',1,name.'小明','sex',1);
SELECT JSON_REPLACE(@b,'$.name','哈哈','$.age',18); --{"id":1,"name":'哈哈','sex':1}
```

```sql
SET @b=JSON_OBJECT('id',1,name.'小明','sex',1);
SELECT JSON_REMOVE(@b,'$.name');	--{"id":1,'sex':1}
SELECT JSON_EXTRACT(@b,'$.id'); --1
--等效
SELECT id->'$.id1' FROM user; --在user 表中返回字段 id(为JSON 格式)中的键id1 对应的值 
```

```sql
SET @b=JSON_OBJECT('id',1,name.'小明','sex',1);
SELECT JSON_LENGTH(@b,'$.name');	--2
```

```sql
SET @a=JSON_ARRAY(1,2,3,'aa','cc');	
SELECT JSON_CONTAINS_PATH(@a,'one','$.id');	--one 代表至少存有一个, 不存在id对应的值,返回0
SELECT JSON_CONTAINS_PATH(@a,'one','$.id','$[1]');	--one id和 $[1]代表至少存有一个, 不存在id,存在$[1],返回1
SELECT JSON_CONTAINS_PATH(@a,'all','$.id','$[1]');	--all 代表id和 $[1]都存有, 才返回1
```

```sql
SET @a=JSON_ARRAY(1,2,3,'aa','cc');	
SELECT JSON_CONTAINS(@a,'1'); --json 中是否包含1,返回1
SELECT JSON_CONTAINS(@a,'1','$[2]'); --json 中从$[2] 开始查找是否包含1,返回0, 区间 [$[2],]
```

**数据表更新**

```sql
UPDATE user SET id=JSON_SET((SELECT id FROM user),'$.name','哈哈'); --id 为一个JSON 数据
```

### 
