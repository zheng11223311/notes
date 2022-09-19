import React, { Component } from 'react'

export default class Demo extends Component {
    state = { count: 0 }
    add = () => {
        // //获取原来的count 值
        // const { count } = this.state
        // //更新状态(异步更新)
        // this.setState({ count: count + 1 }, () => {
        //     console.log(this.state);    //获取改变后的值
        // })
        // console.log(this.state); //异步获取原来还没有改变的值

        this.setState((state, props) => {
            // state, props 可选
            //函数式可以不用获取原来的state 里面的值
            console.log(state, props);
            return { count: state.count + 1 }
        }, () => {

        })
    }
    render() {
        return (
            <div>
                <h1>当前求和为：{this.state.count}</h1>
                <button onClick={this.add}>点我加1</button>
            </div>
        )
    }
}
