### 1.认识ASP 内置的对象

对象名称					说明

Response 对象		这个对象可用来输出由服务器端至客户端浏览器信息

Request 对象			这个对象可用来获取客户端浏览器信息至服务器端

ASPError 对象			IIS5.0 以上的版本才支持，用于程序员修改程序错误

Server 对象				这个对象提供了服务器端最基本的属性及方法

Application 对象		记录不同浏览器端共享的变量

Session 对象				记录所有浏览器端共享的变量

ObjectContext			用来链接ASP 和Microsoft Transaction Server

```asp
<%@Language="VBSctipt"%>	可以省略，默认的就是VBSctipt
<%Option Explicit%>			规定使用任何的变量必须声明
<%							<%%> 之间的语句为asp 程序
'本程序会根据服务器的日期来调整他所显示的背景
    dim weekdaynum,bg,weekdayname	'多个变量声明可以通过 ，逗号隔开'
    weekdaynum=datapart("w",data())	'此函数可以返回星期几的数值'
    
    '通过一个多项选择判断采用哪张图片
    select case weekdaynum
    	case 1
    		bg="bg7.gif"
    		weekdayname="星期天"
        case 2
                bg="bg1.gif"
    			weekdayname="星期一"
        case 3
                bg="bg2.gif"
    			weekdayname="星期二"
        case 4
                bg="bg3.gif"
    			weekdayname="星期三"
        case 5
                bg="bg4.gif"
    			weekdayname="星期四"
        case 6
                bg="bg5.gif"
    			weekdayname="星期五"
        case 7
                bg="bg6.gif"
    			weekdayname="星期六"
    
    end select
    response.write bg		'由服务器端向浏览器端输入信息'
    response.write weekdayname
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>日期程序</title>
</head>
<body background="<% response.write bg%>">
    <p>今天是<%=weekdayname %></p>		<!-- = 是response.write 的简写，也可以写成response.write() -->
</body>
</html>
```

### 2.Response 对象

语法：Response.write data

用途：将Data 显示在浏览器画面上

```asp
<% 
response.write("<p>ASP 网页</p>")
response.write("<br/>")  
response.write("<hr width=80%/>")  
response.write("<p width=80%\>ASP 网页</p>")
response.write("<p align=""center"">ASP 网页</p>")
response.write("<p align='center'>ASP 网页</p>")
response.write(Server.HTMLEncode("<p>ASP 网页</p>"))
%>
```

1.如果 <% 和 %>之间只有一行Response.write data 语句，即<% response.write data%>，那么也可以写成另一种形式，<% =data%>，如果有多行语句，则必须使用response.write data 格式

2.倘若您要在浏览器显示的信息包含%> 符号，那么您必须将他改写为%\>，否则%> 符号会被视为asp 程序的结尾

3.您可以使用Response.write 将数据传送至浏览器时，可以混合使用HTML 标记，以将数据格式化

4.倘若要在浏览器显示的信息包含双引号”，那么您必须将它改写为两个双引号或者一个单引号

5.倘若你想显示类似 <p width=80%\>ASP 网页</p>  这个的字符串，但不希望浏览器将他解释成HTML 语法，那么你必须使用Server 对象的HTMLEncode 方法将字符串编码

### 3.从当前网页导向至其他网页-Response.Redirect 方法

语法：Response.Redirect path

用途：将浏览器端导向至path 指定的网页，浏览器进入当前页面时，直接跳转至指定页面

范例：Response.Redirect "index.html"

### 4.缓冲处理

语法：Response.Buffer 属性，Response.Clear属性，Response.Flush属性

除了立即将输出传送至缓冲区域之外，您也可以启用缓冲处理，将输出暂时存放缓冲区，待程序执行完毕或接收到指令之外，再将输出传送至浏览器端

IIS5.0 hi默认启用缓冲处理，IIS4.0不会

语法：Response.Buffer     默认=true

相反的，如果取消缓冲处理，可以在ASP 程序·的前面加上如下语句

Response.Buffer=False

Response 对象另外提供了两个方法可以处理缓冲区的数据

Response.Clear：清楚所有存放在缓冲区尚未传送至浏览器端的数据

Response.Flush先把存放在缓冲区的输出传送至浏览器端在进行清除缓冲区

