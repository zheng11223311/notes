**获取this 指向,不建议使用**

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
        let that = this
        // 1.创建组件
        class Weather extends React.Component {
            constructor(props) {
                super(props)
                // 初始化状态
                this.state = { isHot: true }
                that = this     //将this 传出去
            }
            render() {
                // 读取状态
                return <h2 onClick={demo}>今天天气{this.state.isHot ? '炎热' : '凉爽'}</h2>
            }
        }

        ReactDOM.render(<Weather />, document.getElementById('like_button_container'))

        function demo() {
            console.log('此处修改isHot 的值');
            console.log(that.state.isHot);
            that.state.isHot = !that.state.isHot    //无法修改,可以获得
        }
    </script>
</body>

</html>
```

**类中的方法的this 指向**

```js
 <script>
        class Person {
            constructor(name, age) {
                this.name = name
                this.age = age
            }
            study() {
                //study 方法放在了哪里?---类的原型对象上,供实例使用
                //通过Person 实例调用的study 时,study 中的this 就是Person 实例
                console.log(this);
            }
        }

        const p1 = new Person('tom', 18)
        p1.study()   //通过实例调用study() 方法      
        //结果Person {name: "tom", age: 18}  实例对象

        const x = p1.study
        x()     //undefined     类的局部都开启了严格模式,this 传递出去时,this 指向不会指向全局window,而是undefined
        //严格模式下函数内的this 指向都是undefined
    </script>
```

**bind() 绑定this 使用**

```js
<script>
        function demo() {
            console.log(this);  //指向window
        }
        demo()

        demo.bind({ a: 1, b: 2 })
        //改变this 指向,指向一个新的对象{a:1,b:2}
        //但是不会有任何响应,因为没有调用这个对象,不会执行

        const x = demo.bind({ a: 1, b: 2 })
        x()     //{a: 1, b: 2}
    </script>
```

**解决this 指向问题**

**react 获取this 指向**

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
                super(props)
                // 初始化状态
                this.state = { isHot: true }
                // 解决demo 中this 指向问题
                // 绑定this,实例方法中也会新增一个demo 方法
                //原来的demo 是在原型链上的
                //自身存在demo 时,就不会再依次查找到原型链上的demo 方法
                this.demo = this.demo.bind(this)
                // 也可以为 this.ccc(ccc 为onClick 的调用方法) = this.abc(abc 为自定义的函数,比如demo).bind(this)
            }
            render() {
                // 读取状态
                return <h2 onClick={this.demo}>今天天气{this.state.isHot ? '炎热' : '凉爽'}</h2>
            }
            // 通过自己定义的类(Weather) 调用自己定义的函数 demo() 时,自己定义的
            // 函数 demo()函数this 指向的是自己定义的类(Weather) 的实例对象,
            //由于demo 是作为onClick 的回调,所以不是通过实例调用的,是直接调用
            //类中的方法默认开启了局部的严格模式,所以demo 中的this 指向为undefined
            demo() {
                console.log('此处修改isHot 的值');
                console.log(this)
                console.log(this.state.isHot);
                this.state.isHot = !this.state.isHot
            }
        }

        ReactDOM.render(<Weather />, document.getElementById('like_button_container'))


    </script>
</body>

</html>
```

