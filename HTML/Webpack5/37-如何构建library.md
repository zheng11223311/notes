### 1.如何构建library

构建自己的模块供别人使用

**src/index.js**

```js
export const add=(x,y)=> x+y		//定义过但是没有使用,打包后会被移除掉
```

**webpack.config.js**

```js
const path=require('path')
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
    mode:'production',
    entry:'./src/index.js',
    experiments:{	//试验性的功能,还不成熟, type 为module时需要配置
        outputModule:true,
    }
    output:{
        path:path.resolve(__dirname,'dist'),
        filename:'mylib.js',
        //library:'mylib',	//包的名字,打包后没有使用的内容不会被移除
        library:{
            //name:'mylib',
            //type:'window',		//以什么方式引入,commonjs 引入,window 为script 引入,module 为es5 引入,需要配置experiments,且不需要配置name ,umd 支持除了moudle 的类型
            name:'mylib',
            type:'umd',
        }
            globalObject:'globalThis',		//全局的this,umd 时,commonjs的配置需要
    }
   
}
```

然而它只能被script 标签引用而发挥作用,它不能运行在CommonJS,AMD ,NodeJS 等环境中.

作为一个库作者,我们希望他能够兼容不同的环境,也就是说,用户应该能通过以下方式使用打包后的库:

- CommonJS 导入

  ```js
  const webpackNumbers=require('webpack-numbers')
  //...
  webpackMumbers.wordToNum('Two')
  ```

- AMD 导入

  ```js
  require(['webpackNumbers'],function(webpackNames){
      //...
      webpackMumbers.wordToNum('Two')
  })
  ```

- script 标签导入

  ```html
  <script src="http://example.com/webpapck-numbers"></script>
  <script>
   webpackMumbers.wordToNum('Two')
  </script>
  ```

### 2.创建一个library

假设我们正在编写一个名为`webpack-numbers`的小的library ,可以将数字1到5 转换为文本表示,反之亦然,例如将2转换为two

**webpack.config.js**

```js
const path=require('path')
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
    mode:'production',
    entry:'./src/index.js',
    experiments:{	//试验性的功能,还不成熟, type 为module时需要配置
        outputModule:true,
    }
    output:{
        path:path.resolve(__dirname,'dist'),
        filename:'mylib.js',
        //library:'mylib',	//包的名字,打包后没有使用的内容不会被移除
        library:{
            //name:'mylib',
            //type:'window',		//以什么方式引入,commonjs 引入,window 为script 引入,module 为es5 引入,需要配置experiments,且不需要配置name ,umd 支持除了moudle 的类型
            name:'mylib',
            type:'umd',
        }
            globalObject:'globalThis',		//全局的this,umd 时,commonjs的配置需要
    },
    externals:{
        lodash:{	//引入包的名字
            commonjs:'lodash',		//兼容commonjs
            commonjs2:'lodash',		//兼容commonjs2
            amd:'lodash',
            root:'_',	//全局时,放在_
        }
    }
   
}
```

### 3发布到npm-package

使用命令,查看npm 官方地址

```
npm config get registry
```

显示 https://registry.npmjs.ory/	为官方地址,才可以上传包,淘宝源下无法上传

登入npm 用户

```
npm adduser    
```

输入在npm 上注册的用户

执行发布,上传当前路径下所有的文件

```
npm public
```

从npm 上安装自己上传的包

```
npm i webpack-munber
```

