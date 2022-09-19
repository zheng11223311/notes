import React, { Component } from 'react'
import { Route, Switch, NavLink, Redirect } from 'react-router-dom'
import MyNavLink from './MyNavLink/MyNavLink'
import News from './News/News'
import Message from './Message/Message'

export default class Home extends Component {

    render() {
        console.log('路由组件接受到的props', this.props);
        return (
            <div>

                <h1>我是路由Home</h1>
                <MyNavLink to="/home/news">News</MyNavLink>
                <MyNavLink to='/home/message' children="Message" />
                {/* 注册路由 */}
                <Switch>
                    {/* 这里的匹配要先经过上一级路由的匹配，如果上一级设置了精准匹配
                    的话，点击这里的路由就会开始从上级的开始匹配，精准匹配下，上一级就不会
                    通过匹配了，上一级的路由就没有了，子路由也就不存在了，也就没有了下一级的匹配
                    ，所以直接跳到默认的首页
                    */}
                    <Route path="/home/news" component={News} />
                    <Route path='/home/message' component={Message} />
                    <Redirect to="/home/news" />
                </Switch>
            </div>
        )
    }
}
