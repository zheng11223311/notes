**Diffing 算法**

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
        class Time extends React.Component{
                state={date:new Date()}
           componentDidMount(){
               setInterval(()=>{
                   //更新状态
                   this.setState({date:new Date()})
               },1000)
           }
          
            render(){
                 console.log('A-render');
                 //里面的h1 和两个input 标签都是不会被更换的
                 //替换的是span 标签和里面的内容,但是里面的input 也会被diffing 算法
                 //进行以一一比对,不会被更换
                 //例子:在input 里面输入文字,更新时文字不会消失,说明input 没有被替换
                return (
                    <div>
                        <h1>hello</h1>
                        <input type="text"/>
                        <span>
                            现在是:{this.state.date.toTimeString()}
                            <input type="text"/>
                        </span>
                    </div>
                )
            }
            
            
        }
       
        ReactDOM.render(<Time />, document.getElementById('like_button_container'))

    </script>
</body>

</html>
```

