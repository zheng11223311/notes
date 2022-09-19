<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>

<%Response.Charset="utf-8"%>
<%
'连接数据库
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
'操作数据库
set rs = Server.CreateObject("ADODB.recordset")

' sql="SELECT petName FROM grouppeople "
myid=request.QueryString("myid")
friendid=request.QueryString("friendid")
'使用limit 报错
' sql="SELECT top 10 * FROM grouppeople order by myid "
' sql="SELECT top 10 * FROM grouppeople order by myid,friendid "
' sql="SELECT top 10 * FROM grouppeople order by myid asc "   ' order by asc 降序
' sql="SELECT top 10 * FROM grouppeople  "   '选择顶部10条
' sql="SELECT * FROM grouppeople where myid="&myid&" and friendid="&friendid&" or myid="&friendid&" and friendid="&myid
' sql="SELECT top 10 * FROM  (SELECT * FROM grouppeople where myid="&myid&" and friendid="&friendid&" or myid="&friendid&" and friendid="&myid&")"
' sql="SELECT top 10 * FROM  (SELECT * FROM grouppeople where myid="&myid&" and friendid="&friendid&" or myid="&friendid&" and friendid="&myid&") order by mytime asc"
' 先desc 升序,将最新的消息排在头部,使用top 获取前面头部消息,将得到的消息反向排序,从上到下变成为从旧的消息到新的消息
sql="SELECT  * FROM (SELECT  top 10 * FROM  (SELECT * FROM grouppeople where myid="&myid&" and friendid="&friendid&" or myid="&friendid&" and friendid="&myid&") order by mytime desc)order by mytime asc "

%>
[
<%
rs.Open sql,conn,1,1
do while not rs.eof 
' response.write rs(0)&"<br/>"
' response.write rs(1)&"<br/>"
' response.write rs(2)&"<br/>"
' response.write rs(3)&"<br/>"
' response.write rs(4)&"<br/>"
' response.write rs(5)&"<br/>"

%>
[<%=rs(0)%>,<%=rs(1)%>,<%="'"&rs(2)&"'"%>,<%="'"&rs(3)&"'"%>,<%="'"&rs(4)&"'"%>,<%="'"&rs(5)&"'"%>],

<%

rs.movenext
loop
%>
]




<%

rs.close        '没有打开,就不能使用关闭,报错
set rs = nothing
conn.close
set conn = nothing
%>