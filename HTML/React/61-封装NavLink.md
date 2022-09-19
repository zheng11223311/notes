```js
/*App.js 文件*/
import './App.css';
import { NavLink,Route} from 'react-router-dom'
import Home from './components/Home'
import About from './components/About'
import MyNavLink from './components/MyNavLink/MyNavLink'

function App() {
  return (
    <div className="App">
         <div className='row'>
                    <div className="col-xs-offset-2 col-xs-8">
                        <div className="page-header">
                            <h2>React Router Demo</h2>
                        </div>
                    </div>
                </div>
                <div className='row'>
                    <div className="col-xs-offset-2 col-xs-2">
                        <div className="list-group">
                            <MyNavLink to="/about" title="About"></MyNavLink>
                            {/* <MyNavLink to="/about" >About</MyNavLink>
                              组件内的About 标题 会传入到props 的children 属性中
                            */}
                            {/* 也可以使用自己定义的title 标题 */}
                            <MyNavLink to="/about" title="About">About</MyNavLink>
                            {/* 标题为Home  会自动加到标题里面*/}
                            <MyNavLink to="/home" children="Home"/>
                        </div>
                    </div>
                </div>
                <div className=" col-xs-6">
                    <div className="panel">
                        <div className="panel-body">
                            {/* 注册路由 */}
                            {/* <BrowserRouter> */}
                            <Route path="/about" component={About}/>
                            <Route path="/home" component={Home}/>
                            {/* </BrowserRouter> */}
                        </div>
                    </div>
                </div>
    </div>
  );
}

export default App;

```

```jsx
{/*components 下MyNavLink 下MyNavLink.jsx 组件*/}
import React, { Component } from 'react'
import { NavLink, Route } from 'react-router-dom'

//封装NavLink 组件
export default class MyNavLink extends Component {
    render() {
        console.log(this.props);
        const { to, title } = this.props
        return (
            // <NavLink activeClassName="demo" className="list-group-item" to={to}>{title}</NavLink>
            // <NavLink activeClassName="demo" className="list-group-item" {...this.props}>{this.props.children}</NavLink>
            <NavLink activeClassName="demo" className="list-group-item" {...this.props} />
        )
    }
}
```

**对应关系**

> App.js
>
> ```jsx
> <MyNavLink to="/about" title="About"></MyNavLink>
> ```
>
> 使用的封装的组件
>
> ```jsx
> const { to, title } = this.props
>  return (
> <NavLink to={to}>{title}</NavLink>
>      )
> ```

> App.js
>
> ```jsx
> <MyNavLink to="/home" children="Home"/>
> ```
>
> 使用的封装的组件
>
> ```jsx
> return (
> <NavLink {...this.props}>{this.props.children}</NavLink>
>      )
> ```

> App.js
>
> ```jsx
> <MyNavLink to="/about">About</MyNavLink>
> ```
>
> 使用的封装的组件
>
> ```jsx
> return (
> <NavLink {...this.props} />
>      )
> ```

