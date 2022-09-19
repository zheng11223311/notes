**回调ref 中调用次数的问题**

如果ref 回调函数是以内联函数的方式定义的,在更新过程中(render 每次渲染)它会被执行两次,第一次传入参数null,然后第二次会传入参数DOM 元素,这是因为每次渲染是会创建一个新的函数实例,所以React 清空旧的ref 并且设置新的,通过将ref 的回调函数定义成class

的绑定函数的方式就可以避免上述问题,但是大多数情况下它是无关紧要的

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
                console.log('@', this.input1.value);
            }
            chanceWeather = () => {
                //获取原来的状态
                const { isHot } = this.state
                this.setState({ isHot: !isHot })
            }
            saveInput=(c)=>{      //成为实例自身的函数,不会在被调用(class 类绑定)
                this.input1=c
                console.log(c);
            }
            state = { isHot: true }
            render() {
                const { isHot } = this.state
                // 第一次加载时自动调用render, 第二次输入数据, 点击时调用render
                return (
                    <div>
                        <h2>今天天气很{isHot ? '炎热' : '凉爽'}</h2>
                        {/* 大括号里面写js 语法,注释也是js 语法 */}
                        {/* <input  ref={(currentNode) => {
                            //console.log(currentNode); 
                            this.input1 = currentNode
                        }}
                            type="text" placeholder="点我提示左侧数据" />&nbsp; */}
                        <input  ref={this.saveInput}
                            type="text" placeholder="点我提示左侧数据" />&nbsp;
                        <button onClick={this.showData}>点我提示左侧数据</button>&nbsp;
                        <button onClick={this.chanceWeather}>点我切换天气</button>&nbsp;
                    </div>
                )
            }
        }


        ReactDOM.render(<Demo />, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

