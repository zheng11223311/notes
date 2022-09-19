**5.Context**

**理解**

一种组件通信方式，常用于【祖组件】与【后代组件】间通信

**使用**

```
1.创建Context 容器对象：
	const XxxContext=React.createContext()

2.渲染子组件时，外面包裹xxxContext.Provider,通过value 属性给后代组件传递数据：
<xxxContext.Provider value={数据}>
	子组件
</xxxContext.Provider>

3.后代组件读取数据：

	//第一种方法：仅适用于类组件
	static.contextType=xxxContext  //声明接收context
	this.context	//读取context 中value 数据
	
	//第二种方式：函数组件与类组件都可以
	<xxxContext.Consumer >
		{
		value=>{	//value 就是context 中的value 数据
		要显示的内容
			}
		}
	</xxxContext.Consumer>
```

**注意：**

在应用开发中一般不使用context，一般都用它的封装react 插件

**示例**

**src/components/5_Context/index.jsx**

```jsx
import React, { Component } from 'react'

//创建context 对象，必须放在ABC 组件都能访问得到的地方
//首字母的大写，因为组件标签要大写<MyContext.Provider>
const MyContext = React.createContext()
//Provider 只适用于类组件,Consumer 都可以使用
const { Provider, Consumer } = MyContext

export default class A extends Component {
    state = { username: 'tom', age: 18 }
    render() {
        const { username, age } = this.state
        return (
            <div>
                <h3>我是A 组件</h3>
                <h4>我的用户名是：{username}</h4>
                <Provider value={{ username, age }}>
                    {/* B 组件以及B 的后代组件都可以接受到参数
                     value={username} 传递username 的字符串值
                     value={{ username, age}}  传递对象{ username, age}
                    */}
                    <B />
                </Provider>

            </div>
        )
    }
}


class B extends Component {
    render() {
        return (
            <div>
                <h3>我是B 组件</h3>
                <h4>我从A 组件接收到的用户名是：</h4>
                <C />
            </div>
        )
    }
}

/* class C extends Component {
    //要使用的组件需要 声明接受的类型
    static contextType = MyContext
    render() {
        // 只有字符串时，接收 value={username} 传递username 的字符串值
        // console.log(this.context);  

        console.log(this.context.username); //取出对象的值
        return (
            <div>
                <h3>我是C 组件</h3>
                <h4>我从A 组件接收到的用户名是：{this.context.username}</h4>
            </div>
        )
    }
} */

function C() {
    return (
        <div>
            <h3>我是C 组件</h3>
            <h4>我从A 组件接收到的用户名是：
                <Consumer>
                    {
                        value => {
                            console.log(value);
                            return `${value.username}`
                        }
                    }
                </Consumer>
            </h4>
        </div>
    )
}
```

**App.js**

```js
import './App.css';
import Demo from './components/5_Context'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default App;
```

