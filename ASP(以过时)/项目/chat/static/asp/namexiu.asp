<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%Response.Charset="utf-8"%>
<%
'连接数据库
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
'操作数据库
set rs = Server.CreateObject("ADODB.recordset")

myname=request.QueryString("myname")
myid=request.QueryString("myid")

if len(myid)>0  then
sql="SELECT id,petName FROM loginadmin where id="&myid

rs.Open sql,conn,1,3

if not rs.eof then
' response.write rs(0)&"<br/>"
' response.write rs(1)&"<br/>"
if(len(trim(myname))=0) then
myname="未设置用户名"
end if
rs(1)=myname
rs.update
response.write"(function(){ return ['修改姓名成功!更新后的名字为:"&rs(1)&"']})()"
else
response.write  "(function(){ return '输入错误~'})()"
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