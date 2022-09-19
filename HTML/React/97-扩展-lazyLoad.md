**2.lazyLoad-懒加载**

一般情况下路由全部都已经加载完了，如果有很多个路由的话，这样就不太好

**路由组件的lazyLoad**

```js
//1.通过React 的lazy 函数配合import() 函数动态加载路由组件===>路由组件代码会被分开打包
const Login=lazy(()=>import('@/pages/Login'))

//2.通过<Suspense> 指定在加载得到路由打包文件前显示一个自定义loading 界面
<Suspense fallback={<h1>loading...</h1>}>
	<Switch>
		<Route path="/xxx" component={Xxxx}>
		<Redirect to="/login">
	</Switch>
</Suspense>
```

**安装路由**

```
npm i react-router-dom
```

**示例**

**App.js **

```js
import './App.css';
import Demo from './components/2_lazyLoad/lazyLoad'

function App() {
  return (
    <div className="App">
      <Demo/>
    </div>
  );
}

export default App;

```

**src/index.js**

```js
import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import {  BrowserRouter} from 'react-router-dom'

ReactDOM.render(
  <React.StrictMode>
    <BrowserRouter>
    <App />
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById('root')
);


reportWebVitals();
```

**src/components/2_lazyLoad/lazyLoad.jsx**

```jsx
import { lazy, Suspense } from 'react'
import { Route, Switch, Redirect, NavLink } from 'react-router-dom'

// import Home from './Home'
// import About from './About'

const Home = lazy(() => import('./Home'))
const About = lazy(() => import('./About'))

function Demo() {
    return (
        <div className="App">
            <div className='row'>
                <div className="col-xs-offset-2 col-xs-8">
                    <div className="page-header">
                        <h2>Header </h2>
                    </div>
                </div>
            </div>
            <div className='row'>
                <div className="col-xs-offset-2 col-xs-2">
                    <div className="list-group">
                        <NavLink to="/about" title="About"></NavLink>
                        <NavLink to="/about" title="About">About</NavLink>
                        <NavLink to="/home/" children="Home" />
                    </div>
                </div>
            </div>
            <div className=" col-xs-6">
                <div className="panel">
                    <div className="panel-body">
                        {/* 
                        解决路由懒加载时没有请求到数据（超时）的情况 
                        fallback   在没有加载完成时显示，加载完后不会再次请求
                        也可以使用自定义loading 组件
                        fallback={<Loading/>}
                        自定义loading 组件不能使用懒加载，那样的话组件没有就位，显示
                        loading 时，发现loading 也没有就位
                        */}
                        <Suspense fallback={<h1>loading...</h1>}>
                            <Switch>
                                <Route path="/about" component={About} />
                                <Route path="/home" component={Home} />
                                <Redirect to='/About' />
                            </Switch>
                        </Suspense>

                    </div>
                </div>
            </div>
        </div>
    );
}

export default Demo;

```

**src/components/2_lazyLoad/Home/index.jsx**

```jsx
import React, { Component } from 'react'

export default class Home extends Component {
    render() {
        return (
            <h2>我是home 组件</h2>
        )
    }
}
```

**src/components/2_lazyLoad/About/index.jsx**

```jsx
import React, { Component } from 'react'

export default class About extends Component {
    render() {
        return (
            <h1>我是about 组件</h1>
        )
    }
}

```

