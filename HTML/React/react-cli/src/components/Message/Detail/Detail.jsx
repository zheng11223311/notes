import React, { Component } from 'react'
// 解决search 传递参数所携带的?和&，react 自带的库
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
        const { id, title } = this.props.match.params
        const findResult = DetailData.find((detailObj) => {
            return detailObj.id == id
        })

        // 接受search 参数
        // const { search } = this.props.location
        // const { id, title } = qs.parse(search.slice(1)) //去掉？
        // console.log(qs.parse(search.slice(1)));
        // const findResult = DetailData.find((detailObj) => {
        //     return detailObj.id == id
        // })

        // 接受state 参数
        // const { id, title } = this.props.location.state || {}
        // const findResult = DetailData.find((detailObj) => {
        //     return detailObj.id == id
        // }) || {}


        return (
            <ul>
                <li>ID：{id}</li>
                <li>TITLE:{title}</li>
                <li>CONTENT:{findResult.content}</li>
            </ul>
        )
    }
}
