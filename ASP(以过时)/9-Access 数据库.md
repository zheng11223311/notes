### 1.认识数据库

所谓所聚酷，是值依照u哦顶的格式存放在一起的数据记录文件，在日常生活中，凡是个人通讯簿，公司帐薄，客户名单，支票明细，成绩等都是数据库，他们不仅具有固定的格式与特性，而且可以用表格形式来记录，由于数据库具有自动化管理，快速查询及统计的优点，因此，学习处理数据库已经成为现代人必备的技能

我们在前面曾介绍过Cookie，Application 变量，Session 变量，服务器端文件存取等储存数据的方法，现在，我们就把这些方法与数据库做个比较

**储存数据的方法**

**Cookie**

优点：可以记录浏览器的信息并决定Cookies 的生命周期，Cookies 存放在浏览器端，不会占用服务器的空间

缺点：浏览器可能禁止服务器端在浏览器端写入Cookies，只能记录字符串，数值，如期等简单的数据类型，无法记录对象，数组等复杂的数据类型，Cookies 可能造成安全上的威胁，导致个人信息被窃

**Application**

优点：可以记录某个网站的信息

缺点：若服务器关机或超过20分钟之内没有再存取网页，Application 对象所记录的任何变量都会被恢复为空

**Session** 

优点：可以记录个别浏览器端的信息

缺点：若服务器关机或超过20分钟之内没有再存取网页，Session 对象所记录的任何变量都会被恢复为空

**服务器端文件存取**

优点：适合记录少量书，可进行写入或读取

缺点；当数据量很大时，温江的存取将变得没有效率

**数据库**

优点：适合记录大量的数据，可进行读取，插入，删除，查询和更新

缺点：虽然数据库的查询书都快，但打开数据库连接则需要较多的时间

### 2.何为数据库管理系统（DBMS）

数据库管理系统 是用来操作及管理数据库的软件，Microsoft Access 就属于数据管理系统软件，用户通过这个软件可以进行数据的输入，修改，编辑等工作

### 3.构成数据库的基本组件

举个例子，一个数据库由六条数据组成，每一条数据我们称之为“记录”（RECODE），每一条记录又包含编号，姓名，生日，电话等5个字段（FIELD）

### 4.何为关系型数据库（RDB）

个人数据库在使用及管理技术较为简单，但是如果是一个包含许多数据库文件的大型数据库系统，则需要专业的管理技术，诸如：如何快速找到全国各地的客户及订单数据，如何确保输入数据的正确性？如何避免不同地区的人员同时修改同一条信息，如果建立数据库文件之间的关联性？如何使用各数据库可以兼容共享

为了避免数据库或表内的字段多次重复，利用关系型数据库，我们可以在表之间使用一个字段，进行关联起来

### 5.ASP 与数据库

ASP 是通过一组统称为ADO（ActiveX Data Objects）的对象模块来存取数据库，无论您采用的是Access，SQL，Server，Visual FoxPro，Informix，Oracle，dBase 或其它数据库，只要该数据库具有对应的ODBC 或OLE DB 驱动程序，ADO 对象就能加以存取

要知道系统安装看那些ODBC 或OLE DB 驱动程序，Windows 2000的用户可以打开 控制面板，依次在管理工具-ODBC 数据源 上双击鼠标左键

事实上，ASP 提供的ADO 对象模块包含了下列6个对象和3和集合，比较常用的则是Connection，Recordset，Command，Field 等

### 6.建立Access 数据库

虽然不容的系统可能安装不同的ODBC 或OLEDB 驱动程序，但是您只要安装了IIS，系统上至少会有Microsoft Access Drive，Microsoft ODBC for Oracle，SQL Server 等ODBC 驱动程序，换句话说，您至少可以用Access ，Oracle，SQL Server ，等3种最主流的数据库从事ASP 网页数据库设计

由于Microsoft Access2000 属于Microsoft 2000家族，取得较为容易，且界面和Office 家族类似，学习起来没有什么障碍（文件后缀名为.mdb）

步骤：1.打开，新建空数据库

2。保存到服务器路径

3.创建一张表

4.输入字段

5.定义主键（一般为自动递增的数值），用于与其他表进行关联

6.输入信息

###### 1.打开和关闭数据库连接

在存取数据之前,你必须使用ADO 对象模块的Connection 对象打开数据库库连接

**格式:**

```
Dim conn
Set conn=Server.CreateObject("ADOOB.Connection")
```

**说明:**Connnection 对象主要用途是打开与关闭数据库的连接

**方法:**

Close 	关闭数据库

Open 	打开一个一个数据库连接

Execute	对表进行SQL 查询

**属性:**ConnectionString 描述数据库的连接方式

数据库的完整代码:(Access OLE DB 驱动程序)

```asp
Dim conn
Set conn=Server.CreateObject("ADOOB.Connection")
conn.ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="$server.mapPath("数据库名.mdb")
conn.open
'数据库操作代码'
conn.close
set conn=nothing
```

**程序解释:**

