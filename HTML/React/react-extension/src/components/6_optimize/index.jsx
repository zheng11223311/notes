import React, { PureComponent } from 'react'
//  使用 PureComponent 替换 Component 就可以不用使用shouldComponentUpdate
export default class Person extends PureComponent {
    state = { car: '奔驰c63' }
    changeCar = () => {
        this.setState({ car: '迈赫巴' })
        // this.setState({})

        // 内存地址没有变化，不会触发setState
        // const obj = this.state
        // obj.car = '迈巴赫'
        // this.setState(obj)

    }
    //多个组件使用和多个属性要进行判断时过于繁琐
    // shouldComponentUpdate(nextProps, nextState) {
    //     console.log(nextProps, nextState);  //接下来要变化的目标props 和state
    //     console.log(this.props, this.state);    //目前的props 和state
    //     if (this.state.car == nextState.car) {
    //         return false
    //     } else {
    //         return true
    //     }

    // }
    render() {
        console.log('Parent---render');
        const { car } = this.state
        return (
            <div>
                <h1>我是Parent 组件</h1>
                <span>{car}</span><br />
                <button onClick={this.changeCar}>点我换车</button>
                <Children car={car} />
                {/* 父组件render 会带动子组件的render，即使子组件没有接受到任何参数
                ，没有任何的变化，也会被调用render，应为diff 不知道子组件是否被修改了，
                需要在调用一次render 查看
                */}
            </div>
        )
    }
}

class Children extends PureComponent {
    // shouldComponentUpdate(nextProps, nextState) {
    //     console.log(nextProps, nextState);  //接下来要变化的目标props 和state
    //     console.log(this.props, this.state);    //目前的props 和state
    //     if (this.props.car == nextProps.car) {
    //         return false
    //     } else {
    //         return true
    //     }

    // }
    render() {
        console.log('Children---render');
        return (
            <div>
                <h1>我是Children 组件</h1>
                <span>我接受到的车是：{this.props.car}</span>
            </div>
        )
    }
}
