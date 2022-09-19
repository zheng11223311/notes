### 1.自定义Webpack 配置

查看webpack 相关指令

```
webpack --help  		//使用全局的配置信息
npx webpack --help 		//使用本地的配置信息
```

**自定义入口文件和模式**

`entry` 指定入口文件

`mode` 指定模式,`production` 为生产模式

```
webpack --entry ./src/index.js  --mode production 	//使用全局的配置信息
npx webpack --entry ./src/index.js  --mode production		//使用本地的配置信息
```

也可以在项目下新建`webpack.config.js` 配置文件

```js
const path=require('path')

module.exports={
	entry:'./src/index.js',		//入口文件,./src/index.js 为项目下的文件
	output:{		//设置出口文件
		filename:'bundle.js',		//指定输出文件名 
		path:path.resolve(__dirname,'./dist')			//指定输出路径,为绝对路径
	},
	mode:'none'   //暂时不指定模式
}
```

