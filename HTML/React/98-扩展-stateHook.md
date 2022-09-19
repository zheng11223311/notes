**3.Hooks**

**1.React Hook/Hooks 是什么？**

```
1.Hook 是React 16.8.0版本增加的新特性/新语法
2.可以让你在函数组件中使用 state 以及其他的React 特性
```

**2.三个常用的Hook**

```
1.State Hook:React.useState()
2.Effect Hook:React.useEffect()
3.Ref Hook:React.useRef()
```

**3.State Hook**

```
1.State Hook 让函数组件也可以有state 状态，并进行状态数据的读写操作
2.语法：const [xxx,setXxx]=React.useState(initValue)
3.useState() 说明：
	参数：第一次初始化指定的值在内部缓存
	返回值：包含2 个元素的数组，第一个作为当前内部状态值，第2个为更新状态值的函数
4.setXxx() 2种写法：
	setXxx(newValue)：参数为非函数值，直接指定新的状态值，内部用其覆盖原来的状态值
	setXxx(value=>newValue):参数为函数，接收原来的状态值，放回新的状态值，内部用其覆盖原来的状态值
```

**示例**

**src/components/3_hooks/index.jsx**

```jsx
import React, { Component } from 'react'

/* 类式组件
class Demo extends Component {
    state = { count: 0 }
    add = () => {
        this.setState(state => ({ count: state.count + 1 }))
    }
    render() {
        return (
            <div>
                <h2>当前求和为：{this.state.count}</h2>
                <button onClick={this.add}>点我加1</button>
            </div>
        )
    }
}
 */

// 函数式组件
function Demo() {

    //react 对count 进行缓存，不会再次调用Demo 有进行初始化为0
    const [count, setCount] = React.useState(0) //0为初始值
    // console.log(count, setCount);
    const [name, setName] = React.useState('tom')

    //加的回调
    function add() {
        // console.log('点击了加号');
        // setCount(count + 1) //第一种写法
        setCount(count => count + 1)
    }
    function changeName() {
        setName('jack')
    }
    return (
        <div>
            <h2>当前求和为：{count}</h2>
            <h2>我的名字：{name}</h2>
            <button onClick={add}>点我加1</button>
            <button onClick={changeName}>点我改名</button>
        </div>
    )
}

export default Demo
```

**App.js**

```js
import './App.css';
import Demo from './components/3_hooks'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default App;
```