```asp
<%Response.Buffer=True%>
<html lang="en">
<head>
    <title>日期程序</title>
</head>
<body >
   <% response.write "hello"%> 
    <% response.clear %>	清除这条代码前面的所有数据（所有缓冲）
    <% response.write "world"%>
</body>
</html>

源码显示（只有clear 代码之后的一部分）
world
</body>
</html>

```

response.clear 的作用就是为了清除缓冲区里的数据，导致了response.clear 上面的语句全部被清除了，所以只显示response.clear 以下的语句

```asp
<%Response.Buffer=True%>
<html lang="en">
<head>
    <title>日期程序</title>
</head>
<body >
   <% response.write "hello"%>  程序把前面的代码放入缓冲区
    <% response.flush %>	先将代码前面缓冲数据传送至浏览器再清空代码缓冲
    <% response.write "world"%>	再次重新将数据放入缓冲区
    <% response.clear %>	清除这条代码前面放入缓冲区的所有数据（即所有缓冲）
</body>
</html>

源码显示（只有flush 之前和 clear 代码之后的一部分）
<html lang="en">
<head>
    <title>日期程序</title>
</head>
<body >
hello

</body>
</html>

```

response.flush 指令会把缓冲区里的数据传送至浏览器端

### 5.结束程序的执行-Response.End 方法

Response.End 方法会结束程序的执行，若缓冲区内有任何数据，还会将数据传送至浏览器端

```asp
<%Response.Buffer=True%>
<html lang="en">
<head>
    <title>日期程序</title>
</head>
<body >
   <% response.write "hello"%>  程序把前面的代码放入缓冲区
    <% Response.End %>     结束程序
</body>
</html>

源码显示
<html lang="en">
<head>
    <title>日期程序</title>
</head>
<body >
hello
    
```

 时间的比较 

```asp
<% 
current=time()
if current>#12:00:00# then
	response.write "目前暂不开放"
%>
```

### 6.将信息写入Cookie 文件-Response.Cookies 集合

Cookie 是在浏览者拜访某网站时，Web 服务器在浏览器端所写入的一些小文件，换句话说，Cookie 时存放在浏览器端的本地磁盘上，而不是存放在服务器端，Cookie 可能记录了浏览者的个人信息，浏览器类型，何时拜访该网站，从事哪些活动等，如此一来，等浏览者下次再度拜访该网站时，只要查询Cookies 的记录就会认得浏览者了

```asp
<%
'Response.Cookies(cookies 的文件名)(变量名)=xxx
Response.Cookies("cookieName")("username")='xxxx'	'像对象一样存取'
Response.Cookies("cookieName")("username")=12  
Response.Cookies("cookieName")("username")=now()
Response.Cookies("cookieName").Expires=Data()+7  '设置cookie 文件过期时间，没有设置的是临时的，没有文件储存在本地'

%>
```

在此特别说明，Response.Cookies("cookieName").Expires=Data()+7

Expires 属性来指定Cookie 的生命周期，其中Data() 可以用来取得就那天的日期的VBScript 函数，而Data()+7 的意义则是从今天的日期起的7天内，一旦超过这个日期，刚才建立的Cookie 便会自动消失

事实上，你也可以将cookie 的生命周期社会滋味某个日期，如

Response.Cookies("cookieName").Expires=“6/30/2100 15:00:00”

Response.Cookies("cookieName").Expires=#June 30,2100 15:00#

注：Cookie 默认的生命周期其起始与它写入浏览器端的那一刻开始，结束于浏览器结束执行时，如果您要设置Cookie 的存在期限，可以使用Response.Cookies("cookieName").Expires属性；当存在期限截止时，Cookies 将自动从浏览器端的本机磁盘上删除

### 7.Cookie 的优点

1你可以自由决定Cookies 的生命周期，有需要的话，您甚至可以将Cookie 的生命周期写成数周，数月，数年，不必担心Cookies 会因此制动消失而失去某些信息

2.由于Cookie 时存放在浏览器端的本机磁盘上，故不会占用服务器端的磁盘空间

3.Cookie 可以记录浏览者的个人信息，因此，站点设计者就可以通过每个人的信息控制权限

















