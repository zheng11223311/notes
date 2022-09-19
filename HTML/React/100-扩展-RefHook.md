**5.Ref Hook**

```
1.Ref Hook 可以在函数组件中存储/查找组件内的标签或任意其他数据
2.语法：const refContainer=useRef()
3.作用：保存标签对象，功能于React.createRef() 一样
```

**src/components/3_hooks/index.jsx**

```jsx
import React, { Component } from 'react'
import ReactDOM from 'react-dom'

// 类式组件
/* class Demo extends Component {
    myRef = React.createRef()

    show = () => {
        alert(this.myRef.current.value)
    }
    render() {
        return (
            <div>
                <input type="text" ref={this.myRef} />
             
                <button onClick={this.show}>点击提示数据</button>
            </div>
        )
    }
} */


// 函数式组件
function Demo() {
    const myRef = React.useRef()
    function show() {
        alert(myRef.current.value)
    }

    return (
        <div>
            <input type="text" ref={myRef} />
            <button onClick={show}>点击提示数据</button>
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

