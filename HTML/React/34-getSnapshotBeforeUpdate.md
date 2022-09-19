**getSnapshotBeforeUpdate 在更新之前获取快照**

snapshot  快照

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
            constructor(props){
                super(props)
                this.state={car:'11'}
            }
            changeState=()=>{
                this.setState({car:'奥迪'})
            }
            //组件完成更新
            // preProps  获取的是更新之前的props
            // preState  获取的是更新之前的state
            // snapshotValue 接收getSnapshotBeforeUpdate 传递过来的值
            componentDidUpdate(preProps,preState,snapshotValue){
                console.log('A-Count-componentDidUpdate',preProps,preState,snapshotValue);
            }
            
            // state 的值在任何时候都取决于props
            // static  静态
           static getDerivedStateFromProps(props,state){
                console.log('getDerivedStateFromProps',props,state);
                // return null
                // return {car:"123"}   //返回state 对象,会修改原来的state
                return props    //将props 的值添加到state 对象
            }

            // 记录之前的信息,在DOM 元素更新前传递数据
            getSnapshotBeforeUpdate(){
                console.log('getSnapshotBeforeUpdate');
                // return null     //返回的值可以为任何值,传递给下游的componentDidUpdate
                return '123344'
            }
            render(){
                 console.log('A-render');
                return (
                    <div>
                        <div >A</div>
                        <div >{this.state.car}</div>
                        <button onClick={this.changeState}>更新</button>
                        </div>
                )
            }
            
            
        }
       
        ReactDOM.render(<A name="tom"/>, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

**getSnapshotBeforeUpdate 举例**

浏览新闻时将新闻固定在一个位置,不会受到不断出现的新闻而被挤下去

```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .list{
            width: 200px;
            height: 150px;
            background-color: skyblue;
            overflow: auto;
        }
        .news{
            height: 30px;
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
        class NewsList extends React.Component{
                state={newsArr:[]}
           componentDidMount(){
               setInterval(()=>{
                   //获取原来的状态
                   const {newsArr} =this.state
                   //模拟一条新闻
                   const news='新闻'+(newsArr.length+1)
                   //更新状态
                   this.setState({newsArr:[news,...newsArr]})
               },1000)
           }
            //组件完成更新
            // preProps  获取的是更新之前的props
            // preState  获取的是更新之前的state
            // snapshotValue 接收getSnapshotBeforeUpdate 传递过来的值
            componentDidUpdate(preProps,preState,snapshotValue){
                console.log('A-Count-componentDidUpdate',preProps,preState,snapshotValue);
                // 当前固定的高度=最新的高度-上一个的高度
                //使滚动条停留在一个位置,新增的新闻不会时浏览的页面下滑
                this.refs.list.scrollTop+=this.refs.list.scrollHeight-snapshotValue

            }
            
            // 记录之前的信息,在DOM 元素更新前传递数据
            getSnapshotBeforeUpdate(){
                console.log('getSnapshotBeforeUpdate');
               
                return this.refs.list.scrollHeight
            }
            render(){
                 console.log('A-render');
                return (
                    <div className="list" ref="list">
                        {
                            this.state.newsArr.map((n,index)=>{
                            return <div key={index} className="news">{n}</div>
                        })
                        }
                        
                    </div>
                )
            }
            
            
        }
       
        ReactDOM.render(<NewsList />, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

