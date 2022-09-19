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
        class A extends React.Component{
            state={carName:'奔驰'}

            changeCar=()=>{
                this.setState({carName:'奥拓'})
            }
            
            //是否允许更新界面 需要返回true/false=>界面不会更新
            shouldComponentUpdate(){
                console.log('A-Count-shouldComponentUpdate');
                return true
            }
            
            // 组件将要更新的
            componentWillUpdate(){
                console.log('A-Count-componentWillUpdate');
            }

            //组件完成更新
            componentDidUpdate(){
                console.log('A-Count-componentDidUpdate');
            }
        
            render(){
                 console.log('A-render');
                return (
                    <div>
                        <div >A</div>
                        <button onClick={this.changeCar}>换车</button>
                        {/* 使用B 组件,形成父子关系 */}
                        <B carName={this.state.carName}/>
                        </div>
                )
            }
            
            
        }
        class B extends React.Component{

            //子组件将要接收到参数时的钩子
            //第一次调用不算,第二次从新渲染才会调用这个钩子
            //写在子组件里面,放在父组件里面无效
            componentWillReceiveProps(props){
                console.log('B--componentWillReceiveProps',props);
            }

            
            //是否允许更新界面 需要返回true/false=>界面不会更新
            shouldComponentUpdate(){
                console.log('B-Count-shouldComponentUpdate');
                return true
            }
            
            // 组件将要更新的
            componentWillUpdate(){
                console.log('B-Count-componentWillUpdate');
            }

            //组件完成更新
            componentDidUpdate(){
                console.log('B-Count-componentDidUpdate');
            }

            render(){
                console.log('B-render');
                return (
                    <div>B车:{this.props.carName}</div>
                )
            }

        }

        ReactDOM.render(<A />, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

**结果**

A-Count-shouldComponentUpdate
A-Count-componentWillUpdate
A-render
B--componentWillReceiveProps {carName: "奥拓"}
B-Count-shouldComponentUpdate
B-Count-componentWillUpdate
B-render
B-Count-componentDidUpdate
A-Count-componentDidUpdate

