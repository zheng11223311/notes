### 1.文件的打开，读取与写入

**1.打开文件**

**方法一：使用FileSystemObject 对象OpenTextFile 方法**

语法：fso.OpenTextFile(Filename,Iomode,Create,Format)

用途：FileSystemObject  对象的OpenTextFile 方法可以打开Filename 指定的文字文件，并传回一个TextStream 对象实例，Iomode 为文字文件的打开方式，1 表示只读，2 表示可写（清除文字文件的原始内容），8 表示追加到文本文件的后面（不清除文字文件的原始内容），默认值为1，Create 表示当文本文件不存在时，是否要加以建立，默认值为false，Format 为文字文件的格式，-1 表示Unicode 文本文件，0 表示ASCII 文件，-2 表示采用系统默认值，这个参数通常不会用到

范例：

```asp
<%
dim fso，ts	'以只读模式，打开若不存在index.txt 文件，则建立'
    set fso=Server.CtrateObject("Scripting.FileSystemObject")
    set ts=fso.openTextFile(Server.mapPath("index.txt"),1,ture)
    ts.close	'关闭文件，没有关闭系统会自动关闭'
    
    set fso=nothing			'释放空间'
    set ts=nothing
%>
```

**方法二：使用File 对象OpenAsTextStream 方法**

语法：objfile.OpenAsTextStream (Iomode,Format)

用途：File 对象的OpenAsTextStream 方法可以返回代表文件的TextStream 对象案例，Iomode 为文件打开方式，1 表示只读，2 表示可写（清除文字文件的原始内容），8 表示追加到文本文件的后面（不清除文字文件的原始内容），默认值为1，Format 为文本文件的格式，-1 表示Unciode 文本文件，0 表示ASCII 文件，-2 表示采用系统默认值，这个参数通常不会用到

范例：

```asp
<%
dim fso，objfile，ts	'以只读模式，打开若不存在index.txt 文件，则建立'
    set fso=Server.CtrateObject("Scripting.FileSystemObject")
    set objfile=fso.GetFile(Server.mapPath("index.txt"))
    set ts=objfile.OpenAsTextStream(1,ture)
    
    set fso=nothing
    set objfile=nothing
    set ts=nothing
%>
```

### 2.读取文件

在您成功打开文件并取得一个TextStream 对象实例后，您可以分别使用TextStream 对象提供的Read(Num),ReadLine,ReadAll 方法从文件读取Num 个字符，一行或整个文件

**1.从文件读取Num 个字符**

```asp
<%
dim fso，chars，ts	
    set fso=Server.CtrateObject("Scripting.FileSystemObject")
    set ts=fso.OpenTextFile (Server.mapPath("index.txt")，1)
    
    do while not ts.AtEndOfStream	'检查是否到达文件结尾'
        chars=ts.read(6)			'读取6个字符，在派给字符串变量chars'
        response.write chars&"<br/>"	'输出chars 的值和强制换行'
    loop
        ts.close		'关闭打开的文件'
    
    set fso=nothing		'释放实例对象'
    set ts=nothing
%>
```

**2.从文件读取一行**

语法：ts.ReadLine

用途：从文件指针的位置读取一行，然后存放至字符串变量中

范例：

```asp
<%
dim fso，chars，aline	
    set fso=Server.CtrateObject("Scripting.FileSystemObject")
    set ts=fso.OpenTextFile (Server.mapPath("index.txt")，1)
    
    do while not ts.AtEndOfStream	'检查是否到达文件结尾'
        aline=ts.readline			'读取一行，在派给字符串变量aline'
        response.write aline&"<br/>"	'输出aline 的值和强制换行'
    loop
        ts.close		'关闭打开的文件'
    
    set fso=nothing		'释放实例对象'
    set ts=nothing
%>
```

**3.从文件读取全部内容**

语法：ts.ReadAll

用途：从文件指针的位置读取一行，然后存放至字符串变量中

范例：

```asp
<%
dim fso，chars，allines，result	
    set fso=Server.CtrateObject("Scripting.FileSystemObject")
    set ts=fso.OpenTextFile (Server.mapPath("index.txt")，1)
    '在读取文件内容之前先使用if 语句检查是否dao'da'
    if not ts.AtEndOfStream then	'检查是否到达文件结尾'
        allines=ts.readAll		'读取全部内容，在派给字符串变量aline'
        '使用Replace 函数将字符串变量中的换行符置换车工强制换行'
        result=replace(alines,vbcrlf,"<br/>")	'vbcrlf 文本中的换行'
        response.write result	'输出aline 的值和强制换行'
    end if
        ts.close		'关闭打开的文件'
    
    set fso=nothing		'释放实例对象'
    set ts=nothing
%>
```

### 3.写入文件

在您成功的打开文件并取得一个TextStream 对象实例后，您可以分别使用TextStream 对象提供的Write(String)，WriteLine(String)，WriteBlackLines(Num)方法，可以同时写多个，在文件内写入字符串和换行符，Num 个换行字符

语法：ts.Write(String)

用途：在文件内写入字符串

范例：ts.Write("ASP 动态网页设计")



语法：ts.WriteLine(String)		写入一整行文字，每一行自带换行

用途：写入一整行文字

范例：ts.WriteLine("ASP 动态网页设计")



语法：ts.WriteBlackLines(Num)

用途：在文件内写入Num 个换行字符

范例：ts.WriteBlackLines("3")		换3行

```asp
<%
dim fso，chars，allines，result	
    set fso=Server.CtrateObject("Scripting.FileSystemObject")
    set ts=fso.OpenTextFile (Server.mapPath("index.txt")，2)
    ts.ts.Write("ASP 动态网页设计")
    ts.ts.Write("ASP 动态网页设计")
    ts.WriteBlackLines("3")			'换行，空3行'
    ts.ts.Write("ASP 动态网页设计")
    ts.WriteLine("ASP 动态网页设计")	'自带换行'
    ts.WriteLine("ASP 动态网页设计")
    ts.WriteBlackLines("3")
        ts.close		'关闭打开的文件'
    
    set fso=nothing		'释放实例对象'
    set ts=nothing
%>
```

### 4.如何设置Server-Side Include

语法：<!--#include file="top.asp"-->

相比于Server.Execute("top.asp"),这个使用的更多，效果相同

```asp
<html lang="en">
<head>
</head>
<body >
    <!--#include file="top.asp"-->
   
</body>
</html>
```

**page2.asp**

```asp
<html lang="en">
<head>
</head>
<body >
    <p><%="这是page.asp 页面"%></p>
   
</body>
</html>
```

**结果**

```
<html lang="en">
<head>
</head>
<body >
       <html lang="en">
            <head>
            </head>
            <body >
                <p>这是page.asp 页面</p>

            </body>
        </html>
   
</body>
</html>
```

