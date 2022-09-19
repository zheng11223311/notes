<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%Response.Charset="utf-8"%>
<%
'连接数据库
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
'操作数据库
set rs = Server.CreateObject("ADODB.recordset")



myid=request.QueryString("myid")
friendid=request.QueryString("friendid")
myname=request.QueryString("myname")
mymsg=request.QueryString("mymsg")
' mytime=request.QueryString("mytime")
myheadimg=request.QueryString("myheadimg")

' sql="SELECT * FROM grouppeople where myid="&myid
' rs.Open sql,conn,1,1

' response.write rs(0)&"<br/>"
' response.write rs(1)&"<br/>"
' response.write rs(2)&"<br/>"
' response.write rs(3)&"<br/>"
' response.write rs(4)&"<br/>"
response.write now()

' http://xunlei.usa3v.vip/chat/static/asp/write.asp?myid=23&friendid=1&myname=%E9%9D%93%E9%9D%93&mymsg=1231223131&mytime=2021/10/03%2018:48&myheadimg=./static/img/2.jpg

strSQL1="insert into grouppeople VALUES ("&myid&","&friendid&",'"&myname&"','"&mymsg&"','"&now()&"','"&myheadimg&"')"

'时间格式  2321/10/3 10:30:30
' strSQL1="insert into grouppeople (myid,friendid,myname,mymsg,mytime,myheadimg) VALUES ("&myid&","&friendid&",'"&myname&"','"&mymsg&"','2321/10/3 10:30:30','"&myheadimg&"')"
Conn.execute strSQL1



%>



<%
' rs.close        '没有打开,就不能使用关闭,报错
set rs = nothing
conn.close
set conn = nothing
%>