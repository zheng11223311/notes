**state 的简写方式**

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


    <script type="text/babel">
        // 1.创建组件
        class Weather extends React.Component {
            constructor(props) {
                super(props)
            }
            //直接添加到原型链上
            state = { isHot: true, wind: '微风' }
            render() {
                return <h2 onClick={this.demo}>今天天气{this.state.isHot ? '炎热' : '凉爽'},{this.state.wind}</h2>
            }
			//箭头函数没有自己的this
            //自定义方法---要用赋值语句的形式+箭头函数
            demo = () => {
                console.log('此处修改isHot 的值');
                console.log(this)
                console.log(this.state.isHot);
                this.setState({ isHot: !this.state.isHot, wind: '大风' })
            }
        }

        ReactDOM.render(<Weather />, document.getElementById('like_button_container'))


    </script>
</body>

</html>
```

