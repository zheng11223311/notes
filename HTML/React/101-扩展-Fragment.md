**4.Fragment**

**使用**

```
<Fragment></Fragment>
或
<></>
```

**作用**

可以不用必须有一个真实的DOM 根标签了

**示例**

**App.js**

```js
import './App.css';
import Demo from './components/4.Fragment'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default Ap
```

**src/components/4.Fragment/index.jsx**

```jsx
import React, { Component, Fragment } from 'react'

export default class Demo extends Component {
    render() {
        return (
            // <Fragment key={1}>
            //     相当于一个div 壳，但是在编译的时候不会保留这个壳,
            //     而div 壳会保留div 标签，在页面上渲染出div 标签
            // 只接受key ，因为其他属性会随着Fragment 标签的丢失而丢掉
            // </Fragment>
            <>
                空标签不允许设置属性值
            </>
        )
    }
}

```

