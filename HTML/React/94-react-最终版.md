**简化代码**

**src/dedux/reducer/index.js**

```js
/* 
    该文件用于汇总所有的reducer 为一个总的reducer ，返回给store
*/
//引入为Count 组件服务的reducer
import count from './count'
//引入为Person 组件服务的reducer
import persons from './person'
// combineReducers  合并reducer
import {combineReducers} from 'redux'

// {} 对象更好取出key 对应的值
const allReducer=combineReducers({
    count,
    persons
})
export default allReducer
```

**src/dedux/store.js**

```js
/* 
    该文件专门用于暴露一个store 对象，整个应用只有一个store 对象
*/

//引入createStore，专门用于创建redux 中最为核心的store 对象
// combineReducers  合并reducer
import {createStore,applyMiddleware} from 'redux'
//引入汇总之后总的reducer 
import reducer from './reducers/index'

//引入redux-thunk，用于支持异步action
import  thunk from 'redux-thunk'
//引入redux-devtools-extension
//composeWithDevTools 编译伴随工具
// import {composeWithDevTools} from 'redux-devtools-extension'
// console.log(composeWithDevTools);

// 暴露store
// export default createStore(countReducer,applyMiddleware(thunk))

export default createStore(reducer,applyMiddleware(thunk))
// 浏览器插件开启使用
// export default createStore(allReducer,composeWithDevTools(applyMiddleware(thunk)))
//不需要异步action 时
// export default createStore(allReducer,composeWithDevTools())
```

**src/dedux/actions/person.js**

```js
import {ADD_PERSON} from '../constant'

//创建增加一个人的action 动作对象
export const addPerson=(personObj)=>({type:ADD_PERSON,data:personObj})
```

**src/dedux/actions/count.js**

```js
/* 
    该文件专门为Count 组件生成action 对象
*/

import {INCREMENT,DECREMENT} from '../constant'

export const increment=data=>({type:INCREMENT,data})
export const decrement=data=>({type:DECREMENT,data})

export const incrementAsync=(data,time)=>{
    return (dispatch)=>{
        setTimeout(()=>{
            dispatch(increment(data))
        },time)
    }
}
```

**src/container/Person/Person.jsx**

```jsx
import React, { Component } from 'react'
// 安装随机数库 npm i nanoid
import { nanoid } from 'nanoid'
import { connect } from 'react-redux'
import { addPerson } from '../../redux/actions/person'

class Person extends Component {
    addPerson = () => {
        const name = this.nameNode.value
        const age = this.ageNode.value
        // console.log(name, age);
        const personObj = { id: nanoid(), name, age }
        this.props.addPerson(personObj)
        console.log(personObj);
        this.nameNode.value = ''
        this.ageNode.value = ''
    }
    render() {
        return (
            <div>
                <h1>我是Person 组件,上方组件求和为:{this.props.count}</h1>
                <input ref={c => this.nameNode = c} type="text" id="" placeholder='输入名字' />
                <input ref={c => this.ageNode = c} type="text" id="" placeholder='输入年龄' />
                <button onClick={this.addPerson}>添加</button>
                <ul>
                    {
                        this.props.personArr.map((p) => {
                            return <li key={p.id}>{p.name}--{p.age}</li>

                        })
                    }
                </ul>
            </div>
        )
    }
}

export default connect(
    state => ({
        personArr: state.persons,
        count: state.count
    }),  //映射状态
    { addPerson }
)(Person)
```

**src/container/Count/Count.jsx**

```jsx
import React, { Component } from 'react'

import {
    increment,
    decrement,
    incrementAsync
} from '../../redux/actions/count'

//引入connect 用于连接UI组件库与redux
import { connect } from 'react-redux'
//定义UI 组件
class Count extends Component {
    // 加法
    increment = () => {
        const { value } = this.selectNumber
        this.props.increment(value * 1)

    }
    //减法
    decrement = () => {
        const { value } = this.selectNumber
        this.props.decrement(value * 1)

    }
    // 奇数再加
    incrementIfOdd = () => {
        const { value } = this.selectNumber
        if (this.props.count % 2 !== 0) {
            this.props.increment(value * 1)
        }

    }
    incrementAsync = () => {
        const { value } = this.selectNumber
        this.props.incrementAsync(value * 1, 500)
    }
    render() {
        console.log('UI 组件接收到的props 是', this.props);
        return (
            <div>
                <h1>当前求和为：{this.props.count},下方组件总人数为:{this.props.personCount}</h1>
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

//创建并暴露一个容器组件
export default connect(
    // state 为合并后的一个对象
    state => {
        console.log('容器接受到store 传来的state', state);
        // return { count: state }
        return { count: state.count, personCount: state.persons.length }
    },
    {
        increment,
        decrement,
        incrementAsync
    }

)(Count)

```

