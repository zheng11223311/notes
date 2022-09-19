import React, { Component } from 'react'
//导入nanoid 库
import { nanoid } from 'nanoid'

import './index.css'

// console.log(nanoid());
// console.log(nanoid());
// console.log(nanoid());
export default class Header extends Component {


    handleKeyUp = (e) => {
        //判断是否是回车按键
        if (e.keyCode !== 13) return
        //添加的todo 名字不能为空
        if (e.target.value.trim() === '') {
            alert('输入不能为空')
            return
        }
        console.log(e.target.value, e.keyCode);
        //准备一个todo 对象
        //uuid 库随机生成唯一id,nanood 也是随机生成唯一id,只不过安装包比uuid 小
        //npm i nanoid
        const todoObj = { id: nanoid(), name: e.target.value, done: false }
        //接收父传来的函数,传递回去数据
        this.props.a(todoObj)
        //清空输入
        e.target.value = ''
    }
    render() {
        return (
            <div className="todo-header">
                <input onKeyUp={this.handleKeyUp} type="text" placeholder="请输入你的任务名称,按回车键确认" />
            </div>
        )
    }
}
