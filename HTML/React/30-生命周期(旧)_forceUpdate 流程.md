**强制更新forceUpdate**

不修改sate 状态来强制更新页面

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
        class Count extends React.Component {
            // 构造器
            constructor(props){
                console.log('count-constructor-先后执行循序');
                super(props)
                 // 初始化状态
                this.state={count:0}
            }
           

            //+1 按钮回调
            add=()=>{
                //获取原来状态
                const {count}=this.state
                //更新状态
                this.setState({count:count+1})
            }


            //组件将要挂载的钩子
            componentWillMount(){
                console.log("count-componentWillMount");
            }
            
            //组件挂载完毕的钩子
            componentDidMount(){
                console.log("count-componentDidMount");
            }

            //组件在卸载之前
            componentWillUnmount(){
                 console.log("count-componentWillUnmount");
            }

            //是否允许更新界面 需要返回true/false=>界面不会更新
            //不写这个钩子的话默认返回true
            //组件更新的阀门
            shouldComponentUpdate(){
                console.log('Count-shouldComponentUpdate');
                return true
            }
            
            // 组件将要更新的
            componentWillUpdate(){
                console.log('Count-componentWillUpdate');
            }

            //组件完成更新
            componentDidUpdate(){
                console.log('Count-componentDidUpdate');
            }
        
            // 强制更新回调按钮
            force=()=>{
                this.forceUpdate()
            }
            
            //初始化渲染,状态更新之后
            render() {
                console.log("count-render");
                const {count}=this.state
                return (
                    <div>
                       <h1>当前求和为{count}</h1>
                       <button onClick={this.add}>点我+1</button>
                       <button onClick={this.force}>不更改任何状态中的数据,强制更新一下</button>
                        </div>
                )
            }
        }
            


        ReactDOM.render(<Count />, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

