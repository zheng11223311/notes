**1.Typescript 介绍**

1.Typescript 是由微软开发的一款开源的编程语言

2.Typescript 是JavaScript 的超集，遵循最新的ES6，ES5 规范，Typescript 扩展了JavaScript 的语法。

3.Typescript 更像后端java，C# 这样面向对象语言，可以让js 开发大型企业项目

4.谷歌也在大力支持Typescript 的推广，谷歌的angular2.x+ 就是基于Typescript 语法

5.最新的Vue，React 也可以集成Typescript

6.Nodejs 框架nestjs，nmidway中用的就是Typescript 语法

**2.Typescript  安装 编译**

在使用npm 命令之前电脑·必须安装nodejs

**安装**

```
npm install -g typescript
或者
cnpm install -g typescript
或者
yard  global add typescript
```

**运行（编译成js 文件）**

```
tsc helloworld.ts
```

**查看Tyscript 版本**

```
tsc -V
```

**注意：**如果电脑上面没有安装过cnpm，请先安装cnpm

```
npm install -g --registry=https://registry.npm.taobao.org
```

**注意：**如果电脑上面没有安装过yard，请先安装yard

```
npm install -g yard
或者
cnpm install -g yard
```

**示例**

```ts
consloe.log('你好ts')
//ts 编译成es5  命令tsc index.ts
var str:string='你好ts'
let num:any="你好ts"
```

**3Typescript 开发工具vscode 自动编译.ts 文件**

1. tsc --init 生成配置文件，tsconfig.json 文件

2. 修改tsconfig.json  文件

   ```
   将
   // "outDir": "./",  
   改为
   "outDir": "./js",       
   ```

3.老版本vscode 点击：终端->运行任务->tsc：监视-tsconfig.json 然后就可以自动生成代码了

也可以执行tsc --watch index.ts 或tsc -w进行监视

tsc --watch index.ts 不会执行配置文件，在当前目录下生成js 文件

```
tsc --watch index.ts
```

tsc -w  会执行配置的文件，在js 下生成js 文件（推荐）

```
tsc -w  
```

