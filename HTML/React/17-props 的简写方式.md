**将 props 写在类里面**

**props 属性只读,不可以随意改写**

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
    <div id="like_button_container1"></div>
    <div id="like_button_container2"></div>





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
        class Person extends React.Component {
            // 不要写在render 里面
            // static 关键字使propTypes 不在是在Person 类的原型链上,而是在Person 成员属性上,static 只在类里面,函数没有这个关键字
            //这样this 可以直接调用
            static  propTypes={
            name:PropTypes.string.isRequired,     
            sex:PropTypes.string,        
            speak:PropTypes.func,       
        }
         static defaultProps={
            name:'小二',
            sex:'男',
            age:18
        }
            render() {
                let { name, age, sex } = this.props
                return (
                    <ul>
                        <li>姓名:{name}</li>
                        <li>性别:{sex}</li>
                        <li>年龄:{age+1}</li>
                    </ul>
                )
            }
        }

    //    props 是只读的
    // this.props.name='jaja'   //此行代码会报错,因为props 是只读的
       
       
       
        let p = { name: "李四", age: 30, sex: '男' }   
        ReactDOM.render(<Person name="张三" age={18} sex='男'  speak={speak}/>, document.getElementById('like_button_container'))
        ReactDOM.render(<Person name="张三" age='18' sex='男' />, document.getElementById('like_button_container2'))
        ReactDOM.render(<Person {...p} />, document.getElementById('like_button_container1'))
        function speak(){
            console.log('限制函数类型');
        }
        console.log( new Person())
    </script>
</body>

</html>
```

