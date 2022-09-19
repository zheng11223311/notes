**前言**

node.js,一个基于JavaScript 运行环境的服务器语言,它的出现使得JavaScript 有能力去实现服务器操作,在github 上node.js 的start 数已经接近6万,可见其受欢迎程度,而基于node.js 的Express 则把原先的许多操作变得简单灵活,一系列强大特性帮助你创建各种web 应用,和丰富的HTTP 工具,使用EXpress 可以快速的搭建一个完整功能的网站

**express 官网:**

https://www.expressjs.com.cn

Express 的安装方式

Express 的安装可直接使用npm 包管理器上的项目,在安装npm 之前可以先安装淘宝镜像:

```
npm install -g cnpm --registry=https://registry.npm.taobao.org
```

这样我们可以使用cnpm 的来代替npm,这使得下载速度提高很多,其次你需要在你的项目下运行以下指令来初始化npm,期间所有提示按enter 键即可,这回生成package.json 文件,它是用于描述项目文件的

```
cnpm init
```

再输入

```
cnpm install
```

  这下项目目录中又会多出来一个叫node_modules 文件加,里面是node.js 为我们提供的模块,当然现在没有,接下来便是真正的安装expresss 了,执行

```
cnpm install express --save
```

这时我们看到node_modules 文件夹多了许不同版本的应用文件,接下来执行

```
express --version
```

查看express 是否安装成功,如果现实版本号,则安装成功,需要向安装express 脚手架(express 启动器)先才能查看

**Express 脚手架的安装**

安装express 脚手架有两种方式

**1.使用express-generator 安装,全局使用express**

使用命令行进入项目目录,依次执行:

```
npm install express-generator -g
```

可以通过express -h 查看命令行的指令含义

```
express -h
```

```
Usage:express [options][dir]
```

```
Options:
	   --version       	 输出版本
    -e, --ejs            添加对 ejs 模板引擎的支持
        --pug            添加对 pug 模板引擎的支持
        --hbs            添加 handlebars 模板引擎的支持
    -H, --hogan          添加 hogan.js 模板引擎的支持
    -v, --view <engine>  添加对视图引擎(view)<engine> 的支持(dust|ejs|hbs|hjs|jade|pug|twig|vash)(默认是jade 模板引擎)
        --no-view        创建不带视图引擎的项目
    -c, --css <engine>   添加样式表引擎的(engine)支持(less|stylus|compass|sass)( 默认是普通的css文件)
        --git            添加 .gitignore
    -f, --force          强制在非空目录下创建
    -h, --help 			 输出使用方法
```

创建了一个名为app 的Express 应用,并使用ejs 模板引擎

创建中文名无法启动

```
express --view=ejs app
```

进入app,并安装依赖

```
cd app
npm install
```

**在Windows 下,使用一下命令启动Express 应用:**

```
set DEBUG=app:*& npm start
或
node ./bin/www
或
nodemon ./bin/www
或
npm start
或
npm run start
```

**在MacOS 或Linux 下,使用以下命令启动Express 应用**

```
DEBUG=app:* npm start
```

cmd 命令行提示

>   app:server Listening on port 3000 +0ms  端口为3000
>
> 浏览器输入127.0.0.1:3000

这时你也可以看到在app 文件夹下的文件结构:

```
bin:启动目录 里面包含了一个启动文件www 默认监听端口是3000 (直接 node www执行即可)
node_modules:依赖的模块包
public: 存放静态的资源
router:路由操作
views: 存放ejs 模板引擎
app.js:主文件	(执行 node app.js)
package.json:项目描述文件
```

**第一个Express 应用'Hello World'**

在这里,我们先不使用npm 构建脚手架,而是向最开始那样那样直接在主目录中新建一个app.js 文件

在app.js 中输入

```js
const express=reqiure('express');	//引入express 模块
var app=express()		//express() 是express 模块的顶级函数

app.get('/',function(req,res){		//访问根路径时输出hello world
    res.send('<h1 style="color:blue">hello world</h1>');
})
app.listen(8080,()=>{		//设置访问端口号
    console.log('服务器启动成功');
}); 		
```

命令行进入项目文件夹后,键入

```
node app.js
```

即已开启服务器,接下来只需要在浏览器中运行http://localhost:8080/ 就可以访问到服务器得到响应后的数据











