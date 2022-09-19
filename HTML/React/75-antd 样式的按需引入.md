**暴露webpack 命令，修改webpack 的配置**

```
npm eject
```

多出config 和scripts 文件夹

**不暴露webpack，并修改webpack**

引入react-app-rewired并修改package.json 里的配置文件，还需要安装customize-cra

```
npm install react-app-rewired customize-cra
```

react-app-rewired 保证webpack 被修改后start 等命令还能使用

修改package.json 文件

```json
 "scripts": {
    "start": "react-app-rewired start",
    "build": "react-app-rewired build",
    "test": "react-app-rewired test",
    "eject": "react-scripts eject"
  },
```

然后在项目里根目录创建一个config-overrides.js，用于修改默认配置，不能创建是应为后面多了一个空格

```js
module.export=function override(config，env){
	return config	
}
```

按需引入需要使用babel-plugin-import

**安装：**

```
npm install babel-plugin-import
```

修改config-overrides.js 

```js
//配置具体的修改规则
const {override,fixBabelImports}=require('customize-cra')

//module.export=function override(config，env){
//	return config	
//}
module.exports=override(
	fixBabelImports('import',{      //按需引入import
        libraryName:'antd',     //需要按需引入的库
        libraryDirectory:'es',  //使用es 模块化规范
        style:'css',        //按需引入是css 文件
    })
)
```

