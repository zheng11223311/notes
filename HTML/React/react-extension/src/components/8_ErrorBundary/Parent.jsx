import React, { Component } from 'react'
import Child from './Child'

export default class Parent extends Component {
    state = { hasError: '' }

    //当parent 子组件出现报错，会触发getDerivedStateFromError 调用，并携带错误信息
    //错误边界只会在生产环境下，有用
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
