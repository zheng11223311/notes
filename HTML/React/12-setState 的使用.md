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
                //this 必须放到super 后边,其他的可以放到super 前面,比如console.log()
                super(props)
                this.state = { isHot: true, wind: '微风' }

                this.demo = this.demo.bind(this)
            }
            render() {
                return <h2 onClick={this.demo}>今天天气{this.state.isHot ? '炎热' : '凉爽'},{this.state.wind}</h2>
            }

            demo() {
                console.log('此处修改isHot 的值');
                console.log(this)
                console.log(this.state.isHot);
                //this.state.isHot = !this.state.isHot    //不能直接修改,打印,值修改,但视图不变,因为react 不认可,插件调试显示没有被改变
                //要借用内置api setState,在component 原型链上
                //状态必须通过serState 进行更新,且更新需要改变的属性,没有传入属性的不会被去除
                this.setState({ isHot: !this.state.isHot, wind: '大风' })
            }
        }

        ReactDOM.render(<Weather />, document.getElementById('like_button_container'))


    </script>
</body>

</html>
```

