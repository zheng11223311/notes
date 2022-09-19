import React, { Component } from 'react'

import {
    increment,
    decrement,
    incrementAsync
} from '../../redux/actions/count'

//引入connect 用于连接UI组件库与redux
import { connect } from 'react-redux'
//定义UI 组件
class Count extends Component {
    // 加法
    increment = () => {
        const { value } = this.selectNumber
        this.props.increment(value * 1)

    }
    //减法
    decrement = () => {
        const { value } = this.selectNumber
        this.props.decrement(value * 1)

    }
    // 奇数再加
    incrementIfOdd = () => {
        const { value } = this.selectNumber
        if (this.props.count % 2 !== 0) {
            this.props.increment(value * 1)
        }

    }
    incrementAsync = () => {
        const { value } = this.selectNumber
        this.props.incrementAsync(value * 1, 500)
    }
    render() {
        console.log('UI 组件接收到的props 是', this.props);
        return (
            <div>
                <h1>当前求和为：{this.props.count},下方组件总人数为:{this.props.personCount}</h1>
                <select ref={c => this.selectNumber = c} name="" id="">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                </select>
                {/* alt 键多选 */}
                <button onClick={this.increment}>+</button>
                <button onClick={this.decrement}>-</button>
                <button onClick={this.incrementIfOdd}>当前和为奇数再加</button>
                <button onClick={this.incrementAsync}>异步加</button>
            </div>
        )
    }
}

//创建并暴露一个容器组件
export default connect(
    // state 为合并后的一个对象
    state => {
        console.log('容器接受到store 传来的state', state);
        // return { count: state }
        return { count: state.count, personCount: state.persons.length }
    },
    {
        increment,
        decrement,
        incrementAsync
    }

)(Count)
