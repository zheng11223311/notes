### 1.sideEffects

webpack v4 开始新增了一个 `sideEffects` 特性，通过给 `package.json` 加入 `sideEffects`声明该 包/模块 是否包含 sideEffects(副作用)，从而可以为 tree-shaking 提供更大的优化空间。即完全移除后不会产生副作用

*注：v4 beta 版时叫 `pure module`, 后来改成了 `sideEffects`*

基于我们对 side effect 的常规理解，我们可以认为，只要我们确定当前包里的模块不包含副作用，然后将发布到 npm 里的包标注为 `sideEffects: false` ，我们就能为使用方提供更好的打包体验。原理是 webpack 能将标记为 side-effects-free 的包由 `import {a} from xx` 转换为 `import {a} from 'xx/a'`，从而自动修剪掉不必要的 import，作用同 [babel-plugin-import](https://link.zhihu.com/?target=https%3A//github.com/ant-design/babel-plugin-import)。

`app.js`

```js
import './style.css'
```

`package.json`

```json
{
	//...
    //"sideEffects":true,	 // true 所有代码都有副作用,不能随便删掉,false 时 import './style.css' 会失效,没有导入
    "sideEffects":["*.css"],		// css 文件不删除
}
```

`webpack.config.js`

```js
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={

    entry:"./src/app.js",
    
    plugins:{		//插件
        new HtmlWebpackPlugin({			//根据自己的模板生成index.html 文件
    	}),
	}   
    devtool:'inline-source-map',
    optimization:{	
        usedExports:true,	//没有使用的代码不会被导入	
    }
    
    mode:"developement",  // 开发模式,会有注释,生产换进没有注释
    module:{
        rules:[
            {
                test:/\.css$/,
                use:['style-loader','css-loader'],
            }
        ]
    }
}
```

