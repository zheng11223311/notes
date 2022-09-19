**事件处理**

1.通过onXxx 属性指定事件处理函数(注意大小写)

​	a.React 使用的是自定义(合成)事件,而不是使用原生DOM 事件

​	------为了更好的兼容性

​	b.React 中事件是通过事件委托方式处理的(委托给组件最外层的元素)------利用事件冒泡事件,更加高效

2.通过event.target 得到发生事件的DOM 元素对象

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






    <!-- 加载 React。-->
    <!-- 注意: 部署时，将 "development.js" 替换为 "production.min.js"。-->
    <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
    <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
    <!-- 在https://www.npmjs.com/package/prop-types 导入prop-types 文件 -->
    <script src="https://unpkg.com/prop-types@15.6/prop-types.js"></script>
    <script type="text/babel">

        console.log(PropTypes);
        // 1.创建组件
        class Demo extends React.Component {
           
            myRef=React.createRef()
           
            showData = (event) => {
               alert(event.target.value)
            }
           
            render() {
                return (
                    <div>
                        <input onClick={this.showData} ref={this.myRef}
                            type="text" placeholder="点我提示左侧数据" />&nbsp;

                        <button ref="button1" onClick={this.showData}>点我提示左侧数据</button>&nbsp;
                        {/* 可以不用使用refs 来操作这个input ,不要滥用ref */}
                        <input onBlur={this.showData}
                            type="text" placeholder="失去焦点提示数据" />&nbsp;
                    </div>
                )
            }
        }


        ReactDOM.render(<Demo />, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

