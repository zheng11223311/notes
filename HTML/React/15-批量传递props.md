**js 展开运算符**

```js
 <script>
        let arr1 = [1, 3, 5, 7, 9]
        let arr2 = [2, 4, 6, 8, 10]
        console.log(...arr1);//展开运算符
        let arr3 = [...arr1, ...arr2]
        console.log(arr3);

        function sum(...num) {
            return num.reduce((pre, current) => {
                return pre + current
            }, 0)       //0 为pre 初始值
            console.log(num);
        }
        console.log(sum(1, 2, 3, 4, 5, 6, 7));
        // 展开运算符不能展开对象
        let obj = { name: 'tom', age: 18 }
        // console.log(...obj)
        let obj2 = { ...obj }  //表示复制
        console.log(obj2);
        obj.name = 'jerry'      //只改变obj,不改变复制的obj2
        console.log(obj);
        console.log(obj2);
		// 合并
		let obj3 = { ...obj, name: 'jon', address: 'beijing' }  //表示复制并改变属性,本质是后面的name 覆盖前面的name
        console.log(obj3);

    </script>
```

**批量传递props**

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
                let { name, age, sex } = this.props
                return (
                    <ul>
                        <li>姓名:{name}</li>
                        <li>性别:{sex}</li>
                        <li>年龄:{age}</li>
                    </ul>
                )
            }


        }
        let p = { name: "李四", age: "30", sex: '男' }
        console.log(...p);  //react 的development和babel 可以使对象展开,但是不会打印出来,仅仅适用于标签属性的传递
        ReactDOM.render(<Person name="张三" age="18" sex='男' />, document.getElementById('like_button_container'))
        ReactDOM.render(<Person {...p} />, document.getElementById('like_button_container1'))


    </script>
</body>

</html>
```

