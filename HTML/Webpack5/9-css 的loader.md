### 1.加载css

为了在`javascript`模块中`import`一个`css `文件,你需要安装`style-loader` 和`css-loader`,并在`module `配置中添加这些`loader`:

```
npm i style-loader css-loader --save-dev
```

修改配置文件:

配置文件发生变化时,需要重新启动`webpack`

```js
module:{
    rules:[
        {
            test:/\.css$/i,							//匹配文件
            use:['style-loader','css-loader'],		//使用对应的加载器,加载顺序,从右到左加载,没有加载器,无法使用css 文件,先加载css 文件,在style 使用css 文件内容(加载到head 标签中)
        }
    ]
}
```

`style.css`

```css
.i{
	color:gold
}
```

要打包的`js`文件

```js
import './style.css'
div.classList.add('i')			//css-loader 将css 文件导入,并在div 上添加i 类,但是需要使用style-loader 将样式放置到页面上,否者div 只有i 类,而没有类的样式color
```

### 2.加载less

```
npm i less-loader less  --save-dev
```

修改配置文件:

```js
module:{
    rules:[
        {
            test:/\.(css|less)$/i,							//匹配文件
            use:['style-loader','css-loader','less-loader'],		//使用对应的加载器,加载顺序,从右到左加载,没有加载器,无法使用css 文件,先使用less 加载器
        }
    ]
}
```

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
    module:{
        rules:[
            {
                test:/\.png$/,
                type:"asset/resource"		//加载资源类型
        	},
             {
            test:/\.(css|less)$/i,							//匹配文件
            use:['style-loader','css-loader','less-loader'],		//使用对应的加载器,加载顺序,从右到左加载,没有加载器,无法使用css 文件,先使用less 加载器
        }
        ]
	},
}
```

