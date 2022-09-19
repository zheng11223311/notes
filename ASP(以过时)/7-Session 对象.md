### 1.Session 对象

Session 对象的用途也是记录浏览器端的变量，但和Application 对象不同的是，Application 对象记录的是所有的浏览器端共享的变量，而Session 对象记录的则是个别端专用的变量

```asp
<%counter=application("counter")+1%>
<html>
    <body>
        您是第<%=counter%>位访客
        <%Application("counter")=Counter%>		将值进行储存
        
    </body>
</html>
```



```asp
<%Session("counter")=Session("counter")+1%>
<html>
    <body>
        这是您第<%=Session("counter")%>访问本站
    </body>
</html>
```

Session 对象和Application 对象一样有生命周期的问题，在默认情况下，如果浏览器在20分钟之内没有在读取该网页，Session 对象会自动消失，所以记录的任何变量都会恢复为空，若要保存Session 变量的值，必须将他写入文件

说明：Session 对象也是用来记录	浏览器端的变量，但和Application 对象不同的是，Application 对象记录了所有浏览器共享的变量，而Session 对象则是记录了个别浏览器端专用的变量，Session 对象默认的生命周期为20分钟

集合：Contents，基本式：Session.Contents("Counter")或Session("Counter")

属性SessionID 用来识别每个Session 的识别码

方法：Abandon 完成目前的网页之后便结束Session 对象

注：在Web 服务器执行期间，SessionID 是唯一的，但如果Web 服务器重新开机，新产生的SessionID 可能和原有的SessionID 重复

**产生SessionID 的方法**

```asp
<%Session.sessionid%>
或
<%=Session.sessionid%>
```

结束Session 对象的方法--Session.Abandon 方法

```asp
<%Session.abanodn%>
```

