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

if len(myid)>0  then
sql="SELECT myid,friendid FROM myfriend where myid="&myid&" or friendid="&myid

rs.Open sql,conn,1,1

%>
[
<%
do while not rs.eof 
%>
[<%=rs(0)%>,<%=rs(1)%>],
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
else
response.write  "(function logindata(){ return '未知错误，请联系管理员！'})()"
end if
%>