### 1.Tree Shaking

移除js 代码中未引用的代码

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
}
```

`math.js`

```js
export const add=(x,y)={
    return x+y
}
export const  minus=(x,y)=>{
    return x - y
}
```

`app.js`

```js
import {add,minus} from './math.js'
import 'lodash'
console.log(add(1+2))
```

执行打包

```
npx webpack
```

执行热更新

```
npx webpack server
```

浏览器:http://localhost:8080 查看

