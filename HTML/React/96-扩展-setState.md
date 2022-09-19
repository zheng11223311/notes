**1.setState**

**setState 更新状态的2 种写法**

```
1.setState(stateChange,[callback])---对象式的setState
   1.stateChange 为状态改变对象（该对象可以体现出状态的更改）
   2.callback 是可选的回调函数，他在状态更新完毕，界面也更新后（render 调用后）才被调用

2.setState(update,[callback])-----函数式的setState
	1.update 为返回stateChange 对象的函数
	2.update 可以接收到state 和props
	3.callback 是可选函数，他在状态更新，界面也更行后（render 调用后）才被调用

总结：
	1.对象式的setState 是函数式的setState 的简写方式（语法糖）
	2.使用原则：
		1.如果状态不依赖于原状态===》使用对象方式
		2.如果更行状态依赖于原状态===》使用函数方式（只是为了简化代码量）
		3.如果需要在setState() 执行后获取最新的状态数据，要在第二个callback 函数中读取
	
```

**示例**

**src/components/1_setState/setState.jsx**

```jsx
import React, { Component } from 'react'

export default class Demo extends Component {
    state = { count: 0 }
    add = () => {
        // //获取原来的count 值
        // const { count } = this.state
        // //更新状态(异步更新)
        // this.setState({ count: count + 1 }, () => {
        //     console.log(this.state);    //获取改变后的值
        // })
        // console.log(this.state); //异步获取原来还没有改变的值

        this.setState((state, props) => {
            // state, props 可选
            //函数式可以不用获取原来的state 里面的值
            console.log(state, props);
            return { count: state.count + 1 }
        },()=>{
            
        })
    }
    render() {
        return (
            <div>
                <h1>当前求和为：{this.state.count}</h1>
                <button onClick={this.add}>点我加1</button>
            </div>
        )
    }
}

```

**App.js**

```js
import './App.css';
import Demo from './components/1_setState/setState'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default App;
```

