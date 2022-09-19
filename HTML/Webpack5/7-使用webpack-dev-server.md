### 1.使用webpack-dev-server

`webpack-dev-server`为你提供了一个基本的`web server`,并且具有`live reloading(实时重新加载)功能`,先安装:

```
npm i webpack-dev-server --save-dev
```

修改配置文件,告知`dev server`,从什么位置查找文件:

```js
module.exports={
	devServer:{
		static:'./dist',
        open:true//自动打开浏览器
	}
}
//文件夹下没有dist文件夹，npx webpack-dev-server运行时会提示error，打不到index.html
```

以上配置信息告知`webpack-dev-server`,将`dist` 目录下的文件作为`web` 服务的根目录

`webpack.config.js` 配置文件

```js
const path=require('path')
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
	entry:'./src/index.js',		//入口文件,./src/index.js 为项目下的文件
	output:{		//设置出口文件
		filename:'bundle.js',		//指定输出文件名 
		path:path.resolve(__dirname,'./dist'),			//指定输出路径,为绝对路径
        clean:true,					//清除上一次打包的内容
	},
	//mode:'none',   //暂时不指定模式
    mode:"developement",  // 开发模式	
	plugins:{		//插件
		//new HtmlWebpackPlugin(),		//自动生成index.html 并引入打包后的js 文件
        new HtmlWebpackPlugin({			//根据自己的模板生成index.html 文件
        	template:'./index.html',	//根据当前目录下的index.html 为模板
        	filename:'app.html',		//输出的文件名
        	inject:'body',				//在body 标签内引入打包后的js 文件
    }),
	},
    devtool:"inline-source-map",        //精准定位错误位置,定位到没有进行打包之前的源文件的错误位置
    devServer:{							//浏览器实时刷新功能
		static:'./dist'					//指定web 根目录位置
	},
}
```

**运行**

```
webpack-dev-server  	/开启热更新
或
webpack-dev-server --open        //开启热更新,并打开浏览器
```

进入`localhost:8080`

`webpack-dev-server` 并没有实时的将文件打包到`dist` 中,而是存储到内存中,如果将`dist`文件夹删除,浏览器依然能实时更新