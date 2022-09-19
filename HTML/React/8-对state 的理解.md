**1.组件三大核心属性1.state**

**1.理解**

1.state 是组件对象的重要的属性,值是对象(可以包含多个key-value 的组合)

2.组件被称为"状态机",通过更新组件的state 来更新对应的页面显示(重新渲染组件)

**2.强烈注意**

1.组件中的render 方法中的this 为组件实例对象

2.组件自定义的方法中的this 为undefined,如何解决?

​	a.强制绑定this: 通过函数对象的bind()

```jsx
class Weather extends React.Component {
            constructor(props) {
                super(props)
                // 初始化状态
                this.state = { isHot: true }
                // 绑定this
                this.demo = this.demo.bind(this)
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
```

​	b.箭头函数

3.状态数据,不能直接修改过更新



