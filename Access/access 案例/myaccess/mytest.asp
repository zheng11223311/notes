
<html>
<head>
<!--必须声明使用utf-8编码，否则在IE8中页面显示会乱码-->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>数据库的连接、增删改查</title>
</head>
<body>
<%
'asp同使用'去注释，不允许使用;来结束语句，每一个enter键就是代表一条语句结束
 db="./db1.accdb"
'指定动作，pwd后的值代表此数据库的密码

dim con,constr,rs
constr="provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & server.MapPath(db)

set con=server.CreateObject("ADODB.connection")
con.open constr
'在网页上输出东西，可以用response对象 
response.write "数据库连接成功！"
%>
</body>
</html>
