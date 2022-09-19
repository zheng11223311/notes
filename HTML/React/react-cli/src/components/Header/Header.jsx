import React, { Component } from 'react'
import { withRouter } from 'react-router-dom'

class Header extends Component {
    back = () => {
        // 只有路由组件才有history，一般组件没有history 属性
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
        return (
            <div>
                toubu
                <button onClick={this.back}>回退</button>
                <button onClick={this.forward}>前进</button>
                <button onClick={this.go}>前进2个历史记录</button>
            </div>
        )
    }
}
export default withRouter(Header)
//暴露的是将一般组件 Header 加工后的返回结果，加工后的Header 具有路由的三个属性
//widthRouter 的返回值是一个新组件