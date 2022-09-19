**1.划分文件**

**容器Count.jsx 放在**

src/containers/Count/Count.jsx

**容器Person.jsx 放在**

src/containers/Person/Person.jsx

redux 划分出actions 文件夹和reducers 文件夹

**UI:count-action.jsx 放在**

src/redux/actions/count.js 下

**UI:count-reducer.jsx 放在**

src/redux/reducers /count.js 下



**2.示例**

App.js 文件

```js
import Count from './containers/Count/Count'
import Person from './containers/Person/Person'

function App() {
  return (
    <div className="App">
        <Count/>
        <hr/>
        <Person/>
    </div>
  );
}

export default App;
```

**src/containers/Person/Person.jsx 文件**

```jsx
import React, { Component } from 'react'

export default class Person extends Component {
    addPerson = () => {
        const name = this.nameNode.value
        const age = this.ageNode.value
        console.log(name, age);
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

**src/containers/Count/Count.jsx 文件**

```jsx
import React, { Component } from 'react'

import {
    createIncrementAction,
    createDecrementAction,
    createIncrementAsyncAction
} from '../../redux/actions/count'

//引入connect 用于连接UI组件库与redux
import { connect } from 'react-redux'
//定义UI 组件
class Count extends Component {
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

//创建并暴露一个容器组件
export default connect(
    state => {
        console.log('容器接受到store 传来的state', state);
        return { count: state }
    },
    {
        jia: createIncrementAction,
        jian: createDecrementAction,
        jianAsync: createIncrementAsyncAction
    }

)(Count)

```

