import React, { Component } from 'react'
import './index.css'

export default class Footer extends Component {
    //全选checked 的回调
    handleCheckAll = (e) => {
        this.props.checkedAllTodo(e.target.checked)
    }
    //清除所有已经完成的回调
    handleCheckAllDone = () => {
        this.props.clearAllDone()
    }
    render() {
        const { todos } = this.props
        //已完成的个数
        const doneCount = todos.reduce((pre, todo) => { return pre + (todo.done ? 1 : 0) }, 0)
        //总数
        const total = todos.length
        return (
            <div className="todo-footer">
                <label htmlFor="">
                    <input type="checkbox" onChange={this.handleCheckAll} checked={doneCount === total && total != 0 ? true : false} />
                </label>
                <span>
                    <span>已完成{doneCount}</span> / 全部{total}
                </span>
                <button onClick={this.handleCheckAllDone} className="btn btn-danger">清除已完成任务</button>
            </div>
        )
    }
}
