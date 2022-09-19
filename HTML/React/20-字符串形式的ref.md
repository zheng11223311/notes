组件的大核心属性3:refs 与事件处理

**1.效果**

需求:自定义组件,功能如下

1.点击按钮,提示第一个输入框的值

2.当第二个输入框失去焦点是,提示这个输入框中的值

**2.理解**

组件内的标签可以定义ref 属性来标识自己

**3.编码**

1.字符串形式的ref

```
<input ref="input1"></input>
```

2.回调形式的ref

```
<input ref={(c)=>{this.input1=c}}></input>
```

3.createRef 创建ref 容器

```
myRef=React.createRef()
<input ref={this.myRef}/>
```

**字符串形式的ref**

string 类型的ref 存在bug,效率不高,未来可能会被移除

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
            showData = () => {
                console.log(this);
                console.log(this.refs.input1);
                alert(this.refs.input1.value)
            }
            showData1 = () => {
                console.log(this.refs.input2);
                alert(this.refs.input2.value)
            }
            render() {
                return (
                    <div>
                        <input ref="input1" type="text" placeholder="点我提示左侧数据" />&nbsp;
                        <button res="button1" onClick={this.showData}>点我提示左侧数据</button>&nbsp;
                        <input ref="input2" onBlur={this.showData1} type="text" placeholder="失去焦点提示数据" />
                    </div>
                )
            }
        }


        ReactDOM.render(<Demo />, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

