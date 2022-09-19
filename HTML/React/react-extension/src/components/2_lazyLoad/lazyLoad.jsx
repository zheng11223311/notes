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
