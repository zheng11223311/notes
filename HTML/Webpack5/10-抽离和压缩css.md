### 1.抽离和压缩css

在多数情况下,我们也可以进行压缩`css`,以便在生产环境中节省加载时间,同时还可以将`css`文件抽离成一个单独的文件.实现这个功能,需要`mini-css-extract-plugins`这个插件来帮忙,安装插件:

```
npm i mini-css-extract-plugins --save-dev       //抽离插件
```

本插件会将`css`提取到单独的文件中,为每个包含`css` 的`js`文件创建一个`css`文件,并且支持`css`和`sourceMaps`的按需加载

本插件基于`webpack v5`的新特性构建,并且需要`webpack 5`才能正常工作

之后将`loader`与`plugin`添加到你的`webpack`配置文件中:

```js
const MiniCssExtractPlugin=require("mini-css-extract-plugin")

plugins:{		//插件

    new MiniCssExtractPlugin(),			//实例化抽离插件
	},
        
module:{
    rules:[
        {
            test:/\.css$/i,
        	use:[MiniCssExtractPlugin.loader,'css-loader']
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
    		//new MiniCssExtractPlugin(),			//实例化抽离插件,将多个css 文件合并成一个文件,生成main.css  
        new MiniCssExtractPlugin({
    		filename:'style/[contenthash].css',		//输出的文件名			
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
                est:/\.(css|less)$/i,		
                use:[MiniCssExtractPlugin.loader,'css-loader','less-loader']	//加载抽离插件,MiniCssExtractPlugin.loader 代替style-loader,style-loader 是将css 加载到html 中 ,而插件是将css 单独抽离出来,打包到main.css 文件中,HtmlWebpackPlugin 自动将main.css 引入到生成的html 中
        	}
        ]
	},
}
```

### 2.压缩插件

```
npm i css-minimizer-webpack-plugin -D
```

**使用压缩插件**

```js
const cssMinimizerWebpackPlugin=require("css-minimizer-webpack-plugin")
//在优化的配置里面做配置
optimization:{		//优化
	minimizer:{
          new cssMinimizerWebpackPlugin(),			//实例化压缩插件
    }
},
mode:"production",    	//修改模式为生产模式    

```

`webpack.config.js` 配置文件

```js
const path=require('path')
const HtmlWebpackPlugin=require('html-webpack-plugin')
const cssMinimizerWebpackPlugin=require("css-minimizer-webpack-plugin")

module.exports={
	entry:'./src/index.js',		//入口文件,./src/index.js 为项目下的文件
	output:{		//设置出口文件
		filename:'bundle.js',		//指定输出文件名 
		path:path.resolve(__dirname,'./dist'),			//指定输出路径,为绝对路径
        clean:true,					//清除上一次打包的内容
	},
	//mode:'none',   //暂时不指定模式
    //mode:"developement",  // 开发模式	
	plugins:{		//插件
		//new HtmlWebpackPlugin(),		//自动生成index.html 并引入打包后的js 文件
        new HtmlWebpackPlugin({			//根据自己的模板生成index.html 文件
        	template:'./index.html',	//根据当前目录下的index.html 为模板
        	filename:'app.html',		//输出的文件名
        	inject:'body',				//在body 标签内引入打包后的js 文件
    	}),
    		//new MiniCssExtractPlugin(),			//实例化抽离插件,将多个css 文件合并成一个文件,生成main.css  
        new MiniCssExtractPlugin({
    		filename:'style/[contenthash].css',		//输出的文件名			
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
                est:/\.(css|less)$/i,		
                use:[MiniCssExtractPlugin.loader,'css-loader','less-loader']	//加载抽离插件,MiniCssExtractPlugin.loader 代替style-loader,style-loader 是将css 加载到html 中 ,而插件是将css 单独抽离出来,打包到main.css 文件中,HtmlWebpackPlugin 自动将main.css 引入到生成的html 中
        	}
        ]
	},
        //在优化的配置里面做配置
    optimization:{		//优化
        minimizer:{
              new cssMinimizerWebpackPlugin(),			//实例化压缩插件
        }
    },
	mode:"production",    	//修改模式为生产模式   
}
```

### 
