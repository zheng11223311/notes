**理解：**

**1.明确两个概念：**

> ​	1.UI 组件：不能使用任何redux 的api，只负责页面的呈现，交互等
>
> ​	2.容器组件：负责和redux 通信，将结果交给UI 组件

**2.如何创建一个容器组件---靠react-redux 的connect 函数**

> ​	connect(mappStateToProps,mapDispatchToProps)(UI 组件)
>
> ​		-mapStateToProps：映射状态，返回值是一个对象
>
> ​		-mapDispatchToProps：映射操作状态的方法，返回的是一个对象

**3.备注：容器组件中的store 是靠props 传进去的，而不是在容器组件中直接引入**

**示例：**

**App.js**

```js
//引入容器组件
import Count from './containers/Count/Count'
//‘引入redux 的store
import store from './redux/store'
function App() {
  return (
    <div className="App">
      <Count store={store}/>
    </div> 
  );
}

export default App;

```

**src/redux/store.js  文件**

```js
/* 
    该文件专门用于暴露一个store 对象，整个应用只有一个store 对象
*/

//引入createStore，专门用于创建redux 中最为核心的store 对象
//applyMiddleware  处理异步的中间件
import {createStore,applyMiddleware} from 'redux'
//引入为Count 组件服务的reducer
import countReducer from './count_rducer'
//引入redux-thunk，用于支持异步action
import  thunk from 'redux-thunk'

// const store=createStore(countReducer)
// export default store

//暴露store
export default createStore(countReducer,applyMiddleware(thunk))
```

**src/containers/Count/Count.jsx  文件**

**容器**

```jsx
//引入count 的UI 组件
import CountUI from '../../compoments/Count/Count'
import {
    createIncrementAction,
    createDecrementAction,
    createIncrementAsyncAction
} from '../../redux/count_action_createor'

//引入connect 用于连接UI组件库与redux
import { connect } from 'react-redux'

//1.mapStateToProps 函数返回的是一个对象（因为props 需要的是一个对象）
//a(mapStateToProps) 函数返回的对象中的key 就作为传递给UI 组件的props 的key，value 就作为传递给UI 组件的props 的value
//3.mapStateToProps 用传递状态
//映射state 变成props
function mapStateToProps(state) {     //接收store 传递的值，相当于store.getState()
    console.log('容器接受到store 传来的state', state);
    return { count: state }
}
//1.mapDispatchToProps 函数返回的是一个对象
//b(mapDispatchToProps) 函数返回的对象中的key 就作为传递给UI 组件的props 的key，value 就作为传递给UI 组件的props 的value---操作状态的方法
//3.mapDispatchToProps 用传递操作状态的方法
//映射dispatch 变成props
function mapDispatchToProps(dispatch) {
    return {
        jia: (number) => {
            // 通知redux 执行方法
            dispatch(createIncrementAction(number))
        },
        jian: (number) => {
            // 通知redux 执行方法
            dispatch(createDecrementAction(number))
        },
        jianAsync: (number, time) => {
            // 通知redux 执行方法
            dispatch(createIncrementAsyncAction(number, time))
        }
    }
}


//创建并暴露一个容器组件
const countContainer = connect(mapStateToProps, mapDispatchToProps)(CountUI)

export default countContainer

```

**src/components/Count/Count.jsx  文件**

**UI 组件**

```jsx
import React, { Component } from 'react'


export default class Count extends Component {
    // 加法
    increment = () => {
        const { value } = this.selectNumber
        this.props.jia(value * 1)

    }
    //减法
    decrement = () => {
        const { value } = this.selectNumber
        this.props.jian(value * 1)

    }
    // 奇数再加
    incrementIfOdd = () => {
        const { value } = this.selectNumber
        if (this.props.count % 2 != 0) {
            this.props.jia(value * 1)
        }

    }
    incrementAsync = () => {
        const { value } = this.selectNumber
        this.props.jianAsync(value * 1, 500)
    }
    render() {
        console.log('UI 组件接收到的props 是', this.props);
        return (
            <div>
                <h1>当前求和为：{this.props.count}</h1>
                <select ref={c => this.selectNumber = c} name="" id="">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
                {/* alt 键多选 */}
                <button onClick={this.increment}>+</button>
                <button onClick={this.decrement}>-</button>
                <button onClick={this.incrementIfOdd}>当前和为奇数再加</button>
                <button onClick={this.incrementAsync}>异步加</button>
            </div>
        )
    }
}

```

**其他使用到的文件没有变化**

**思路：**

store 接受action creators 传来的action（type，data），store 交给reducer ，reducer 返回值给store ，再将store 交到容器Count，容器 Count 将store 和UI count 连接，将store 的值传入count，count 执行获得的值

