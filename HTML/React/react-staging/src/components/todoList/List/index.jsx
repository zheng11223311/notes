import React, { Component } from 'react'
import Item from '../item'
import './index.css'
// 导入限制props 库
// 安装库 npm i prop-types
import PropTypes from 'prop-types'



export default class List extends Component {

    //对接收的props 进行类型,必要性进行限制
    static propTypes = {
        todos: PropTypes.array.isRequired,
        updateTodo: PropTypes.func.isRequired
    }

    render() {
        const { todos, updateTodo, deleteTodo } = this.props
        return (
            <ul className="todo-main">
                {
                    todos.map((item, index) => {
                        return <Item key={item.id} {...item} deleteTodo={deleteTodo} updateTodo={updateTodo} />
                    })
                }
            </ul>
        )
    }
}
