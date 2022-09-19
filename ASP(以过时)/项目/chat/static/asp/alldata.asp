<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("../access/login.mdb"))
set rs = Server.CreateObject("ADODB.recordset")

Response.CharSet = "GB2312"
sql="SELECT * FROM loginadmin"        



rs.Open sql,conn,1,1





%>

<table border="1" width="600" align="center">
<tr>
<th>ID</th>
<th>admin</th>
<th>pwd</th>
<th>petName</th>
<th>headImg</th>
<th>islogin</th>
<th>ismanager</th>
<tr/>
<%do while not rs.eof%>
<tr>
<td><%=rs(0)%></td>
<td><%=rs(1)%></td>
<td><%=rs(2)%></td>
<td><%=rs(3)%></td>
<td><%=rs(4)%></td>
<td><%=rs(5)%></td>
<td><%=rs(6)%></td>
<tr/>
<%
rs.movenext
loop
%>
</table>

<%
rs.close        '没有打开,就不能使用关闭,报错
set rs = nothing
conn.close
set conn = nothing
%>
