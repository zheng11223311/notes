### 1.Shimming 预置全局变量

让们开始第一个shimming 全局变量的用例,还记得我们之前用过的`lodash `吗?出于演示目的,例如把这个应用程序中的模块依赖,改为一个全局变量依赖,要实现这些,我们需要使用`ProvidePlugin`插件

使用`ProvidePlugin`后,能够在webpack 编译的每个模块中,通过访问一个变量来获取一个package,如果webpack吗看到模块中用到这个变量,他将在最终bundle 中引入给定的package,让我们先移除`lodash ` 的`import`语句,改为通过插件提供他:

**src/index.js**

```js
console.log(_.join(['hello','webpack']))
```

**webpack.config.js**

```js
const webpack=require('webpack')

module.exports={
    mode:'development',
    entry:'./src/index.js',
    plugins:[
        new webpack.ProvidePlugin({
            _:'lodash',		//自动安装引入lodash,提供给需要的模块
        })
    ]
}
```

我们本质上所做的,就是告诉webpack....

> 如果你遇到了至少一处用到 _ 变量的模块实例,那请你将lodash package 引入进来,并将其提供给需要用到它的模块

运行我们构建的脚本,将会看到同样的输出:

```
npx webpack
```

执行

```
node main.js
```

### 2.细粒度shimming

一些遗留模块依赖的`this` 指向的`window` 对象,在接下来的用例中,调整我们的`index.js`:

```js
this.alert('hello webpack')
```

当模块运行在CommonJS 上下文中,这将会变成一个问题,也就是说此时的`this` 指向的是`module.exports`.在这种情况下,你可以通过使用`imports-loader`覆盖`this` 指向:

安装

```
npm install imports-loader -D
```

`webpack.config.js`

```js
const webpack=require('webpack')
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
    mode:'production',
    entry:'./src/index.js',
    
    module:{
        rules[
        	{
        		//当测试到index.js 文件时,使用imports-loader 插件将this 指向window
        		test:require.resolve('./src/index.js'),	//测试的文件
    			use:'imports-loader?wrapper=window',
    		}
        ]
    },
   plugins:[
       new webpack.ProvidePlugin({
           _:'lodash',
       })
       new HtmlWebpackPlugin()
   ]
}
```

### 3.全局Exports

让我们假设,某个library 创建出一个全局变量,它期望consumer(使用者)使用这个变量,为此,我们可以在项目配置中,添加一个小模块来演示说明:

作用:给没有导出语句的模块一个导出方式

安装exports-loader

```
npm install exports-loader -D
```

**src/globals.js**

```js
const file ='example.txt'

const helpers={
    test:function(){
        console.log('test something')
    },
    parse:function(){
        console.log('parse something')
    }
}
```

**webpack.config.js**

```js
const webpack=require('webpack')
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
    mode:'production',
    entry:'./src/index.js',
    
    module:{
        rules[
        	{
        		test:require.resolve('./src/globals.js'),	//测试的文件
    			use:'exports-loader?type=commonjs&exports=file,multiple|helpers.parse|parse',		//导出类型为commonjs,导出的变量是file,multipe 表示可以导出key:value 的形式,value 为 helpers.parse, key 为 parse
     		},
    		{
        		//当测试到index.js 文件时,使用imports-loader 插件将this 指向window
        		test:require.resolve('./src/index.js'),	//测试的文件
    			use:'imports-loader?wrapper=window',
    		},
        ]
    },
   plugins:[
       new webpack.ProvidePlugin({
           _:'lodash',
       })
       new HtmlWebpackPlugin()
   ]
}
```

不使用直接导出global.js 是因为如果global.js 外部文件,我们不知道它是如何导出的

`index.js`

```js
const {file,parse}=require('./global.js')
console.log(file)
parse()
```

打包编译

```
npx webpack
```

启动server

```
npx webpack serve
```

浏览器访问 localhost:8080

### 4.加载Polyfills

目前为止,我们讨论的所有内容都是处理那些遗留的package ,让我们进入到第二个话题:Polyfills.

有很多方法来加载polyfills,例如,想要引入`@babel/polyfill` 我们只需要如下操作:

```
npm install --save @babel/polyfill
```

然后,使用`import`将其导入到我们的主bundle 文件:

```js
import '@babel/polyfill'		//告诉webpack 将代码转换为更低版本浏览器支持的es3 等代码
console.log(Array.from([1,2,3],x=>x + x))		//将所有数字翻倍
```

注意,这种方式优先考虑正确性,而不考虑bundle 体积大小,为了安全可靠,polyfill/shim `必须运行于所有其他代码之前`,而且需要同步加载,或者说,需要在所有polyfill/shim 加载之后,再去加载所有应用程序代码,社区中存在许多误解,即现代浏览器`不需要`polyfill, 或者说polyfill/shim 仅用于添加缺失功能.

实际上,它们通常用于`修复损坏实现(repair broken implementation)`,即使是在最现代的浏览器中,也会出现这种情况,因此,最佳实践仍然是,不加选择的和同步的加载所有polyfill/shim, 尽管这会导致额外的bundle 体积成本

### 5.进一步优化ployfills

不建议使用`import @babel/ployfill`,因为这样做的缺点是会全局引入整个ployfill 包,比如Array.from 会全局引入,不但包的体积大,而且还会污染全局环境

`babel-present-env` package 通过`browserlist`来转译那些你浏览器中不支持的特性,这个preset 使用`useBuiltIns`选项,默认值是`false`,这种方式可以将全局`balbel-ployfill`导入,改进为更细粒度的`import`格式:

```js
import 'core-js/modules/es7.string.pad-start'
import 'core-js/modules/es7.string.pad-end'
import 'core-js/modules/web.timers'
import 'core-js/modules/web.immediate'
import 'core-js/modules/web.dom.iterable'
```

**安装@babel/preset-env 及相关的包**

```
npm i babel-loader @babel/core	@babel/present-env core-js@3 -D
```

**webpack.config.js**

```js
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
    mode:'production',
    entry:'./src/index.js',
    plugins:[
        new HtmlWebpackPlugin()
    ]
    module:{
        rules:[
            {
                test:/\.js$/,
                exclude:/node_modules/,		//排除node_modules 
                use:{
                    loader:'babel-loader',		
                    options:{
                        presets:['@babel/preset-env'],
                        targets:[	//browserlist 中的内容
                            "last 1 version",
                            '> 1%'
                        ],
                        useBuiltIns:'usage',		//依赖core-js@3 
                        corejs:3,	//版本为3
                        ]
                    }
                }
            }
        ]
    }
}
```

配置这些后,主bundle 代码中可以不用导入@babel/polyfill

```js
console.log(Array.from([1,2,3],x=>x + x))		//将所有数字翻倍
```

而且包的体积更小