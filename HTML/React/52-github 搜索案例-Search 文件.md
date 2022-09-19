**Search 文件夹下的index.jsx 文件**

```jsx
import axios from 'axios';
import React, { Component } from 'react'

export default class Search extends Component {
    search = () => {
        //获取用户的输入
        // 连续解构赋值,取出keyWordElement 在取出keyWordElement 里面的value
        //keyWordElement  打印会报错
        const { keyWordElement: { value } } = this

        //发送请求前通知App 更新状态
        this.props.updateAppState({ isFirst: false, isLoading: true })
        console.log(value);
        //发送网络请求
        axios.get(`https://api.github.com/search/users?q=${value}`).then(
            res => {
                // console.log('成功了', res.data); 
                this.props.updateAppState({ isLoading: false, users: res.data.items })
            },
            error => {
                console.log('成功了', error);
                this.props.updateAppState({ isLoading: false, err: error })
            }

        )
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

```

