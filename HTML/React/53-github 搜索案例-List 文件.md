**List 文件夹下的 index.jsx 文件**

```jsx
import React, { Component } from 'react'

export default class List extends Component {
    render() {
        const { users, isFirst, isLoading, err } = this.props
        // err.message
        //请求错误时,传入的是err.message,而不是一个err 对象,不然整个屏幕都是报错信息
        return (
            <div className="row">
                {
                    isFirst ? <h2>欢迎使用,输入关键字,随后点击搜索</h2 > :
                        isLoading ? <h2>Loading.....</h2 > :
                            err ? <h2 style={{ color: 'red' }}>{err.message}</h2 > :
                                this.props.users.map((userObj) => {
                                    return (
                                        <div key={userObj.id} className="card">
                                            <a rel="noreferrer" href={userObj.html_url} target="_blank" className="">
                                                <img src={userObj.avatar_url} style={{ width: "100px" }} alt="" />
                                            </a>
                                            <p className="card-text">{userObj.login}</p>
                                        </div>
                                    )
                                })
                }

            </div>
        )
    }
}

```

