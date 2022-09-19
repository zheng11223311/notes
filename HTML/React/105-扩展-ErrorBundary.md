**8.错误边界**

**理解**

错误边界（ErrorBundary）：用来捕获后代组件错误，渲染出备用页面

**特点**

只能捕获后代组件**生命周期产生的错误**，不能捕获自己组件产生的错误和其他组件在合成事件，定时器中产生的错误

**使用方式**

getDerivedStateFromError 配合componentDidCatch

```
//生命周期函数，一旦后代组件报错，就会触发
static getDerivedStateFromError(error){
	console.log(error);
	//在render 之前触发
	//返回新的state
	return {
		hasError:true
	}
}

componentDidCatch(error,info){
	//统计页面的错误，发送请求发送到后台去
	console.log(error,info)
}
```

**示例**

**src/components/8_ErrorBundary/Parent.jsx**

```jsx
import React, { Component } from 'react'
import Child from './Child'

export default class Parent extends Component {
    state = { hasError: '' }

    //当parent 子组件出现报错，会触发getDerivedStateFromError 调用，并携带错误信息
    //错误边界只会在生产环境下，有用
//在开发环境下只会显示一会儿
    static getDerivedStateFromError(error) {
        console.log(error);
        return { hasError: error }
    }

    componentDidCatch() {
        console.log('此处统计错误，反馈给服务器，用于通知编码人员进行bug 的解决');
    }
    render() {
        return (
            <div>
                <h1>我是Parent 组件</h1>
                {this.state.hasError ? <h2>当前网络错误，稍后再试。。。</h2> : <Child />}

            </div>
        )
    }
}

```

**src/components/8_ErrorBundary/Child.jsx**

```jsx
import React, { Component } from 'react'

export default class Child extends Component {
    state = {
        // users: [
        //     { id: '001', name: 'tom', age: 18 },
        //     { id: '002', name: 'jack', age: 28 },
        //     { id: '003', name: 'peiqi', age: 8 },
        // ]
        users: 'qad'
    }
    render() {
        return (
            <div>
                <h1>我是Child 组件</h1>
                {
                    this.state.users.map((userObj) => {
                        return <h4 key={userObj.id}>{userObj.name}---{userObj.age}</h4>
                    })
                }
            </div>
        )
    }
}
```

**App.js**

```js
import './App.css';
import Demo from './components/8_ErrorBundary/Parent'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default App;

```

