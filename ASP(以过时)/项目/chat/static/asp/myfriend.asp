<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%Response.Charset="utf-8"%>
<%
'连接数据库
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
'操作数据库
set rs = Server.CreateObject("ADODB.recordset")

myfriendid=request.QueryString("myfriendid")

if len(myfriendid)>0  then
sql="SELECT * FROM loginadmin where id ="&myfriendid

rs.Open sql,conn,1,1

if not rs.eof then
' response.write rs(0)&"<br/>"
' response.write rs(3)&"<br/>"
' response.write rs(4)&"<br/>"
response.write"(function logindata(){ return ["&rs(0)&",'"&rs(3)&"',"&rs(4)&"]})()"
else
response.write  "(function logindata(){ return '没有相关的好友信息~'})()"
end if




%>



<%
rs.close        '没有打开,就不能使用关闭,报错
set rs = nothing
conn.close
set conn = nothing
else
response.write  "(function logindata(){ return '请输入好友id~'})()"
end if
%>