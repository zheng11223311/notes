### 1.加载images 图像

假如,现在我们正在下载`css`,但是像`background`和`icon`这样的图像,要如何处理呢?在`webpack 5`中,可以使用内置的`asset Modules` 我们可以轻松的将这些内容混入到我们的系统中,这个我们在"资源模块"一节中已经介绍过了,这里再补充一个知识点,再`css`文件里也可以直接引用文件,修改`style.css`和入口`index.js`:

```css
.div{
	background:url(./asset/1.svg);
}
```

```js
import 'style.css'

div.classList.add('div')
```

修改配置文件的`mode` 为`development`

```js
module:{
	rules:[
		 {
               test:/\.svg$/,
               type:"asset/resource"		//加载资源类型
        },
	]
},
mode:'development'
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
        //在优化的配置里面做配置
    optimization:{		//优化
        minimizer:{
              new cssMinimizerWebpackPlugin(),			//实例化压缩插件
        }
    },
	//mode:"production",    	//修改模式为生产模式   
}
```

### 