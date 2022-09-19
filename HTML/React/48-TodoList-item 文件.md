**item 下index.jsx 文件**

```jsx
import React, { Component } from 'react'
import './index.css'

export default class Item extends Component {
    //标识鼠标移入,移出
    state = { mouse: false }
    //鼠标移入移出的回调
    handleMouse = (flag) => {
        return () => {
            console.log(flag);
            this.setState({ mouse: flag })
        }
    }

    //勾选,取消勾选的回调函数
    handleCheck = (id) => {
        return (event) => {
            console.log(id, event.target.checked);
            this.props.updateTodo(id, event.target.checked)

        }
    }

    // 删除todo 按钮
    handleDelete = (id) => {
        console.log("通知App 删除", id);
        //window.confirm('确定删除吗?')   直接confirm('确定删除吗?'),会报错
        if (window.confirm('确定删除吗?')) {
            this.props.deleteTodo(id)
        }


    }
    render() {
        const { ...todo } = this.props
        //defaultChecked  开始是根据传来的数据选中,后面可以点击取消选中,
        //checked   根据传来的数据选中,因为数据传来的是选中状态,因此取消不了选择,数据写死了
        return (
            <li style={{ backgroundColor: this.state.mouse ? "#ddd" : 'white' }} onMouseEnter={this.handleMouse(true)} onMouseLeave={this.handleMouse(false)}>
                <label htmlFor="">
                    <input type="checkbox" checked={todo.done} onChange={this.handleCheck(todo.id)} />
                    <span>{todo.name}</span>
                </label>
                <button onClick={() => this.handleDelete(todo.id)} className=" bth-danger" style={{ display: this.state.mouse ? 'inline-block' : 'none' }}>删除</button>
            </li >

        )
    }
}

```

**item 下index.css 文件**

```css
li {
    position: relative;
    border: 1px solid #999;
}

.bth-danger {
    position: absolute;
    right: 0;
    bottom: 1px;
    background-color: red;
    color: aliceblue;
    outline: none;
    border: none;
}
```

