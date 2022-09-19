**3.state 参数(只有这个参数没有在url 地址栏显示)**

路由链接（携带参数）：

```jsx
<Link to={{ pathname: `/home/message/detail/`, state: { id: msgObj.id, title: msgObj.title } }}>{msgObj.title}</Link>
```

注册路由（无需声明，正常注册即可）：

```jsx
<Route path="/home/message" component={Detail} />
```

接受参数：

```jsx
const { state} = this.props.location
```

备注：刷新也可以保留住参数,但是清除历史记录就不会保留住参数,为undefined,其他传递的参数会保留

**示例**

二级路由Home 下的message 路由

```jsx
import React, { Component } from 'react'
import { Link, Route } from 'react-router-dom'
import Detail from './Detail/Detail'

export default class Message extends Component {
    state = {
        messageArr: [
            { id: '01', title: '消息1' },
            { id: '02', title: '消息2' },
            { id: '03', title: '消息3' },
        ]
    }
    render() {
        const { messageArr } = this.state
        console.log(messageArr.length);
        return (
            <div>
                <ul>
                    {
                        messageArr.map((msgObj) => {
                            return (
                                <li key={msgObj.id}>
                                    {/* 向路由组件传递params 参数 
                                    模板字符串属于js 语法，需要{} 起来
                                    */}
                                    {/* <Link to={`/home/message/detail/${msgObj.id}/${msgObj.title}`}>{msgObj.title}</Link> */}

                                    {/* 向路由组件传递search 参数  */}
                                    {/* <Link to={`/home/message/detail/?id=${msgObj.id}&title=${msgObj.title}`}>{msgObj.title}</Link> */}

                                    {/* 向路由组件传递state 参数  */}
                                    <Link to={{ pathname: `/home/message/detail/`, state: { id: msgObj.id, title: msgObj.title } }}>{msgObj.title}</Link>
                                </li>
                            )
                        })
                    }
                </ul>
                <hr />
                {/* 声明接受的params 参数 */}
                {/* <Route path="/home/message/detail/:id/:title" component={Detail} /> */}
                {/* search 参数无需声明接受 */}
                {/* <Route path="/home/message/detail" component={Detail} /> */}
                {/* state 参数无需声明接受 */}
                <Route path="/home/message/detail" component={Detail} />
            </div>
        )
    }
}

```

三级路由message 下的detail 路由（message  的子路由detail ）

```jsx
import React, { Component } from 'react'
// 解决search 传递参数所携带的？和&，react 自带的库
// import qs from 'querystring'

// let obj = { name: 'tom', age: 18 } //name=tom&age=18   key=value&key=value
// console.log(qs.stringify(obj)); //name=tom&age=18

// let str = 'name=tom&age=18'
// console.log(qs.parse(str)); //{name: "tom", age: "18"}
const DetailData = [
    { id: '01', content: '你好，中国' },
    { id: '02', content: '你好222，中国' },
    { id: '03', content: '你好3，中国' },
]
export default class Detail extends Component {

    render() {
        console.log(this.props);
        // 接受params 参数
        // const { id, title } = this.props.match.params
        // const findResult = DetailData.find((detailObj) => {
        //     return detailObj.id == id
        // })

        // 接受search 参数
        // const { search } = this.props.location
        // const { id, title } = qs.parse(search.slice(1)) //去掉？
        // console.log(qs.parse(search.slice(1)));
        // const findResult = DetailData.find((detailObj) => {
        //     return detailObj.id == id
        // })

        // 接受state 参数
        const { id, title } = this.props.location.state || {}
        const findResult = DetailData.find((detailObj) => {
            return detailObj.id == id
        }) || {}


        return (
            <ul>
                <li>ID：{id}</li>
                <li>TITLE:{title}</li>
                <li>CONTENT:{findResult.content}</li>
            </ul>
        )
    }
}
```

