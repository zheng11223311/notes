### Windows 下安装NodeJS 	

下载地址:[Node.js 中文网 (nodejs.cn)](http://nodejs.cn/)

无脑下一步安装即可

cmd 中输入node -v 查看是否存在版本号

**示例:**

`1.js`

```js
var http=require('http');

var server=http.createServer(function(req,res){
	res.end('运行成功')
})

server.listen(8090);
```

**命令行输入**

开启服务器

```
node 1.js
或
node ./1.js
```

**浏览器输入**

```
localhost:8090
```

