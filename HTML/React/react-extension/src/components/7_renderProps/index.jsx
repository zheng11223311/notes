import React, { Component } from 'react'

export default class Parent extends Component {
    render() {
        return (
            <div>
                <h1>我是Parent 组件</h1>
                {/* <A >
                        <B />
                    </A>
                 */}
                {/*相比于上面的组件，这个组件可以传递数据 */}
                <A render1={(name) => <B name={name} />}> </A >
            </div>
        )
    }
}

class A extends Component {
    state = { name: 'tom' }
    render() {
        console.log(this.props);
        const { name } = this.state
        return (
            <div>
                <h1>我是A 组件</h1>
                {/* 
                使用   <A >
                            <B />
                        </A>
                展示B 组件 */}
                {/* {this.props.children} */}

                {/* 相当于Vue 的插槽，留着位置 */}
                {this.props.render1(name)}

            </div>
        )
    }
}

class B extends Component {
    render() {
        return (
            <div>
                <h1>我是B 组件,{this.props.name}</h1>
            </div>
        )
    }
}