使用Server.CreateObject 方法建立Connection 对象实例,在指派给conn,使用Connection  对象的ConnectionString 属性设置数据库的连接方式,其中

Provider=Microsoft.Jet.OLEDB.4.0; 表示采用OLE DB 驱动方式进行连接,而

Server.MapPath("数据库名.mdb")  就是数据库的路径,最后使用Open方法打开数据库

最后,打开数据库进行了一系列的操作,要关闭和销毁对象实例的

conn.close	关闭数据库连接

set conn=nothing  释放Connection 对象实例所占的空间

###### 2.数据库记录操作

在您学会使用Connection 对象打开数据库连接之后,接下来,你可以使用ADO 对象模块提供的Recordset 对象存取表的记录,建立Recordset 对象实例的方法如下:

```
Set rs=Server.CreateObjeect("ADODB.Recordset")
```

**Recordset 对象**

**说明:**Recordset 对象可以存取表的记录,包括读取,插入,删除,更新等

**方法:**

AddNew		插入记录,需要在执行Update 方法才能完成数据新增

Delete			删除指针所指到的记录

Open			取得Recordset 对象,他可能包含表的所有记录或者符合SQl 查询记录

Update		完成更新

MoveNext	移动指针到下一条记录

MovePrevious	移动指针到上一条记录

MoveFirst		移动到第一条记录

MoveLast		移动到最后一条记录

Move Num	移动到对象中目前指针的下个Num 条记录

**调用方法:**rs.MoveNext

**属性:**

AbsolutePosition	目前指针的绝对位置,其值在1~RecordCount 属性的值之间

AbsolutePage			当Recordset 对象由设置分页时,AbsolutePage 会返回目前的页码

BOF							若指针位于第一条记录之前,返回True,否者返回false

EOF							若指针位于最后一条记录之后,返回True,否者返回false

Filter						筛选记录

MaxRecords			可以返回最多条记录数

PageCount				返回分页总数

PageSize					设置分页时,PageSize 为每页的记录条数

RecordCount			返回记录条数

cursorType				指针对象中的移动方向,由四种参数值

| 设置值 | 常数              | 说明                                                     |
| ------ | ----------------- | -------------------------------------------------------- |
| 0      | adOpenForwordOnly | 默认值,表示只能向下一条记录移动                          |
| 1      | adOPenKeySet      | 指针可以自由上下移动,可看到更新记录,看不到新增和删除记录 |
| 2      | adOPenDynamic     | 什么都可以看到,资源消耗多,而且Access 不支持              |
| 3      | adOpenStatic      | 自由移动指针,看不到新增和删除,更新,和数据库中断了        |

LockType					能否写入记录

| 设置值 | 常数                 | 说明                                                      |
| ------ | -------------------- | --------------------------------------------------------- |
| 1      | adLockReadyOnly      | 默认值,表示所有记录只读,不允许修改                        |
| 2      | adLockPessimistic    | 当开始编辑某条字段时,锁定记录,待编辑完后update 更新,解锁  |
| 3      | adLockOptimistic     | 调用update 更新锁定记录,和2 比起来有不同步的问题,但效率好 |
| 4      | adLockBathOptimistic | 允许我们以批次的方式更改记录                              |

CursorLocation			设置记录存放的位置

| 设置值 | 常数         | 说明                     |
| ------ | ------------ | ------------------------ |
| 2      | adUserServer | 表示记录存放在服务器上   |
| 3      | adUserClient | 表示记录被下载到浏览器端 |

###### Recordset 语法

**语法:**Rs.Open(Source,Connection,CursorType,LockType)

**参数:**

Source:	这个是Command 对象或包含指定的字符串(表名)

Connection:用来打开数据库连接的Connection 对象,(coon)

cursorType:设置指针对象的移动方向,1 表示指针自由的上下移动

LockType:设置能否写入表,1 表示指针只读,不能写入

指针,1,1

所以对照语法,出来的格式为:rs.open "字符串类型的表名",conn,1,1

**示例:**

```asp
<%
Dim conn,rs
Set conn=Server.CreateObject("ADOOB.Connection")
conn.ConnectionString ="Provider=Microsoft.Jet.OLEDB.4.0;Data Source="$server.mapPath("数据库名.mdb")
conn.open

Set rs=Server.CreateObjeect("ADODB.Recordset")
rs.open "择友俱乐部",conn,1,1



rs.close
set rs=nothing
conn.close
set conn=nothing
%>
```

指针默认值第一条数据的位置,使用rs("字段")或rs(0),rs(1) 读取(默认第一条数据)当前位置的数据

使用rs.movenext 移动指针到下一条数据,使用rs.eof 判断是否到达最后一条数据

使用 exit for 退出for 循环 exit do 退出do 循环,exit if 退出if 语句,exit sub 退出子程序

```asp
<%
for i=1 to 1000		'一般是使用do...while 循环'
if rs.eof then exit for
response.write(rs(1))

next
%>
```

**sql,conn,1,1 代表不允许更新，一般用于查询操作。**

**sql,conn,1,3 代表允许更新，一般用于插入，更新和删除操作。**



