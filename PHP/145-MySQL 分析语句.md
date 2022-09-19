### 1.MySQL 分析语句

explain 时MySQL 中的一个指令,可以用来分析SQL 语句的执行计划,检测有没有使用到索引,例如

```
mysql>explain select * from aa\G;
对显示的数据进行分析
select_type 搜索的类型
table		搜索的表名
type 		搜索的类型,ALL 全表扫描
possible_keys	可能用到的索引
key 		实际用到的索引
key_len		索引的长度
ref			多表查询时的关联的字段
rows		扫描的行数
Extra		额外的信息
```

**type 搜索类型**

性能由高到低顺序

```
NULL > system > const > eq_ref > ref  > range > index > ALL
```

NULL 不使用索引,直接可以获得结果

```
explain select count(*) from aa;
```

system 表中满足条件的记录最多的一条

```
explain select * from (select * from aa limit 1) as a;
```

const 表中满足条件的记录最多的一条,通常会出现在主键和unique 索引中

```
explain select * from aa where id=1;
```

eq_ref 表中某一列的值关联另一个表主键列的值,通常会出现在连表查询中

```
explain select * from aa left join types on types.id=aa.type_id;
```

ref 通过普通索引查询

```
explain select * from aa where title ="爱";
```

range 索引范围查询

```
explain select * from aa where id <1000;
```

index 索引扫描

```  
explain select id from aa;   //直接在索引中查找,不用去读取表中的数据
```

all 全表扫描

```
explain select * from aa;
```

