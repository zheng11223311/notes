### 1.理解

Server 对象是专门为处理服务器上的特定任务而设计的，他提供了对服务器上的方法和属性的访问，通过调用这些方法何属性的设置，可以允许用户使用服务器上的许多功能，如取得服务器运行环境的功能，但最重要的功能还是可以让用户使用服务器中的AtiveX 组件

### 2.Server 对象提供的属性及方法

说明：Server 对象提供了服务器端最基本的属性及方法

### 3.执行指定的ASP程序--Server.Execute 方法

语法：Server.Execute(path)

用途：这个方法是IIS5.0新增的功能，用途类似程序语言中的函数调用，也就是说，您可以在ASP 程序中使用Server.Execute(path) 方法调用Path 指定的ASP 程序，待被调用的程序执行完毕之后在返回原来的程序，继续执行接下来的指令

```asp
<html lang="en">
<head>
</head>
<body >
    <p><%="调用Execute 方法之前"%></p>
       <%Server.Execute("page2.asp")%> 	执行page2.asp 程序后会在返回，本页面会嵌套另一个页面源码
    <p><%="调用Execute 方法之后"%></p>
   
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
    <p>调用Execute 方法之前</p>
       <html lang="en">
            <head>
            </head>
            <body >
                <p>这是page.asp 页面</p>

            </body>
        </html>
    <p>调用Execute 方法之后</p>
   
</body>
</html>
```

由于Server.Execute 方法具有函数调用功能，我们可以利用这个功能编写可以重复执行的代码片段，然后调用即可。

### 4.转移控制权至其他ASP 程序--Server.Transfer 方法

语法：Server.Transfer(path)

用途：这个方法也是IIS5.0 新增的功能，用途是将目前ASP 程序的控制权转移至path 指定的ASP 程序，即使转移之后的程序已经执行完毕，控制权仍不会返回原来的程序

```asp
<html lang="en">
<head>
</head>
<body >
    <p><%="调用Transfer  方法之前"%></p>
       <%Server.Execute("page2.asp")%> 	执行page2.asp 程序后不会在返回，本页面会嵌套另一个页面源码，但是本页面的以下代码不会被执行
    <p><%="调用Transfer  方法之后"%></p>
   
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
    <p>调用Execute 方法之前</p>
       <html lang="en">
            <head>
            </head>
            <body >
                <p>这是page.asp 页面</p>

            </body>
        </html>
    
```

### 5.字符串编码--Server.HTMLEncode 和Server.URLEncode 方法

Server 对象提供了Server.HTMLEncode 和Server.URLEncode 方法可以进行字符串编码，其中Server.HTMLEncode (string) 方法可以将string 进行编码，使它不会被浏览器解释为HTML 语法

范例：

```asp
Response.write(Server.HTMLEncode ("<p>12</p>"))
```

相反的，Server.URLEncode (string) 方法可以将String 进行编码，以放入QueryString 返回服务器

范例：

```asp
vote=<%=server.URLEncode("李辉")%>
```

其中，username=%E6%9D%8E%E8%BE%89 是QueryString  第一笔数据，而%E6%9D%8E%E8%BE%89 字符串，就是 李辉 经过编码的结果

事实上，为了避免被服务器拒绝或者造成错误，返回服务器的字符串(尤其是中文或特殊字符)最好先经过编码，而且编码的方式就是使用URLEncode 方法

### 6.将虚拟路径转换为实际路径-Server.MapPath 方法

在大部分的时候，我们通常是使用程序的虚拟路径，但由于ASP 要求我们在存取文件·夹，文件或数据库时必须使用实际路径，所以在遇到这种情况的时候，我们可以使用Server.MapPath(path)方法，将Path 指定的虚拟路径转换为实际路径

语法：Server.MapPath(path)

用途：将Path 指定的虚拟路径转换为实际路径

范例：

```asp
Server.MapPath("page.asp")		找出page.asp 的实际路径

Server.MapPath("../")		找出父目录的实际路径
```

```asp
<html lang="en">
<head>
</head>
<body >
    <p><%="父目录为"&server.mappath("../")%></p>	F:asp 实验/
    <p><%="现在目录为"&server.mappath("./")%></p>	F:asp 实验/view/
    <p><%="根目录为"&server.mappath("/")%></p>		F:/
    <p><%="网页的实际路径为"&server.mappath("page.asp")%></p>	F:asp 实验/view/page.asp
   
</body>
</html>
```

