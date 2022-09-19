### 1.Application 对象

Application 独享的用途是记录整个网站信息，例如上站人数，在线名单，意见调查或在线票选统计等。由于ASP 程序中的变量在程序重新执行之前会恢复为空，无法记录上次执行完毕的值，因此，倘若我们想统计上站人数，计算器变量在网站被重新拜访时就会恢复为空，根本无法进行统计，这是，我们必须使用Application 对象来记录计数器变量在上次执行完毕时的值，才能进行累计

当有数个浏览者同时读取网页时，Application 对象可以用来记录不同浏览器端共享的变量，因为无论有几个浏览者同时读取网页，都会只产生一个Application 对象实例，请注意，Application 对象默认的生命周期起始与Web 服务器开始执行时，终止与Web 服务器结束执行时（例如：服务器重启），或超过20分钟没有任何浏览器读取网页

**集合**

Contents：此集合包含所有非对象变量，这是Application 对象默认的集合，因此倘若我们要存取Application 对象记录的变量Counter，可Application.Contents("Counter") 或者Application("Counter")

StaticObjects：此集合包含所有变量对象，在Global.asa 文件中使用<OBJECT>标记所建立

**方法**

Contents.RemoveAll:删除Contents 集合内所有的变量

Contents.Remove(Item):从Contents 集合内删除Item 所指定的变量，Item 可以是字符串或整数，若Item 为整数，那么这个整数所代表的是索引值

Lock：禁止其他浏览器端修改Application 对象记录的变量值

UnLock：允许其他浏览器端修改Application 对象记录的变量值

**事件**

Application_onStart：在建立Application 对象的时候会产生这个事件

Application_onEnd：在结束Application 对象的时候会产生这个事件

```asp
<%COunter=Application("Counter")+1%>
<html>
    <body>
        您是第<%=counter%>位访客
        <%Application("counter")=Counter%>		将值进行储存
    </body>
</html>
```

**简化**

```asp
<%Application("Counter")=Application("Counter")+1%>
<html>
    <body>
        您是第<%=Application("counter")%>位访客
    </body>
</html>
```

可以使用其他值记录<%Application("c")=Application("c")+1%>，只不过会重新开始计数

事实上，这个计数器程序是有缺陷的，若刚好有两位用户同时存取该网站，同时执行Application("c")=Application("c")+1 语句，那么上站人数就少算1人，如果要解决这些问题，必须在累计之前先锁定Application 对象，让其他人无法使用此对象，带累计完毕之后在解除锁定，才不会锁定

```asp
<%
Application.Lock	'锁定对象'
Application("Counter")=Application("Counter")+1
Application.UnLock	'解锁对象'
%>
<html>
    <body>
        您是第<%=Application("counter")%>位访客
    </body>
</html>
```

### 2.解决Application 的生命周期

除了上面的问题，还有另外一个问题就是Application 对象生命周期，在默认情况下，若Web 服务器关机或超过20分钟没有任何浏览器读取该网页，Application 对象就会自动消失，而恢复为空，若高要彻底解决这个问题，我们必须写入文件

```asp
<%
function counts1(counterfile)
    dim fso ts
	Application.Lock	'锁定对象'
    set fso=server.createobject("scrtipting.filesystemobject")
    set ts=fso.opentextfile(server.mappath(counterfile),1,true)
    if not ts.atendofstream then	'检查是否达到文件结尾'
        Counters=ts.readline		'读出来的是字符串，系统会制动转换为数字'
        'Counters=cLng(ts.readline)	使用cInt 或cLng 进行强制转换
     else
         Counter=1
    end if
    counts=counts+1
    ts.close
    set ts=nothing
        
    set ts=fso.opentextfile(server.mappath(counterfile),2,true)
    ts.writeline(counts)
        
    ts.close
    set ts=nothing
	Application.UnLock	'解锁对象'
        counts1=counts
end function
       counts(counter.txt) 
%>
<html>
    <body>
        您是第<%=counts(counter.txt) %>位访客
    </body>
</html>
```

CStr() 函数将计数器的数值强制转换为字符串，Len() 函数的用途是取得指定字符串的长度，Mid(string,I,Length) 函数的用途是从字符串String 的第i 个位置取出Length 个字符串，换句话说，Mid(StrCounts,I,1) 的意义就是取出StrCounts 的第I 个字符

### 3.使用Application 对象记录数组

Application 对象除了可以记录一般变量之外，也可以记录数组，现在，我们就来示范如何使用Application 对象记录数组，以及如何读取Application 对象所记录的数组

```asp
<%
	'定义一个数组'
    dim array(3)
     array(0)="网页设计百宝箱"
     array(1)="E 时代网页设计"
     array(2)="Flash5网页高手"
     array(3)="ASP 与网页数据库设计"
     '使用Application 对象记录数组'    
    dim titles
        application("titles")=array
        '读取Application 对象所记录的数组并显示出来
        '
    if isArray(Application("titles"))then
        for i=lbound(application("titles")) to ubound(application("titles"))
            response.write application("titles")(i)&"<br>"
        next
    else
        response.write application("titles")&"<br>"
    end if            
%>
```

注：isArray() 函数判断是否为数组

