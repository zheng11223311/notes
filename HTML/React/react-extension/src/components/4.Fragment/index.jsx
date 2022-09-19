import React, { Component, Fragment } from 'react'

export default class Demo extends Component {
    render() {
        return (
            // <Fragment key={1}>
            //     相当于一个div 壳，但是在编译的时候不会保留这个壳,
            //     而div 壳会保留div 标签，在页面上渲染出div 标签
            // 只接受key ，因为其他属性会随着Fragment 标签的丢失而丢掉
            // </Fragment>
            <>
                空标签不允许设置属性值
            </>
        )
    }
}
