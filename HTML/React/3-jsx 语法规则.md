**JSX**

1.全称:JavaScript XML

2.react 定义的一种类似于XML 的JS 扩展语法:JS+XML

3.本质是React.createElement(component,props,.....children) 方法的语法糖

4.作用:用来简化创建虚拟DOM

​	a.写法:var ele=<h1>hello</h1>

​	b.注意:1.他不是字符串,也不是HTML/XML 标签

​				2.他最终产生的就是一个js 对象

5.标签名任意:HTML 标签或其他标签

**示例:**

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .title {
            background-color: crimson;
            width: 200px;
        }
    </style>
</head>

<body>

    <div id="like_button_container"></div>
    <div id="demo"></div>





    <!-- 加载 React。-->
    <!-- 注意: 部署时，将 "development.js" 替换为 "production.min.js"。-->
    <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
    <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>


    <script type="text/babel">
        //存储id
        const myid = 'aaaa'
        // 存储内容
        const mydata = 'ccccc'
        // 使用jsx 的规则
        const VDOM = (
            //使用jsx 表达式要用{},不是语句
            //使用class 也可以渲染,但是会报错,
            //className 是为了避开原生js 的class 冲突
            //jsx 只能有一个根标签
            // 标签必须闭合
            //如果任意自定义的标签是小写的,渲染成html 相应同名的标签,如果不是html 标签,会渲染出来,但是会报错
            //如果是大写的渲染成组件,如果不是组件会报错
            <div>
                <h1 id={myid.toLocaleUpperCase()} className="title">
                    <span style={{ color: "gold", fontSize: '40px' }}>{mydata.toLocaleUpperCase()}</span>
                </h1>
                <h1 id={myid} className="title">
                    <span style={{ color: "gold", fontSize: '40px' }}>{mydata.toLocaleUpperCase()}</span>
                </h1>
                <input type="text"></input>
                <input type="text" />
                <good>123</good>
            </div>
        )
        ReactDOM.render(VDOM, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

