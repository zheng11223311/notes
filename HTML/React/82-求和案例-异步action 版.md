action 分为：

​	1.object 类型==> 同步

​	2.function 类型==>异步

安装redux-thunk 库允许使用函数类型

```
npm install redux-thunk
```

**使用与理解**

1.明确：延迟动作不想交给组件自身，想交给action

2.何时需要异步action：想要对状态进行操作，但是具体的数据靠异步任务返回（不是必须使用）

3.具体编码：

​	1.安装：npm install redux-thunk 并配置在store 中

​	2.创建action 的函数不在返回一般对象，而是一个函数，该函数中写异步任务

​	3.异步任务有结果后，分发一个同步的action 去真正操作数据

4.备注：异步action 不是必须要写的，完全可以自己等待异步任务的结果后再去分发同步action

**src/components/redux/count_action_createor.js  文件**

```js
/* 
    该文件专门为Count 组件生成action 对象
*/

import {INCREMENT,DECREMENT} from './constant'

// 直接使用data=>{type:'increment',data}，会把{} 当成一个函数的函数体的{}
//同步action，就是指action 的值为Object 类型的一般对象
export const createIncrementAction=data=>({type:INCREMENT,data})
export const createDecrementAction=data=>({type:DECREMENT,data})

//异步action，就是指action 的值为函数，异步action 中一般会使用同步action
//异步action 不是必须要用的
// import store from './store'
// export const createIncrementAsyncAction=(data,time)=>{
//     return ()=>{
//         setTimeout(()=>{
//             store.dispatch(createIncrementAction(data))
//         },time)
//     }
// }

//简化，可以不导入import store from './store'
export const createIncrementAsyncAction=(data,time)=>{
    return (dispatch)=>{
        setTimeout(()=>{
            dispatch(createIncrementAction(data))
        },time)
    }
}
```

**src/components/redux/store.js  文件**

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

**src/components/Count/Count.js  文件**

```js
import React, { Component } from 'react'
//引入store，用于获取redux 中保存的状态
import store from '../../redux/store'
//引入actionCreator，专门用于创建action 对象
import {
    createIncrementAction,
    createDecrementAction,
    createIncrementAsyncAction
} from '../../redux/count_action_createor'

export default class Count extends Component {
    // 加法
    increment = () => {
        const { value } = this.selectNumber
        // 通知redux  加value
        store.dispatch(createIncrementAction(value * 1))
        // reduce 不会像state 一样，每次更新就会更新页面
    }
    //减法
    decrement = () => {
        const { value } = this.selectNumber
        // 通知redux  加value
        store.dispatch(createDecrementAction(value * 1))
    }
    // 奇数再加
    incrementIfOdd = () => {
        const { value } = this.selectNumber
        let count = store.getState()
        if (count % 2 !== 0) {
            store.dispatch(createIncrementAction(value * 1))
        }

    }
    incrementAsync = () => {
        const { value } = this.selectNumber
        store.dispatch(createIncrementAsyncAction(value * 1, 500))
    }
    render() {
        return (
            <div>
                <h1>当前求和为：{store.getState()}</h1>
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

