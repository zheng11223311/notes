### 1.source map 错误追踪

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
}
```

