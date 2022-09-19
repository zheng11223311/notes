### 1.ASP 程序调试

调试对程序设计而言，可以说是家常便饭，无论是庞大如Microsoft Windos，Miscrosoft Office，Internet Explore 等商用软件或小型如我们所撰写的ASP 程序，都可能产生错误，因此，任何软件在推出之前，都必须经过严密的调试与测试，才能尽量减少错误的产生。一般来说，**常见的程序错误有下列两种：**

1.终止执行错误，这类错误会导致程序终止，又称Fatal Error

2.运行错误：这类的错误虽然不会导致终止程序，但会产生错误的执行结果，又称Nofatal Error

现在，我们来看个会产生终止执行错误的程序示范

```asp
<%Option Explicit%>		表示变量使用前必须声明
<html>
    <body>
        <%
        	str="大家好"
            response.write str
        %>
    </body>
</html>
```

**一般服务器错误类型有以下几种：**

HTTP404，错误码为404，表示所要执行的网页不存在

HTTP500，错误码为500，表示内部服务器错误

HTTP500;100，错误码为500，次要错误码100，表示内部服务器错误--ASP 错误

**技巧：当您的程序发生终止执行错误时，您可以试着先检查下列几种情况**

1.变量在使用之前是否声明

2.所存取的对象的方法或属性是否存在

3.是否不小心将VBScript 的关键字或保留字当成变量声明或使用

4.存取数组是否超过范围

### 2.使用Err 对象处理错误情况

在默认的情况下，当ASP 程序发生终止执行的错误时，浏览器会出现”无法显示网页“和许多属于的术语信息，这对用户来说实在有点难以接受，为了避免这种情况，我们可以换一种写法，利用ASP2.0 所支持的Err 对象及VBScript 和On Error Resume Next 语句，令VBScript 引擎在遇到ASP 程序错误时，可以先跳过，直接去执行下一行

语法：On Error Resume Next 

用途：遇到错误时候先跳过，继续执行下面的程序代码

```asp
<%Option Explicit%>
<%
on error resume next 
str="hello"
response.write str
if err.number>0 then
response.write "对不起，程序发生错误，停止执行"
response.write "错误代码："&err.number
response.write "错误原因："&err.description		'抓取后错误，下面的代码就不会执行
end if
response.write "返回首页<a href=err.asp>此处</a>"
%>
```

注：当有错误时，Err 对象的Number 属性为错误代号，其值大于0，Rescription 属性则代表错误类型

Err 对象只能应用在服务器端的Script 语言为VBScript 的情况

### 3.使用ASPError 对象处理错误情况

我们知道，当网页发生错误时候，Web 服务器其会产生HTTP 错误，同时浏览器显示默认的错误画面

若要查看HTTP 错误默认的处理程序或自定义错误处理程序，可以在“控制面板”的 管理工具 图标上双击鼠标左键，然后再 Interval 服务器管理 图标上双击鼠标左键

现在，我们撰写一个会产生HTTP500-100 错误的ASP 程序，然后在撰写一个HTTP500-100的处理程序

```asp
<%Option Explicit%>
<%
	dim u
    u=ubound()

%>
```

```asp
对不起，程序发生了错误，停止执行
<%
dim objASPError
    set objASPError=Server.GetLastError()

response.write "错误码："&objASPError.ASPCode
    response.write "错误代号："&objASPError.Number
    response.write "错误程序码："&objASPError.Source
    response.write "错误文件："&objASPError.File
    response.write "错误行数："&objASPError.Line
    response.write "错误Column(列数)："&objASPError.Column
    response.write "错误类型："&objASPError.category
    response.write "错误描述："&objASPError.Description
    response.write "错误描述："&objASPError.ASPDescription
response.write "错误原因："&err.description		'抓取后错误，下面的代码就不会执行
end if
response.write "返回首页<a href=err.asp>此处</a>"
%>
```

程序解释：

1.调用了Server 对象的GetLastError() 方法取得最近一次发生的错误，然后将返回的ASPError 对象实例派给ObjASPError 变量

2.利用ASPError 对象的属性显示出各项错误信息，其中ASPCode 属性为IIS 在碰到ASP 错误是所产生的错误码，Number 属性为错误代码，Source 属性为产生错误的程序代码，File 属性为产生错误的文件，Line 属性为产生错误代码的行数，Column 属性为产生错误的那行代码的第几个字符，Categoery 属性为错误类型，Description 属性为错误描述，ASPDescription 属性为ASP 错误描述

3.通过控制面板，点选属性，打开自定义错误信息，然后编辑属性，写上编好ASP 程序路径











