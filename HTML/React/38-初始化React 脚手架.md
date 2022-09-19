**React 应用(基于React 脚手架)**

**1.使用create-react-app 创建react 应用**

**1.1.react 脚手架**

​	1.xxx 脚手架:用来帮助程序员快速创建一个基于xxx 库的模板项目

​			1.包含了所有需要的配置(语法检查,jsx 编译,derServer...)

​			2.下载好了所有相关的依赖

​			3.可以直接运行一个简单的效果

​	2.react 提供了一个用于创建react 项目的脚手架库:create-react-app

​	3.项目的整体技术架构为:react+webpack+es6+eslint

​	4.使用脚手架开发项目的特点:模块化,组件化,工程化

**2.创建项目并启动**

**第一步:**

全局安装:

```
npm install -g create-react-app
```

**第二步:**

切换到想创建项目的目录,使用命令:

```
create-react-app hello-react
```

**第三步:**

进入项目文件夹:

```
cd hello-react
```

**第四步:**

启动项目:

```
npm start
```

**yarn 和React 都是facebook 的产品,建议使用yarn**

**3.react 脚手架项目结构**

public--------静态资源文件夹

​					favicon.ico----------网站页签图标

​					index.html----------主页面

​					logo192.png--------logo 图

​					logo512.png--------logo 图

​					manifest.json------应用加壳的配置文件

​					robots.txt-----------爬虫协议文件

src------------源码文件夹

​					App.css-----------------App 组件的样式

​					App.js-------------------App 组件

​					App.test.js------------用于给App 做测试

​					index.css--------------样式

​					index.js----------------入口文件

​					logo.svg---------------logo 图

​					reportWebVitals.js----------------页面性能分析文件(需要web-vitals 库的支持)

​					setupTests----------用于做组件单元测试的文件(需要jet-dom 库的支持)



