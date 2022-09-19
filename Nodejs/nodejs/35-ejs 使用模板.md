**一.简介**

相比于jade 模板引擎,ejs 对原HTML 语言就未做出结构上的改变,只不过在其交互数据方面做出了些许的修改,相比于jade 更加简单易用,因此其学习成本是很低的,你也可以参考ejs 官网:

https://ejs.bootcss.com/

**二,ejs 基本使用**

这里我们使用如下配置文件

我们可以通过下面的方式实现基本的ejs 操作

app.js 文件

```js
const express=require('express')
const ejs=require('ejs')
const fs=require('fs')

var appexpress()

//引用ejs
//将模板引擎与express 应用相关联
app.set('views','public')  //设置视图对应的目录
app.set('view engine','ejs') 	//设置默认的模板引擎
app.engine('ejs',ejs.__express)		//定义模板引擎

app.get('/',function(req,res){
    //使用index 模板,将tile 传入模板,替换title
    res.render('index.ejs',{title:'<h4>express</h4>'})
})

app.listen(8080)
```

index.ejs 文件

```html
<!DOCTYPE html>
<html lang="en"> 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
    <% for(var i=0;i<10;i++){%>
    <% =i %>
        <% } %>
           <!-- 获取变量-->
            <div class="datas">
            <p>获取变量:</p>
                <%-title %>
                <%=title %>
            </div>
</body>
</html>
```

这时我们会得到如下图的结果:

由此可以知道:

```
<% xxx %>,里面写的是js 语法
<%= xxx %>,里面写的是服务器发送给ejs 模板转义后的变量,输出为原HTML(不将html 文字解析,以原文输出,类似innerText)
<%- xxx %>,里面也是服务器端发送给ejs 模板后的变量,不过他会把HTML 输出来(将html 文字解析,以HTML 输出,类似innerHTML)
```

同理res.render()函数也是支持回调的

```js
res.render('user',function(err,html){
	console.log(html)
})
```

这样我们即可将看到的html 的内容,例外值得说明的是ejs 模块也有ejs.render() 和ejs.renderFile() 方法,他在这里与res.render()作用类似

