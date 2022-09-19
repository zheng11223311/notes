**7.render Props**

**如何向组件内部动态传入带内容的结构（标签）？**

```
Vue 中：
	使用slot 技术，也就是通过组件标签传入结构<A><B/></A>
React 中：
	使用children props：通过组件标签传入解构
	使用render props：通过组件标签属性传入结构，而且可以携带数据，一般用render 函数属性
```

**children props**

```
<A>
	<B>xxxx</B>
</A>
{this.props.children}
问题：如果B 组件需要A 组件内部的数据，==>做不到
```

**render props**

```
<A render={data=><C data={data}></C>}></A>
A 组件：{this.props.render(内部state 数据)}
//this.props.render 中render 可以时任何字母，例如：this.props.render123，
C 组件：读取A 组件传入的数据显示{this.props.data}
```

**示例**

**src/components/7_renderProps/index.jsx**

```jsx
import React, { Component } from 'react'

export default class Parent extends Component {
    render() {
        return (
            <div>
                <h1>我是Parent 组件</h1>
                {/* <A >
                        <B />
                    </A>
                 */}
                {/*相比于上面的组件，这个组件可以传递数据 */}
                <A render1={(name) => <B name={name} />}> </A >
            </div>
        )
    }
}

class A extends Component {
    state = { name: 'tom' }
    render() {
        console.log(this.props);
        const { name } = this.state
        return (
            <div>
                <h1>我是A 组件</h1>
                {/* 
                使用   <A >
                            <B />
                        </A>
                展示B 组件 */}
                {/* {this.props.children} */}

                {/* 相当于Vue 的插槽，留着位置 */}
                {this.props.render1(name)}

            </div>
        )
    }
}

class B extends Component {
    render() {
        return (
            <div>
                <h1>我是B 组件,{this.props.name}</h1>
            </div>
        )
    }
}
```

**App.js**

```js
import './App.css';
import Demo from './components/7_renderProps'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default App;

```