### 7.使用外挂对象--Server.CreatObject 方法

到目前为止，我们所介绍的都是ASP 内置对象，而实际上，这些ASP 对象的应用是有限的，倘若要设计出更多元化的功能。你还得学会使用服务器组件，也就是外挂对象

语法：Server.CreateObject(component)

用途：建立服务器组件的实例

范例：Server.CreateObject("Scripting.FileSystemObject")

举例来说，如果我们要在服务器端读文件，那么我们的先使用server 对象的CreateObject  方法建立一个FileSystemObject 服务器组件的对象实例

```asp
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
%>
```

其中Set 是VBScript 关键字，用来建立对象实例，fso 是这个对象实例的名称，"Scripting.FileSystemObject"是FileSystemObject 服务器组件登入在Registry 的ID

### 8.存取服务器端的文件夹和文件

ASP 并没有内置专用的对象来存取服务器端的文件夹与文件，若要存取服务器端的文件夹与文件，必须使用FileSystemObject 服务器组件，您不能直接存取FileSystemObject  服务器组件的集合，属性或方法，而是得先使用Server.CreateObject 方法建立一个FileSystemObject 服务器组件的对象实例，然后在再通过此实例对象去存取其集合，属性或方法

### 9.检查指定的磁盘，文件夹或文件是否存在

在进行磁盘，文件夹或文件的读写之前，我们都必须确定磁盘，文件夹或文件是存在的，否则将产生错误信息，我们可以分别使用FileSystemObject  对象的DriveExists(path),FolderExists(Path) 方法来检查磁盘，文件是否存在

```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
        if fso.driveexists("c:") then		'true
            response.write "c:磁盘是存在的"
        else
             response.write "c:磁盘是不存在的"
                end if
                    set fso=nothing			'释放对象，垃圾回收，节约内存'
%>
   
</body>
</html>
```



```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
        if fso.driveexists("c:\web") then		'true
            response.write "web 这个文件夹是存在的"
        else
             response.write "web 这个文件夹是不存在的"
                end if
                    set fso=nothing			'垃圾回收，节约内存'
%>
   
</body>
</html>
```



```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
        if fso.fileexists("c:\web\page.asp") then		'true
            response.write "web 这个文件是存在的"
        else
             response.write "web 这个文件是不存在的"
                end if
                    set fso=nothing			'垃圾回收，节约内存'
%>
   
</body>
</html>
```

### 10.文件夹的建立，移动，重命名，删除与复制

1.建立文件夹

语法：fso.createfolder(foldername)

用途：FileSystemObject  对象的CreateFolder 方法可以建立一个foldername 文件夹，而且参数foldername 必须使用实际路径,如果文件夹已经存在就会报错

范例：fso.createfolder(server.Mappath("\web"))

```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
         fso.createfolder("c:\web\page.asp")
            fso.createfolder(server.Mappath("\web\new"))
                    set fso=nothing			'垃圾回收，节约内存'
%>
   
</body>
</html>
```

### 11.移动，重命名文件夹

2.移动，重命名文件夹

语法：fso.MoveFolder source Destination

用途：FileSystemObject  对象的MoveFolder 方法可以将Source 指定的文件夹移动到Destination 里面，而且参数source Destination必须使用实际路径,如果文件夹已经存在就会报错

范例：fso.MoveFolder (server.Mappath("\web"),server.Mappath("\move"))

```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
         fso.MoveFolder (server.Mappath("\web"),server.Mappath("\move\web1"))
        '移动web 文件夹至move 里面，并改名为web1（重命名）'
        fso.MoveFolder (server.Mappath("\web"),server.Mappath("\web1"))	'重命名'
                    set fso=nothing			'垃圾回收，节约内存'
%>
   
</body>
</html>
```

### 12.删除文件夹

语法：fso.DeleteFolder path，Force

用途：FileSystemObject  对象的DeleteFolder 方法可以删除path 指定的文件夹，Force 为布尔值，默认为False，不删除只读文件夹，若要采用默认值，可以省略不写，若要删除只读文件夹，Force 的值要设置为True，而且参数path 必须使用实际路径,如果文件夹已经存在就会报错

范例：fso.DeleteFolder (server.Mappath("\web"))		删除非只读文件夹web 

