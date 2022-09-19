<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%Response.Charset="utf-8"%>
<%

'连接数据库
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
'或使用以下方式连接
'conn.Open "driver={Microsoft Access Driver (*.mdb)};dbq="&Server.MapPath("../access/login.mdb")

'操作数据库
set rs = Server.CreateObject("ADODB.recordset")

' Response.CharSet = "GB2312"
' Response.CharSet = "utf-8"

' len 数字和字母长度都是1,中文长度为2个
' response.write Len("a") '1
' response.write Len("a ") '2 字母计算前后空格
' response.write Len(" a") '2
' response.write Len("")  '0
' response.write Len(" ") '1  1个单独空格计算为1
' response.write Len("  ") '2  2个单独空格计算为2
' response.write Len(" 哈") '2    前面空格不计算
' response.write Len("哈") '1
' response.write Len("哈 ") '2  后面也不空格计算
' response.write Len(request.QueryString("username")) 
' if Len("a")<>0 then
' end if


' 如果存在请求参数
if  Len(request.QueryString("username"))>0 then
name=request.QueryString("username")
pws=request.QueryString("password")
'查询不到会报错,是因为eof 还没有才报错
'查询类型不匹配也会报错
'在access 中的工具 表字段 修改数据类型
' 字符串查询要带上单引号
sql="SELECT * FROM loginadmin WHERE pwd='"&pws&"' and admin='"&name&"'"        

'sql,conn,1,1 代表不允许更新，一般用于查询操作。,使用1,3 查询为空时会报错等问题
'sql,conn,1,3 代表允许更新，一般用于插入，更新和删除操作。
rs.Open sql,conn,1,1
if not rs.EOF  then
' 查询时,可以获取到所有的字段
' response.write rs(0)&"<br/>"
' response.write rs(1)&"<br/>"
' response.write rs(2)&"<br/>"
' response.write rs(3)&"<br/>"
' response.write rs(4)&"<br/>"
' response.write rs(5)&"<br/>"
' response.write rs(6)&"<br/>"
'是否登入，id，昵称，头像，修改是否登入，是否是管理员
response.write"(function logindata(){ return [true,"&rs(0)&",'"&rs(3)&"',"&rs(4)&","&LCase(rs(5))&","&LCase(rs(6))&"]})()"

'登入时,将登入状态改为true
' rs("islogin")
' 先将数据库关闭
rs.close        '关闭操作数据库

' 在以写入的方式打开
rs.Open sql,conn,1,3
' 更新登入状态是否登入
rs(5)="true"    '赋值后必须执行修改,否则报错,注意连接为1,3才行
rs.update       '更新数据

else
response.write("false")
end if
' '= 直接比较






' '表单提交
' if  not rs.EOF  then
' strSQL1="insert into loginadmin(admin,password) values ('"&name&","&pws&"')"
' Conn.execute strSQL1

' end if


'关闭数据库并释放空间
rs.close        '没有打开,就不能使用关闭,报错
set rs = nothing
conn.close
set conn = nothing

else
response.write("false")

end if
%>



