### 1.TypeScript

在前端生态里,TS 扮演着越来越重要的角色

我们直入正题,讲下如何在webpack 工程化环境中集成TS

首先,当然是安装我们的ts 和对应的loader

```
npm install --save-dev typescript ts-loader
```

接下来我们需要在项目根目录下添加一个ts 的配置文件--------tsconfig.json ,我们可以用ts 自带的工具来自动化生成它

```
npx tsc -init
```

我们发现生成了一个tsconfig.json ,里面注释掉了绝大多数配置

现在,根据我们想要的下效果来打开对应的配置

`tsconfig.json`

```json
{
    "compilerOptions":{
        "outDir":"./dist",
        "noImplicitAny":true,
        "sourceMap":true,
        "module":"commonjs",
        rootDir:'./src',
        outDir:'./dist',
        "target":"es5",
        "jsx":"react",
        "allowJs":true,
        "moduleResolution":"node"
    }
}
```

好了,接下来新增一个src/index.ts,内置一个内容

然后我们别忘了更改我们的entry 及配置对应的loader

当然,还有resolve.extensions,将 .ts 放在 .js 之前,这样他会先找ts

注意,如果我们使用了sourceMap,一定记得和上面的ts 配置一样,设置sourcemap 为 true

也别忘记在我们的webpack.config.js 里,添加sourcemap ,就像我们之前的课程里讲的那样 

`webpack.config.js`

```js
const path=require('path')
const HtmlWebpackPlugin=require('html-webpack-plugin')

module.exports={
    entry:'./src/app.ts',		//入口文件
    mode:"developement",  // 开发模式	
    devtool:'inline-source-map',
	module:{
        rules:[
            {
                test:/\.ts$/,
                use:'ts-loader',
                exclude:/node_modules/,
            }
        ]
    },
    //resolve:['.ts','.js'],	//从左到右
    resolve:{
        extensions:['.ts','.js'],
    },
    output:{
        filename:'bundle.js',
        path:path.resolve(__dirname,'./dist'),
    },
    plugins:{		//插件
		new HtmlWebpackPlugin(),		//自动生成index.html 并引入打包后的js 文件
	},
}
```

`src/app.ts`

```typescript
import _ from lodash		//需要在下面地址中找到npm 下载ts 的lodash ,npm i @types/lodash --save-dev
const age:number=18
console.log(age)
console.log(_.join([]))
```

[TypeScript: Search for typed packages (typescriptlang.org)](https://www.typescriptlang.org/dt/search?search=lodash)