```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
        fso.DeleteFolder(server.Mappath("\web"))
        fso.DeleteFolder(server.Mappath("\web1")，true)
        fso.DeleteFolder server.Mappath("\web1")，true
        set fso=nothing			'垃圾回收，节约内存'
%>
   
</body>
</html>
```

### 13.复制文件夹

语法：fso.CopyFolder source，Destination

用途：FileSystemObject  对象的DeleteFolder 方法可以将Source 指定的文件夹复制到Destination 里面，而且参数source Destination必须使用实际路径,如果文件夹已经存在就会报错

范例：fso.CopyFolder (server.Mappath("\web"),server.Mappath("\move"))

```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
    fso.CopyFolder (server.Mappath("\web"),server.Mappath("\move"))
    set fso=nothing			'垃圾回收，节约内存'
%>
   
</body>
</html>
```

### 14.文件的建立，移动，重命名，删除与复制

1.建立新文件

语法：fso.createTextFile(Filename，overwrite，unicode)

用途：FileSystemObject  对象的createTextFile方法可以建立文字文件，并返回一个TextStream 对象实例：Filename 为文件的名称（必须使用实际路径），overwrite 为布尔值，若为true，表示如存在	者同名文件，便将其覆盖，否则不覆盖，unicon 为布尔值，若为true，表示为Unicon 文本文件，否则为ASCII 文本文件，两者默认都为false，若要采用默认值，可以省略不写

范例：fso.createTextFile(server.Mappath("\web\index.asp"))

```asp
<html lang="en">
<head>
</head>
<body >
<%
	dim fso
    Set fso=Server.CreateObject("Scripting.FileSystemObject")
    fso.createTextFile(server.Mappath("\web\index.asp"))
    fso.createTextFile server.Mappath("\web\index.asp")
    set fso=nothing			'垃圾回收，节约内存'
%>
   
</body>
</html>
```

### 15.移动，重命名文件

2.移动，重命名文件

语法：fso.MoveFile source Destination

用途：FileSystemObject  对象的MoveFile 方法可以将Source 指定的文件夹移动到Destination 里面，而且参数source Destination必须使用实际路径,如果文件已经存在就会报错

范例：fso.MoveFile (server.Mappath("\web\index.asp"),server.Mappath("\move\index1.asp"))

```asp
<html lang="en">
<head>
</head>
<body>
<%	
	dim fso
	Set fso=Server.CreateObject("Scripting.FileSystemObject")       			   fso.MoveFile(server.Mappath("\web\index.asp"),server.Mappath("\move\index1.asp"))        '移动index.asp 文件至move 里面，并改名为index1.asp（重命名）'        
fso.MoveFile(server.Mappath("\web\index.asp"),server.Mappath("\web\index1.asp"))	'重命名'                   
    set fso=nothing			'垃圾回收，节约内存'
%>  
</body>
</html>
```

### 16.删除文件

语法：fso.DeleteFile path，Force

用途：FileSystemObject  对象的DeleteFile 方法可以删除path 指定的文件，Force 为布尔值，默认为False，不删除只读文件，若要采用默认值，可以省略不写，若要删除只读文件，Force 的值要设置为True，而且参数path 必须使用实际路径,如果文件已经存在就会报错

范例：fso.DeleteFile (server.Mappath("\web\index.asp"))		删除非只读文件web 

```asp
<html lang="en">
<head>
</head>
<body >
<%	
        dim fso    
        Set fso=Server.CreateObject("Scripting.FileSystemObject")         				fso.DeleteFile(server.Mappath("\web\index.asp"))		
        fso.DeleteFile(server.Mappath("\web1\index.asp")，true)    
        fso.DeleteFile server.Mappath("\web1\index.asp")，true         
        set fso=nothing			'垃圾回收，节约内存'
%>  
</body>
</html>
```

### 17.复制文件夹

语法：fso.CopyFile source，Destination

用途：FileSystemObject  对象的CopyFile 方法可以将Source 指定的文件复制到Destination 里面，而且参数source Destination必须使用实际路径,如果文件已经存在就会报错

范例：fso.CopyFile(server.Mappath("\web\index.asp"),server.Mappath("\move\index.asp"))

```asp
<html lang="en">
<head>
</head>
<body >
<%	
        dim fso    
        Set fso=Server.CreateObject("Scripting.FileSystemObject") 
		fso.CopyFile(server.Mappath("\web\index.asp"),server.Mappath("\move\index.asp"))
        set fso=nothing			'垃圾回收，节约内存'
%>  
</body>
</html>
```



















