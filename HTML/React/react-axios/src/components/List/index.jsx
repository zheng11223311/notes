import React, { Component } from 'react'
import PubSub from 'pubsub-js'

export default class List extends Component {
    state = {    //初始化状态,users 初始化为数组
        users: [],    //users 初始化状态
        isFirst: true,  //是否为第一次打开
        isLoading: false, //标识是否处于加载中
        err: '',  //储存请求相关的错误信息
    }
    componentDidMount() {

        this.token = PubSub.subscribe('messageName', (msg, data) => {
            console.log('list 组件收到数据了', data)
            this.setState(data)
        })
    }
    // 组件卸载前
    componentWillUnmount() {
        // 取消订阅
        PubSub.unsubscribe(this.token)
    }
    render() {
        const { users, isFirst, isLoading, err } = this.state
        // err.message
        //请求错误时,传入的是err.message,而不是一个err 对象,不然整个屏幕都是报错信息
        return (
            <div className="row">
                {
                    isFirst ? <h2>欢迎使用,输入关键字,随后点击搜索</h2 > :
                        isLoading ? <h2>Loading.....</h2 > :
                            err ? <h2 style={{ color: 'red' }}>{err.message}</h2 > :
                                this.state.users.map((userObj) => {
                                    return (
                                        <div key={userObj.id} className="card">
                                            <a rel="noreferrer" href={userObj.html_url} target="_blank" className="">
                                                <img src={userObj.avatar_url} style={{ width: "100px" }} alt="" />
                                            </a>
                                            <p className="card-text">{userObj.login}</p>
                                        </div>
                                    )
                                })
                }

            </div>
        )
    }
}
