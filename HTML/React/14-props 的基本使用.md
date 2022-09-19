

**组件三大核心属性2:props**

**1.效果**

需求:自定义用来显示一个人员信息的组件

1.姓名必须指定,且为字符串类型

2.性别为字符串类型,如果性别没有指定,默认为男

3.年龄必须指定,且为数字类型

**2.理解**

1.每个组件对象都会有props(properies 的简写)属性

2.组件标签的所有属性都保存在props 中

**3.作用**

1.通过标签属性从组件外向组件内传递变化的数据

2.注意:组件内部不要修改props 数据

**4.实例**

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





    <!-- 加载 React。-->
    <!-- 注意: 部署时，将 "development.js" 替换为 "production.min.js"。-->
    <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
    <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
    <script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>


    <script type="text/babel">
        // 1.创建组件
        class Person extends React.Component {

            render() {
                return (
                    <ul>
                        <li>姓名:{this.props.name}</li>
                        <li>性别:{this.props.sex}</li>
                        <li>年龄:{this.props.age}</li>
                    </ul>
                )
            }


        }

        ReactDOM.render(<Person name="张三" age="18" sex='男' />, document.getElementById('like_button_container'))
        ReactDOM.render(<Person name="李四" age="30" sex='男' />, document.getElementById('like_button_container1'))


    </script>
</body>

</html>
```

