**条件**

使用where 子句对表中的数据进行筛选,结果为true 的行为会出现在结果集中

**语法如下:**

```
select * from  表名 where 条件;
```

**比较运算符**

> 等于=
>
> 大于>
>
> 大于等于>=
>
> 小于<
>
> 小于等于<=
>
> 不等于!= 或<>

查询编号大于3的学生

```
select * from subjects where id>3;
```

查询编号不大于4的或作者是'黄蓉'的科目

```
select *from subjects where id<4 or author!='黄蓉';
```

查询姓名不是"黄蓉"的学生

```
select * from students where sname!='黄蓉';
```

查询没有被删除的学生

```
select * from students where isdelete=0;
```

查询1000-10000的阅读量

```
select * from book where viewcount>1000 and viewcount<10000;
```

查询出版社为空的数据

```
select * from book where pubcompany='';
```

查询作者为'猫腻'或者'顾随'的书

```
select * from book where author='猫腻' or author='顾随';
```

或者

```
select * from book where author in ['猫腻','顾随'];
```

**逻辑运算符**

> and
>
> or
>
> not

**模糊查询**

> like
>
> %表示任意多个任意字符
>
> _表示一个任意字符

查询姓黄的学生

```
select * from students where sname like '黄%';
```

查询书名含有魔法师的书

```
select * from books where sname like '魔__';
```

**范围查询**

> in 表示在一个非连续的范围内
>
> between...and....表示在一个连续的范围内

查询编号是1 或者是3 或者是8 的学生

```
select * from students where id in (1,3,8);
```

查找学生是3 至8 的学生

```
select * from students where id between 3 and 8;
```

查找学生是3 至8 的男生

```
select * from students where id between 3 and 8 and gender=1;
```

**空判断**

> 注意:null 与'' 是不同的
>
> 判断 is null

查询填写了地址的学生

```
select * from students where hometown is not null
```

查询填写了地址的女生

```
select * from students where hometown is not null and gender=0
```

**优先级**

> 小括号>not>比较运算符>逻辑运算符
>
> and 比or 先运算,如果同时出现并希望先用or,需要结合() 使用

```
大写的写法
SELECT * from students where hometown is not NULL
```

