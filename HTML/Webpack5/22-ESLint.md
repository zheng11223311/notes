### 1.ESLint

eslint 是用来扫描我们所写的代码是否符合规范的工具,往往我们的项目是多人协作开发的,我么期望统一的代码规范,这时候可以让eslint 来对我们进行约束,严格意义上来说,eslint 配置跟webpack 无关,但是在工程化开发环境中,它往往是不可或缺的

```
yarn add eslint -D
```

配置eslint.只需要在根目录下添加一个.eslintrc 文件(或者 .eslintrc.json, .js等),当然我们可以使用eslint 工具来自动生成它:

```
npx eslint --init
```

我们可以看到控制台里的展示:

```
npx eslint --init

How would you like to use ESLint?		选择style,检测语法,并规范代码
...
```

并生成了一个配置文件(.eslintrc.json),这样我们就完成了eslint 的基本规则配置,eslint 配置文件里的配置项含义如下:

1. env 指定脚本的运行环境,每种环境都有一组特定的预定义全局变量,此处使用的browser 预定义了浏览器环境中的全局变量,es6 启用除了modules 以外的所有ECMAScript 6 特性(该选项会自动设置ecmaVersion 解析器选项为 6)
2. globals 脚本在执行期间访问额外的全局变量,也就是env 中未预定义,但我们又需要使用的全局变量
3. extends 检测中使用的预定义的规则集合
4. rules 启用的规则极其各自的错误级别,会合并extends 中同名的规则,定义冲突时优先级更高
5. parserOptions ESLint 允许你指定你想要的支持的javascipt 语言选项,ecmaVersion 是个对象,表示你想使用的额外的语言特性,这里jsx 代表启用JSX ,ecmaVersion 用来指定支持的ECMAScript 版本,默认为5,即仅支持es5 ,你可以使用6,76,8,9或10 来指定你想要使用的ECMAScript 版本,你也可以使用年份命名的版本号指定为2015 (同6),2016(同7),2017(同8),2018(同9),或2019(同10),上面的env 中启用了es6,自动设置了ecmaVersion 解析器选项为6,plugins 是一个npm 包,通常输出eslint 内部未定义的规则实现,rules 和extends 中定义的规则,并不都在eslint 内部中有实现,比如 extends 中的plugin:react/recommended,其中定义了规则开关和等级,但是这些规则如何生效的逻辑是在其对应的插件'react'中实现的

`.eslintrc.json`

```json
{
	"env":{		//脚本的运行环境
        "browser":true,
        "es2021":true,		//支持es2021
    },
    "extends":[
        "airbnb-base"		//配置airbnb-base 扩展,检擦代码的格式
    ],
    "parserOptions":{
        "ecmaVersion":12,
        "sourceType":"module"
    },
    "rules":{
        "no-console":0,		//关闭console.log 时的警告
    },
    "globals":{
        
    }
}
```

执行检查命令

```
npx eslint ./src			// src 为要检查的目录
```

vscode 安装插件eslint 也有同样检查效果

### 2.结合webpack 使用

我们期望eslint 能够实时提示报错而不必等待执行命令,这个功能可以通过给自己的IDE (代码编辑器)安装对应的eslint 插件来实现,然而,不是每个IDE 都有插件,如果不想使用插件,又想实时提示报错,那么我们可以结合webpack 的打包编译功能来实现

```js
//...
moudle:{
	rules:[
        {
           test:/\.(js|jsx)$/,
           exclude:/node_modules/,
           use:['babel-loader','eslint-loader']	//eslint-loader 已经弃用,可以安装eslint-webpack-plugin 代替
        }
    ]
},
//...
```

因为我们使用了derServer,因此需要在derServer 下添加一个对应的配置参数:

```js
module.exports={
    //...
    devServer:{
        liveReload:false,	//默认为true,即开启热更新功能,检查出错误时,浏览器页面上不会报错
    }
}
```

现在我们就可以实时的看到代码的不规范报错了

