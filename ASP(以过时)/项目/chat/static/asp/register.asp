<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%Response.Charset="utf-8"%>

<%

set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
set rs = Server.CreateObject("ADODB.recordset")


'request.QueryString("username") 是字符串
' 数据库查询出来的也是字符串
if Len(request.QueryString("username"))>0 and Len(request.QueryString("username"))>0 then
name=request.QueryString("username") 
pws=request.QueryString("password")
' response.write name
' response.write pws
sql="SELECT * FROM loginadmin  WHERE admin='"&name&"'"

rs.Open sql, conn
if  rs.bof and rs.eof then   '如果不存在数据



'写入不进去可能是数据库文件有问题，重新上传数据库文件
' password 为系统关键字，使用到插入会报错
strSQL1="insert into loginadmin(admin,pwd) VALUES ('"&name&"','"&pws&"')"
Conn.execute strSQL1
response.write "(function logindata(){ return [true,'注册成功！请登入~']})()"
else    '如果存在数据
response.write("false")
end if

rs.close        
set rs = nothing
conn.close
set conn = nothing

else    '如果注册长度为空
response.write("false")
end if

%>
