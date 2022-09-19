**src/components/redux/count_action_createor.js  文件**

```jsx
/* 
    该文件专门为Count 组件生成action 对象
*/

import {INCREMENT,DECREMENT} from './constant'
// 直接使用data=>{type:'increment',data}，会把{} 当成一个函数的函数体的{}
export const createIncrementAction=data=>({type:INCREMENT,data})
export const createDecrementAction=data=>({type:DECREMENT,data})
```

**src/components/redux/count_reducer.js  文件**

```js
/* 
    1.该文件时用于创建一个为Count 组件服务的reducer，reducer 的本质就是一个函数
    2.reducer 函数会接受两个参数，分别为：之前的状态（preState），动作对象（action）
    reducer 只会负责加减，不负责其他的异步加载等杂乱事情，就像厨师一样，只负责做菜，
    不会去考虑是否加小料
*/
import {INCREMENT,DECREMENT} from './constant'
const initState=0       //初始化状态，等于if(preState===undefined) preState=0
export default  function countReducer(preState=initState,action){
    console.log(preState,action);
    // action 的type 属性为@@init+随机数字，防止与自定义的type 冲突
    //初始化时没有参数传进来
    // if(preState===undefined) preState=0
    //从action 对象中获取：type，data
    const {type,data}=action
    //根据type 决定如何技工数据
    switch (type) {
        case INCREMENT:   //如果是加
         return  preState+data
        case DECREMENT:   //如果是减
         return  preState-data
    
        default:
            return preState
    }
}
```

**src/components/Count/Count.js  文件**

```js
import React, { Component } from 'react'
//引入store，用于获取redux 中保存的状态
import store from '../../redux/store'
//引入actionCreator，专门用于创建action 对象
import { createIncrementAction, createDecrementAction } from '../../redux/count_action_createor'

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
        setTimeout(() => {
            store.dispatch(createIncrementAction(value * 1))
        }, 500)

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

**src/components/redux/constant.js  文件**

**常量文件**

```js
/* 
    该模块是用于定义action 对象中type 类型的常量值，目的只有一个：
    便于管理的同时防止程序员单词写错
*/
export const INCREMENT='increment'
export const DECREMENT='decrement'
```

