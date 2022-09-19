<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%Response.Charset="utf-8"%>
<%
'连接数据库
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
'操作数据库
set rs = Server.CreateObject("ADODB.recordset")

friendid=request.QueryString("friendid")
myid=request.QueryString("myid")

if len(friendid)>0  then
sql="SELECT * FROM myfriend where friendid ="&friendid&" and myid="&myid

rs.Open sql,conn,1,1

if not rs.eof then
' response.write rs(0)&"<br/>"
' response.write rs(1)&"<br/>"
' response.write rs(2)&"<br/>"
' response.write rs(3)&"<br/>"
' response.write rs(4)&"<br/>"
' response.write rs(5)&"<br/>"
response.write  "(function logindata(){ return [false,'已存在该好友！']})()"
else
rs.close  '再次使用需要先关闭
sql="SELECT * FROM loginadmin where id="&myid
 
rs.Open sql,conn,1,1
' response.write rs(0)&"<br/>"
' response.write rs(3)&"<br/>"
' response.write rs(4)&"<br/>"
' response.write(now())   '2021/10/3 11:18:43

strSQL1="insert into grouppeople(myid,friendid,myname,mymsg,mytime,myheadimg) VALUES ("&myid&","&friendid&",'"&rs(3)&"','成功添加好友~','"&now()&"','"&rs(4)&"')"
Conn.execute strSQL1
strSQL2="insert into myfriend(myid,friendid) VALUES ("&myid&","&friendid&")"
Conn.execute strSQL2
response.write  "(function logindata(){ return [true,'添加成功！']})()"
end if




%>



<%
rs.close        '没有打开,就不能使用关闭,报错
set rs = nothing
conn.close
set conn = nothing
else
' response.write  "(function logindata(){ return '请输入好友id~'})()"
end if
%>