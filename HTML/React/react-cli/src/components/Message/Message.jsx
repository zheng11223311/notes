import React, { Component } from 'react'
import { Link, Route } from 'react-router-dom'
import Detail from './Detail/Detail'

export default class Message extends Component {
    state = {
        messageArr: [
            { id: '01', title: '消息1' },
            { id: '02', title: '消息2' },
            { id: '03', title: '消息3' },
        ]
    }
    replaceShow = (id, title) => {
        //replace 跳转+携带params 参数
        this.props.history.replace(`/home/message/detail/${id}/${title}`)
        //replace 跳转+携带search 参数
        // this.props.history.replace(`/home/message/detail/?id=${id}&title=${title}`)
        //replace 跳转+携带state 参数
        // this.props.history.replace(`/home/message/detail`, { id, title })
    }
    pushShow = (id, title) => {
        //push 跳转+携带params 参数
        this.props.history.push(`/home/message/detail/${id}/${title}`)
        //push 跳转+携带search 参数
        // this.props.history.push(`/home/message/detail/?id=${id}&title=${title}`)
        //push 跳转+携带state 参数
        // this.props.history.push(`/home/message/detail`, { id, title })
    }
    back = () => {
        this.props.history.goBack()
    }
    forward = () => {
        this.props.history.goForward()
    }
    go = () => {
        this.props.history.go(2)
        // this.props.history.go(-2)
    }

    render() {
        const { messageArr } = this.state
        console.log(messageArr.length);
        return (
            <div>
                <ul>
                    {
                        messageArr.map((msgObj) => {
                            return (
                                <li key={msgObj.id}>
                                    {/* 向路由组件传递params 参数 
                                    模板字符串属于js 语法，需要{} 起来
                                    */}
                                    <Link to={`/home/message/detail/${msgObj.id}/${msgObj.title}`}>{msgObj.title}</Link>

                                    {/* 向路由组件传递search 参数  */}
                                    {/* <Link to={`/home/message/detail/?id=${msgObj.id}&title=${msgObj.title}`}>{msgObj.title}</Link> */}

                                    {/* 向路由组件传递state 参数  */}
                                    {/* <Link replace={true} to={{ pathname: `/home/message/detail/`, state: { id: msgObj.id, title: msgObj.title } }}>{msgObj.title}</Link> */}
                                    <button onClick={() => this.pushShow(msgObj.id, msgObj.title)}>push 查看</button>
                                    <button onClick={() => this.replaceShow(msgObj.id, msgObj.title)}>replace 查看</button>
                                </li>
                            )
                        })
                    }
                </ul>
                <hr />
                {/* 声明接受的params 参数 */}
                <Route path="/home/message/detail/:id/:title" component={Detail} />
                {/* search 参数无需声明接受 */}
                {/* <Route path="/home/message/detail" component={Detail} /> */}
                {/* state 参数无需声明接受 */}
                {/* <Route path="/home/message/detail" component={Detail} /> */}
                <button onClick={this.back}>回退</button>
                <button onClick={this.forward}>前进</button>
                <button onClick={this.go}>前进2个历史记录</button>
            </div>
        )
    }
}
