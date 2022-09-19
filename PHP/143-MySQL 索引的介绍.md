### 1.什么是索引

索引时一种单独的,物理的对数据库表中的一列或多列的值进行排序的一种存储结构,类似于图书的目录

**索引的作用**

完成非常高效的搜索,指数级别的提升搜索速度

**索引的原理**

二叉树结构(BTREE 方法)  ,(还有hash 方法)

**索引的分类**

- 主键(Primary key)
- 一般索引(Normal)
- 唯一索引(Unique)
- 全文索引(Full text)

**主键**

添加主键

```
create table aa(
	id int primary key auto_increment
);
```

修改表增加主键

```
alert table aa add primary key(id);
```

删除主键(删除之前首先将自动增长属性移除)

```
alter table aa drop  primary key;
```

**一般索引**

添加

```
create table aa (
	id int ,
	index name(name)
);
```

更新表添加

```
alert table aa add index name(name);
```

删除表索引

```
alert table aa drop index name;
```

**唯一索引**

添加

```
create table aa(
	id int,
	unique name(name)
);
```

修改表添加

```
alert table aa add unique name(name);
```

查看索引

```
show index from aa\G;
```

