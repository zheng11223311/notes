import axios from 'axios';
import PubSub from 'pubsub-js'
import React, { Component } from 'react'

export default class Search extends Component {
    search = () => {

        console.log('search 发布消息了');
        //获取用户的输入
        const { keyWordElement: { value } } = this

        //发送请求前通知List 更新状态
        PubSub.publish('messageName', { isFirst: false, isLoading: true })
        console.log(value);

        //使用axios 发送网络请求
        //     axios.get(`https://api.github.com/search/users?q=${value}`).then(
        //         res => {
        //             PubSub.publish('messageName', { isLoading: false, users: res.data.items })
        //         },
        //         error => {
        //             PubSub.publish('messageName', { isLoading: false, err: error })
        //         }

        //     )
        // 使用fecth 发送网络请求
        fetch(`https://api.github.com/search/users?q=${value}`).then(
            res => {
                //联系服务器成功了 但是没有数据,而且这里只是联系服务器,成不成功拿到数据
                //是一回事,这里只返回是否联系数据,联系数据失败也走res,方法

                console.log('联系服务器成功了');
                // console.log('联系服务器成功了', res.json());
                // 数据储存在原型链上的json(),json() 也是Promise 的格式
                return res.json()
            },
            error => {
                //断网情况下,联系服务器失败
                //如果err 没有一个return值,则默认为undefined,这一个then 只有res的 返回值
                //  则会返回给下一个res 的方法,而不是error 的方法
                console.log('联系服务器失败了', error);
                //因为断网联系不上服务器,就没有必要再传递下去,返回一个新的Promise 对象
                return new Promise(() => { })
            }

        ).then(res => {
            console.log('获取数据成功了', res);
        }, err => {
            console.log('获取数据失败了', err)
        })
        //也可以直接使用catch() 处理所有的err,不用每一步都写
        // 也可以使用async 异步的await 简化,try{}.catch(err){}  处理错误
    }

    render() {
        return (
            <section className="jumbotron">
                <h3 className="jumbotron-heading">搜索 Github 用户</h3>
                <div>
                    <input ref={c => this.keyWordElement = c} type="text" placeholder="搜索关键词点击搜索" />&nbsp;
                    <button onClick={this.search}>搜索</button>
                </div>
            </section>
        )
    }
}
