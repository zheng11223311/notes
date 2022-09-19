### 使用SQL 查询

SQL 是"Structured Query Language" 的缩写,比如Access,Oracle,SQL Server 等关系数据库均采用这个标准语言来进行数据库查询,事实上,SQL 不仅可以用来数据库查询,还可以用来插入,更新和删除记录.

首先,看一个例子:

```asp
<%
dim rs,sql
sql="select 姓名,自然,语文 from 成绩单"
set rs=Server.createObject("adodb.recordset")
rs.open sql,conn,1,1
%>
```

**程序解释:**这个SQL 语句就是指定这张表打印出来姓名,自然,语文的所有信息

### SQL 的筛选与排序

当我们想从表筛选记录时,我们必须使用语句中的 select 指令

select 字段1,字段2 from 表名称 [where 搜索条件]	[order by 排序句子[asc,desc]]

**从成绩单中筛选出,姓名.自然,语文**

```
select 姓名.自然,语文 from 成绩单
```

**从成绩单中筛选出所有记录**

```
select * from 成绩单
```

**从成绩单中筛选出所有记录,并且追加记录**

这是虚拟的结果,数据库的数据并没有被改变

```asp
select 姓名,自然+语文+数学 as 月考总分 from 成绩单		'所有数据的和改为月考总分,所有字段合成一个月考总分字段'
select 姓名,数学 as 月考总分 from 成绩单	'将数学改成月考总分'
select 姓名,数学,数学 as 月考总分 from 成绩单	'新建一个月考总分,数据为数学的数据'
```

**select...from ...where...语法(筛选)**

select...from ... 语法的筛选范围涵盖整个表的记录,但有时候我们会需要把筛选范围限制在复合条件的记录,例如语文成绩在90 分以上的所有记录的姓名

```
select 姓名,数学,语文 from 成绩单 where 语文>90
```

where 子句可以包含任何逻辑运算符,只要返回值为true 或者false 即可

**从成绩单表筛选出所有"语文" 分数大于90 分或数学大于90 的记录的姓名,语文和数学3个字段**

```
select 姓名,语文,数学 from 成绩单 where 语文>90 or 数学>90
```

**从成绩单表筛选出所有"语 分数小于90 且数学大于90 分,或语文大于90 且自然大于90 分 **

```
select * from 成绩单 where 语文>90 and(数学>90 or 自然>90)
```

**除了上面的比较运算符号和逻辑运算符,SQL 语法也支持LIKE 运算符**

| 通配符      | 意义                    |
| ----------- | ----------------------- |
| %           | 任何长度的字符串(包括0) |
| _(下划线)   | 任何一个字符串          |
| []\(中括号) | 某个范围内的一个字符    |

**从成绩单表筛选出所有姓名以 陈 开头的记录的所有字段,字符串的前后要记得加上单引号**

```
select * from 成绩单 where 姓名 like '陈%'
```

**从成绩单表筛选出 名字 为 小美 的记录的所有字段**

```
select * from 成绩单 where 姓名 like '%小美'
```

**从成绩单表筛选出所有姓名以a,b,c,d,e,f 等字母为首,后面为ean 的记录的所有字段**

```
select * from 成绩单 where 姓名 like '[a-f]ean'
```

**从成绩单表筛选出所有姓名以的d,l,p,r,t 等字母为首,后面为ean 的记录的所有字段**

```
select * from 成绩单 where 姓名 like '[dlprt]ean'
```

**我们可以在where 条件句子中加入VBScript 函数,以前面的SQL 语句为例,筛选出姓名字段第一个字为 陈 的记录的所有记录**

```
select * from 成绩单 where mid(姓名,2,1)='陈'		'匹配第二个是陈'
```

**我们可以加入 IS NULL(空) 或者 IS NOT NULL(非空) 判断空白字段**

```
select * from 成绩单 where (数学 is null)and(语文 is not null)
```

**我们还可以判断where 子句中加入 IN 判断字段数据的范围,筛选出所有语文字段为80,85,88 记录所有字段**

```
select * from 成绩单 where 语文 in(80,85,88)
```

**如果是字符串,则要加单引号**

```
select * from 成绩单 where 姓名 in('陈晓欣','孙小妹')
```

**我们也可以在where 中加入BETWEEN 限制筛选范围**

```
select 姓名,语文,数学 from 成绩单 where 数学 between 80 and 90
```

