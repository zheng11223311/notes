### 1.语法:Rs.AddNew Fieldname,value

**参数:**在表新增一条记录,其字段名为Filename,值为value

请注意,必须在执行rs.update 方法才能完成新增

指针:使用1,3

**示例:**

```asp
<%
'前面省略打开数据库的操作'
dim rs
set rs=server.createObject("adodb,recordset")
rs.open "择友家俱乐部",1,3

rs.addnew
rs("姓名")="哈哈哈"
rs("年龄")="18"
rs("性别")="男"
rs.update

response.write "新增成功!"

'此处省略关闭数据库的操作,自行补充'
%>
```

**程序解释:**

首先打开这个表的方式出现了改变,上一个例子中是只读,现在是写入,所以要将rs.open 打开的方式改为1,3 ,	1,1=>读取,	1.3=>可写入,写入数据库也很明了,rs.addnew	...	rs.update 之间写入数据

### 2.如何读取字段名称以及字段数目

我们知道,Recordset 对象是以二维数组的形式储存表的记录,事实上,recordset 对象地每一行都是属于Fields 集合,而Fields 集合地每一个项目都是一个Field 对象,像一个二维数组

| 第一列                | 第二列                | ...  |
| --------------------- | --------------------- | ---- |
| Field 对象(Fields(0)) | Field 对象(Fields(1)) | ...  |
| Field 对象(Fields(0)) | Field 对象(Fields(1)) | ...  |

正因为如此.我们才能够利用Fields 集合的Count 属性读取表的字段数目,然后Fields 对象的Name 和Value属性分别读取字段名称,字段数据

**语法:**

rs.Fields.Count		返回字段个数

rs.Fields(i).name		返回字段标题(即字段名)

rs.Fields(i).value		返回字段的信息(即值)



### 3.使用Resordset 对象的sort 属性来进行排序

将Recordset 对象进行排序的方法,有两种,其一使用Recordset 对象的Sort 属性,其二就是使用SQL 语句

**语法:**

rs.Sort="语文"	

或

rs.Sort="语文 DESC"

或

rs.Sort="语文 DESSC,数学 asc"

指针:1,1

**示例:**

```asp
<%
RS.CursorLocation=3		'设置记录被下载到浏览器端'
rs.Open	"成绩单",1,1		'使用1,1 来排序'
rs.Sort "语文 DESC"		'最高到最低的方式来排序,asc 为从最低到最高排序
%>
```

### 4.使用Recordset 对象的Filter 属性来筛选记录

当我们使用Recordset 对象的Open 打开表时,所读取的将是整个表的所有记录,但有时我们会需要把筛选范围限制在符合条件的数据,例如语文成绩在90 分以上的学生的记录

比较运算符:=,<,>,<=,>=,<>

**示例:**

```asp
<%
rs.filter="语文>90 or 数学>90"
rs.filter="语文<>90 and 数学>90"
rs.filter="姓名='林夕'"
%>
```

**示例2(筛选并删除):**

```asp
<%
Dim conn,rs
Set conn=Server.CreateObject("ADOOB.Connection")
conn.ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="$server.mapPath("数据库名.mdb")
conn.open

Set rs=Server.CreateObjeect("ADODB.Recordset")
rs.open "择友俱乐部",conn,1,3	'因为要删除数据,输入写入范畴,所以,3'		

'删除前要筛选出,你要删除的记录'
    rs.filter="姓名='哈哈哈'"
'执行删除命令'
'如果没有筛选出(即没有进行筛选操作下)你要删除的记录,那么就会删除指针所在记录的那条数据(默认是第一条数据)'
    rs.delete	'每次只删除一条数据'
    '完成更新'
    rs.update

rs.close
set rs=nothing
conn.close
set conn=nothing
%>
```

**示例3(筛选并修改):**

```asp
<%
Dim conn,rs
Set conn=Server.CreateObject("ADOOB.Connection")
conn.ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="$server.mapPath("数据库名.mdb")
conn.open

Set rs=Server.CreateObjeect("ADODB.Recordset")
rs.open "择友俱乐部",conn,1,3	'因为要删除数据,输入写入范畴,所以,3'		

'首先筛选出要修改的数据,不然就是指针所在那一条,一般是第一条
    rs.filter="姓名='哈哈哈'"
'筛选出来后,修改
    rs("语文")=100
    rs("数学")=90
    '完成更新'
    rs.update

rs.close
set rs=nothing
conn.close
set conn=nothing
%>
```

### 5.如何设置分页浏览

当表包含很多记录而无法显示在同一页时,我们可以设置分页浏览,将记录分成数页显示,以"零件报价表"来演示

**示例:**

```asp
<!--#include file="conn.asp"-->		'引入外部自定义文件,可放在任意位置
<%
dim rs
Set rs=Server.CreateObjeect("ADODB.Recordset")
rs.open "零件报价表",conn,1,1

'首先必须设置每页多少条数据
rs.pagesize=10
'默认的页码是第一页'
'rs.absolutepage=2	'当前页码设置为2'
'接受点击传递过来的页码
'接收到的值为字符串,必须转换成整数比较 cint(接受)
'字符串aaa cint()转换为整型会报错'
'isnumeric 判断是否是整型'
if not isnumeric(request("page")) then
    if request("page")="" or cint(request("page"))<1  then
        rs.absolutepage=1
    elseif cint(request("page"))>rs.pagecount then	'超过页数'
        rs.absolutepage=rs.pagecount	'显示最后一页'
    else
    rs.absolutepage=request("page")
    end if
else
    rs.absolutepage=1
end if
%>
<p align="center">一共有<%=rs.recordcount%> 条数据</p>

<p align="center">
<%
for i=1 to rs.pagecount
response.write "<a href='1.asp?page='"&i&">"&i&"</a>l"
next
%>
</p>

<table border="1" width="600" align="center">
<tr>
<th>编号</th>
<th>厂家</th>
<tr/>
<% 
for i =1 to rs.pagesize		'页数=总条数据/10条,如果余出数据.再加一页'
if rs.eof then exit for	'如果没有数据,退出for 循环,防止最后一页数据少于rs.pagesize 时,报错,'
%>	
<tr>
<td><%=rs("编号")%></td>
<td><%=rs("厂家")%></td>
<tr/>
<%

	rs.movenext
	next
%>
</table>
<!--#include file="close.asp"-->		'引入自定义关闭数据库'
```

**程序解释:**

首先,我们将数据库的打开和关闭用了两个文件储存为模块,简化了程序

其次,我们来熟悉一下分页所需的属性

AbsolutePage		当前Recordset 对象有设置分页时,AbsolutePage 会返回目前的页码

PageCount				返回分页总数

PageSize					设置分页时,PageSize 为每页的记录条数

recordCount			为表的所有记录条数
