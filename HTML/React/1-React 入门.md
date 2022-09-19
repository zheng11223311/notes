**第一章:React 入门**

**1.官网:**

> 英文官网:
>
> https://reactjs.org/
>
> 中文官网:
>
> https://react.docschina.org/

**2.介绍描述**

> 用于动态构建用户界面的JavaScript 库(只关注于视图)
>
> 由Facebook 开源

**3.特点**

> 声明式编程
>
> 组件化编程
>
> React Native 编写原生应用
>
> 高效(优秀的Diffing 算法)

**4.React 高效的原因**

> 使用虚拟(virtual)DOM,不总是直接操作页面真实DOM
>
> DOM Diffing 算法,最小化页面重绘

**5.React 的基本使用**

> **5.1相关js 库**
>
> react.js : react 核心库
>
> react-dom.js: 提供操作DOM 的react 扩展库
>
> babel.min.js: 解析JSX 语法代码转为JS 代码的库
>
> **示例:**
>
> ```html
> <!DOCTYPE html>
> <html lang="en">
> 
> <head>
>     <meta charset="UTF-8">
>     <meta name="viewport" content="width=device-width, initial-scale=1.0">
>     <title>Document</title>
> 
> </head>
> 
> <body>
> 	<!--这是一个容器-->
>     <div id="like_button_container"></div>
> 
> 
> 
> 
> 
>     <!-- 加载 React。-->
>     <!-- 注意: 部署时，将 "development.js" 替换为 "production.min.js"。-->
>     <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
>     <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
>     <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
> 
> 
>     <script type="text/babel">
>         //这里不是js 语法而是jsx,要使用 type="text/babel,要使用babel 解析
> 
>         //1.创建虚拟DOM
>         //此处一定不要写引号,因为不是字符串
>         const VDOM = <h1>Hello React</h1>
> 
>         //2.渲染虚拟DOM 到页面
>         //react 没有自带的选择器,要自己选择
>         // const domContainer = document.querySelector('#like_button_container');
>         // ReactDOM.render(e(LikeButton), domContainer);
> 
>         // Download the React DevTools for a better development experience: https://reactjs.org/link/react-devtools
>         // You might need to use a local HTTP server (instead of file://): https://reactjs.org/link/react-devtools-faq
>         // 每个库的有自己的调试工具,提示下载工具
>         ReactDOM.render(VDOM, document.getElementById('like_button_container'))
>     </script>
> </body>
> 
> </html>
> ```
>
> **5.2 创建虚拟DOM 的两种方式**
>
> **使用jsx 创建**
>
> ```html
> <!DOCTYPE html>
> <html lang="en">
> 
> <head>
>     <meta charset="UTF-8">
>     <meta name="viewport" content="width=device-width, initial-scale=1.0">
>     <title>Document</title>
> 
> </head>
> 
> <body>
> 
>     <div id="like_button_container"></div>
> 
> 
> 
> 
> 
>     <!-- 加载 React。-->
>     <!-- 注意: 部署时，将 "development.js" 替换为 "production.min.js"。-->
>     <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
>     <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
>     <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
> 
> 
>     <script type="text/babel">
>         // 使用jsx 创建
>         const VDOM = <h1>Hello React</h1>
>         ReactDOM.render(VDOM, document.getElementById('like_button_container'))
>     </script>
> </body>
> 
> </html>
> ```
>
> 使用原生js 创建
>
> ```html
> <!DOCTYPE html>
> <html lang="en">
> 
> <head>
>     <meta charset="UTF-8">
>     <meta name="viewport" content="width=device-width, initial-scale=1.0">
>     <title>Document</title>
> 
> </head>
> 
> <body>
> 
>     <div id="like_button_container"></div>
> 
> 
> 
>     <!-- 加载 React。-->
>     <!-- 注意: 部署时，将 "development.js" 替换为 "production.min.js"。-->
>     <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
>     <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
> 
> 
>     <script type="text/javascript">
>         // 使用js 创建
>         // const VDOM=React.createElement(标签名,标签属性,标签内容)
>         const VDOM = React.createElement('h1', { id: 'title' }, 'hello react')
>         //js 如果在h1 里面创建span 放hello,不能直接写入<span> 标签,需要再次创建虚拟dom
>         ReactDOM.render(VDOM, document.getElementById('like_button_container'))
>     </script>
> </body>
> 
> </html>
> ```
>
> **原生js 创建嵌套标签**
>
> ```js
> <script type="text/javascript">
>         // 使用js 创建
>         // const VDOM=React.createElement(标签名,标签属性,标签内容)
>         const VDOM = React.createElement('h1', { id: 'title' },React.createElement('span', { id: 'title1' }, 'hello react'))
>         //js 如果在h1 里面创建span 放hello,不能直接写入<span> 标签,需要再次创建虚拟dom
>         ReactDOM.render(VDOM, document.getElementById('like_button_container'))
>     </script>
> ```
>
> **jsx 创建嵌套标签**
>
> ```jsx
>  <script type="text/babel">
>         // 使用jsx 
>         const VDOM = (
>             <h1>
>                 <span>Hello React</span>
>             </h1>
>         )
>         ReactDOM.render(VDOM, document.getElementById('like_button_container'))
>     </script>
> ```
>
> 



】
