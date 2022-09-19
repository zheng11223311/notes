**4.Effect Hook（函数可以使用生命周期）**

```
1.Effect Hook 可以让你在函数组件中执行副作用（用于模拟类组件中的生命周期）
2.React 中的副作用操作：
	发ajax 请求数据获取
	设置订阅/启动定时器
	手动更改真实DOM
3.语法和说明：
	useEffect(()=>{
		//在此可以执行任何副作用操作
		return ()=>{//在组件卸载之前执行
			//在做一些收尾工作，，比如清除定时器/取消订阅等
		}
	},[stateValue]) //如果指定的是[]，回调函数只会在第一次render() 后执行

4.可以把useEffect Hook 看作如下三个函数的组合：
	componentDidMount()
	componentDidUpdate()
	componentWillUnmount()
```

**示例**

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

**src/components/3_hooks/index.jsx**

```jsx
import React, { Component } from 'react'
import ReactDOM from 'react-dom'

// 类式组件
// class Demo extends Component {
//     state = { count: 0 }
//     add = () => {
//         this.setState(state => ({ count: state.count + 1 }))
//     }

//     componentDidMount() {
//         this.timer = setInterval(() => {
//             this.setState(state => ({ count: state.count + 1 }))
//         }, 1000)
//     }

//     unmount = () => {
//         ReactDOM.unmountComponentAtNode(document.getElementById('root'))
//     }

//     componentWillUnmount() {
//         clearInterval(this.timer)
//     }
//     render() {
//         return (
//             <div>
//                 <h2>当前求和为：{this.state.count}</h2>
//                 <button onClick={this.add}>点我加1</button>
//                 <button onClick={this.unmount}>卸载组件</button>
//             </div>
//         )
//     }
// }


// 函数式组件
function Demo() {

    const [count, setCount] = React.useState(0)
    const [name, setName] = React.useState('tom')
    //只有一个参数时，表示检测所有状态,相当于componentDidUpdate
    // 当底层状态改变时，会调用useEffect 第一个参数回调，如果后面
    // 加了第二个参数[]，则第一个参数只会回调一次，相当于 componentDidMount
    //[count] 表示检测count 状态的改变
    React.useEffect(() => {
        // console.log('@');
    }, [count, name])

    React.useEffect(() => {
        let timer = setInterval(() => {
            setCount(count => count + 1)
        }, 1000)
        return () => {
            // return 返回值相当于componentWillUnmount
            console.log('#');
            clearInterval(timer)
        }
    }, [])

    function add() {
        // setCount(count + 1) //第一种写法
        setCount(count => count + 1)
    }
    function change() {
        setName(name => 'jack')
    }
    function unmount() {
        ReactDOM.unmountComponentAtNode(document.getElementById('root'))
    }

    return (
        <div>
            <h2>当前求和为：{count}，{name}</h2>
            <button onClick={add}>点我加1</button>
            <button onClick={change}>点我改名</button>
            <button onClick={unmount}>卸载组件</button>
        </div>
    )
}

export default Demo
```

