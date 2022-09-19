**6.组件优化**

**Component 的2个问题**

1.只要执行setState(),即使不改变状态数据，组件也会重新render()

2.只有当前组件重新render()，就会自动重新render 子组件，即使子组件没有用到父组件的任何组件==>效率低

**效率高的做法**

只有当前组件的state 或props 数据发生改变时才重新render()

**原因**

Component 中的shouldComponentUpdate() 总是返回true

**解决**

```
办法1：
	重写shouldComponentUpdate() 方法
	比较新旧的state 或props 数据，如果有变化才返回true，如果没有返回false
办法2：
	使用PureComponent
	PureComponent 重写了shouldComponentUpdate(),只有state 或pros 数据有变化才返回true
	注意：
		只是进行state 和props 数据的浅比较，如果只是数据对象内部数据变了，返回false
		不要直接修改state 数据，而是产生新的数据
项目中一般使用PureComponent 来优化
```

**示例**

**src/components/6_PureComponent/index.jsx**

```jsx
import React, { PureComponent } from 'react'
//  使用 PureComponent 替换 Component 就可以不用使用shouldComponentUpdate
export default class Person extends PureComponent {
    state = { car: '奔驰c63' }
    changeCar = () => {
        this.setState({ car: '迈赫巴' })
        // this.setState({})

        // 内存地址没有变化，不会触发setState
        // const obj = this.state
        // obj.car = '迈巴赫'
        // this.setState(obj)

    }
    //多个组件使用和多个属性要进行判断时过于繁琐
    // shouldComponentUpdate(nextProps, nextState) {
    //     console.log(nextProps, nextState);  //接下来要变化的目标props 和state
    //     console.log(this.props, this.state);    //目前的props 和state
    //     if (this.state.car == nextState.car) {
    //         return false
    //     } else {
    //         return true
    //     }

    // }
    render() {
        console.log('Parent---render');
        const { car } = this.state
        return (
            <div>
                <h1>我是Parent 组件</h1>
                <span>{car}</span><br />
                <button onClick={this.changeCar}>点我换车</button>
                <Children car={car} />
                {/* 父组件render 会带动子组件的render，即使子组件没有接受到任何参数
                ，没有任何的变化，也会被调用render，应为diff 不知道子组件是否被修改了，
                需要在调用一次render 查看
                */}
            </div>
        )
    }
}

class Children extends PureComponent {
    // shouldComponentUpdate(nextProps, nextState) {
    //     console.log(nextProps, nextState);  //接下来要变化的目标props 和state
    //     console.log(this.props, this.state);    //目前的props 和state
    //     if (this.props.car == nextProps.car) {
    //         return false
    //     } else {
    //         return true
    //     }

    // }
    render() {
        console.log('Children---render');
        return (
            <div>
                <h1>我是Children 组件</h1>
                <span>我接受到的车是：{this.props.car}</span>
            </div>
        )
    }
}

```

**App.js**

```js
import './App.css';
import Demo from './components/6_optimize'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default App;

```

