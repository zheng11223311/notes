**src/redux/constant.js**

**常量**

```js
/* 
    该模块是用于定义action 对象中type 类型的常量值，目的只有一个：
    便于管理的同时防止程序员单词写错
*/
export const INCREMENT='increment'
export const DECREMENT='decrement'
export const ADD_PERSON='add_person'
```

**src/containers/Person/Person.jsx**

```js
import React, { Component } from 'react'
// 安装随机数库 npm i nanoid
import { nanoid } from 'nanoid'

export default class Person extends Component {
    addPerson = () => {
        const name = this.nameNode.value
        const age = this.ageNode.value
        // console.log(name, age);
        const personObj = { id: nanoid(), name, age }
        console.log(personObj);
    }
    render() {
        return (
            <div>
                <h1>我是Person 组件</h1>
                <input ref={c => this.nameNode = c} type="text" id="" placeholder='输入名字' />
                <input ref={c => this.ageNode = c} type="text" id="" placeholder='输入年龄' />
                <button onClick={this.addPerson}>添加</button>
                <ul>
                    <li>名字1--年龄1</li>
                    <li>名字2--年龄2</li>
                    <li>名字3--年龄3</li>
                </ul>
            </div>
        )
    }
}
```

**src/redux/actions/person.js**

```js
import {ADD_PERSON} from '../constant'

//创建增加一个人的action 动作对象
export const createAddPersonAction=(personObj)=>({type:ADD_PERSON,data:personObj})

```

**src/redux/reducers/person.js**

```js
const { ADD_PERSON } = require("../constant");

//初始化人的列表
const initState=[{id:'001',name:'tom',age:18}]
export default function personReducer(preState=initState,action){
    const {type,data}=action
    switch (type) {
        case ADD_PERSON:        //若是添加一个人
            return [data,...preState]
    
        default:
            return preState
    }
}
```

