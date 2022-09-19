### 1.从浏览器端取得数据的方法

一般来说，网页通常会通过“表单”的形式让浏览者输入数据，然后将表单数据返回Web 服务器，以备登入或者查询之用，而Request 对象的用途则是帮助我们读取这些表单数据

**post.html**

```asp
<form method="post" action="reg.asp">
    <div>账号：<input type="text" name="username" value=""></div>
    <div>密码：<input type="password" name="password" value=""></div>
    <div>真实姓名：<input type="text" name="zname" value=""></div>
    <div>性别：<input type="radio" name="age" value="男" checked>男
    <input type="radio" name="age" value="女">女</div>
    <div>你的网址：<input type="text" name="http" value="http://"></div>
    <div>你的网址：<input type="submit"  value="提交"></div>
</form>
```

**reg.asp**

```asp
<%@Language=VBScript%>
<%Option Explicit%>
<%
	dim username,password,zname,age,http
        username=request("username")	
        password=request("password")
        zname=request("zname")
        age=request("age")
        http=request("http")
%>
<html lang="en">
<head>
    <title>日期程序</title>
</head>
<body >
    <div>会员注册信息</div>
    <div>账号：<%=username%></div>
    <div>密码：保密</div>
    <div>真实姓名：<%=zname%></div>
    <div>年龄：<%=age%></div>
    <div>网址：：<%=http%></div>
</body>
</html>

```

### 2.读取表单数据-Request.QueryString 和Request.form 集合

读取表单数据的方法取决于表单数据返回服务器的方式，若您在<form>标记中将method 属性设置为“get”，表单数据将以字符串的方式附加在网址后面返回服务器，例如：http://locasthost/reg.asp?username=liyanhui&zname=xxxx 等等，此时必须使用Request 对象的QueryString  集合来获取表单数据。比方说：

```asp
Request.QueryString("username")

Request.QueryString("zname")
```

相反的，，若您在<form>标记中将method 属性设置为“post”，表单数据将以放在http 表头的方式返回服务器，此时必须使用Request 对象的form 集合来获取表单数据。比方说：

```asp
Request.form ("username")

Request.form ("zname")
```

如果你使用的方式不配合的话，比如说，你用了QueryString   集合获取数据，却使用了post 的方式 ，那么获取的数据字符串就为0，事实上，倘若你不想因为这两种数据获取方式混淆而导致错误，那么你完全可以省略掉，比如：

```asp
request("username")

request("password")
```

这么一来，request 就会先到QueryString 集合搜索，找到的话就会获取数据，如果找不到，就会以Form 集合的方式继续寻找

### 3.读取服务器端环境变量与http 标头-Request.ServerVariables

Request 对象的ServerVariables 集合可以用来读取服务器端变量环境与http 标头，举例来说明，当您要获取网页虚拟路径，远程主机名，服务器名称或IP，服务器连接口，服务器版本，服务器软件版本时，你可以这样来写

```asp
<%@Language=VBScript%>
<%Option Explicit%>
<html lang="en">
<head>
</head>
<body >
    网页虚拟路径：<%=request.servervariables("path_info")%><br>	 
    远程主机名称：<%=request.servervariables("remote_host")%><br>
    服务器名称或IP：<%=request.servervariables("serve_name")%><br>
    服务器连接端口：<%=request.servervariables("serve_port")%><br>
    服务器HTTP 版本：<%=request.servervariables("serve_protocol")%><br>
    服务器软件版本：<%=request.servervariables("serve_software")%><br>
</body>
</html>
```

还有其他的环境变量，搜索 asp 环境变量

### 4.读取Cookie 文件—Request.Cookies 集合

```asp
<%@Language=VBScript%>
<%Option Explicit%>
<%
dim name,age,last
    name=request.cookies("cookiesname")("username")
    age=request.cookies("cookiesname")("age")
    last=request.cookies("cookiesname")("last")
%>
<html lang="en">
<head>
</head>
<body >
   <%=name%>您好，欢迎<%=age%>的您光临本站<br>
    您上次拜访本站的时间为：<%=last%>，而现在的时间为<%=now()%>
</body>
</html>
```

### 5.隐藏字段的应用--将表单提交网页和表单处理程序合并为一个asp 程序

```asp
<html lang="en">
<head>
</head>
<body >
    <%if request("send")="" then%>	接受传递来的send 的值
    <form method="post" action="post.asp">
        <input type="hidden" name="send" value="true">	这里用来记录是否提交，true
        <div>账号：<input type="text" name="username" value=""></div>
        <div>密码：<input type="password" name="password" value=""></div>
        <div>密码提示：<input type="text" name="passt" value=""></div>
        <div>密码问答：<input type="text" name="passd" value=""></div>
        <div>密码：<input type="submit"  value="发送">
            <input type="reset"  value="重写"></div>
    </form>
   <%else%>
    <%
    dim username,password,passt,passd
        username=request("username")
        password=request("password")
        passt=request("passt")
        passd=request("passd")
    %>
     <div>账号：<%=username%></div>
     <div>密码：<%=password%></div>
     <div>密码提示：<%=passt%></div>
     <div>密码问答：<%=passd%></div>
    <%end if%>
</body>
</html>
```





