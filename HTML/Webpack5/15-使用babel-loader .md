### 1.使用babel-loader 

作用:将ES6 语法解析为浏览器都认识的ES5 语法

安装:

```
npm i babel-loader @babel/core @babel/preset-env --save-dev
```

- `babel-loader`:再`webpack`里应用`babel`解析`ES6 `的桥梁
- `@babel/core`:`babel`核心模块
- `@babel/preset-env`:`babel`预设,一组`babel`插件的集合,每一个`babel`都需要一个插件,这里提供所有插件的集合

再`webpack`配置中,需要将`babel-loader`添加到`module`列表中,就像下面这样:

```js
module:{
    rules:[
        {
            test:/\.js$/,
            exclude:'node_modules',		//排除node_modules 
            use:{
                loader:'babel-loader',		
                options:{
                    presets:['@babel/preset-env']
                }
            }
        }
    ]
}
```

### 2.regeneratorRuntime 插件

`regeneratorRuntime`是`webpack`打包生成的全局辅助函数,由`babel`生成,用于兼容`async/await`的语法

`regeneratorRuntime is not defined`这个错误显然是未能正确配置`babel`

正确的做法需要添加一下的插件和配置:

```js
//这个包中包含了regeneratorRuntome,运行时需要
npm install @babel/runtime --save

//这个插件会在需要regeneratorRuntime 的地方自动require 导包,编译时需要
npm i @babel/plugin-transform-runtime --save

//更多参考这里
https://babeljs.io/docs/en/babel-plugin-transform-runtime
```

接着改一下`babel`的配置:

```js
module:{
    rules:[
        {
            test:/\.js$/,
            exclude:'node_modules',		//排除node_modules 
            use:{
                loader:'babel-loader',		
                options:{
                    presets:['@babel/preset-env'],
                    plugins:[
                        [
                            "@babel/plugin-transform-runtime"
                        ]
                    ]
                }
            }
        }
    ]
}
```

