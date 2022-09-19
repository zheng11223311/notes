如果不对props 进行限制,会影响写入数据的格式(比如:年龄必须使用number 类型,不能使用其他类型)

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


    <script type="text/babel">
        // 1.创建组件
        class Person extends React.Component {

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
        // let p = { name: "李四", age: "30", sex: '男' }  //字符串会拼接
        let p = { name: "李四", age: 30, sex: '男' }    //age 可以进行+1 操作
        ReactDOM.render(<Person name="张三" age={18} sex='男' />, document.getElementById('like_button_container'))
        ReactDOM.render(<Person name="张三" age='18' sex='男' />, document.getElementById('like_button_container2'))
        ReactDOM.render(<Person {...p} />, document.getElementById('like_button_container1'))
    </script>
</body>

</html>
```

**对props 进行限制**

**这个props 是写在类外侧的,简写的 pros 是写在类里面的**

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
    // 安装:
    // npm i prop-types
    // import PropTypes from 'props-type'       ES6
    //var PropTypes = require('prop-types');      //ES5
    //现在直接导入不行,没有将ES6 语法转化
    console.log(PropTypes);
        // 1.创建组件
        class Person extends React.Component {
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

        // Person.属性规则={
        //     name:'必传,字符串'
        // }
        // 对标签属性进行类型,必要性限制
        Person.propTypes={
            // 表示名字为String
            // name:PropTypes.string   
            
            // name 值必须为string 且必须传入
            name:PropTypes.string.isRequired,     //这里的PropTypes P 是大写的,上面的p 是小写的
            sex:PropTypes.string,        //sex 为string 类型,这里的string  的s 是小写的
            // age:PropTypes.number         //age 的值必须为number 类型,注意也是小写
            speak:PropTypes.func,       //因为string 等与内置的关键字String 没有冲突,而function 有冲突,所以改成func
        }
        // 指定默认标签属性值
        Person.defaultProps={
            name:'小二',
            sex:'男',
            age:18
        }
        // let p = { name: "李四", age: "30", sex: '男' }  //字符串会拼接
        let p = { name: "李四", age: 30, sex: '男' }    //age 可以进行+1 操作
        ReactDOM.render(<Person name="张三" age={18} sex='男'  speak={speak}/>, document.getElementById('like_button_container'))
        ReactDOM.render(<Person name="张三" age='18' sex='男' />, document.getElementById('like_button_container2'))
        ReactDOM.render(<Person {...p} />, document.getElementById('like_button_container1'))
        function speak(){
            console.log('限制函数类型');
        }
    </script>
</body>

</html>
```

