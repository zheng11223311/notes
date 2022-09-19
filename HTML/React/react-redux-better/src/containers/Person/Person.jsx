import React, { Component } from 'react'
// 安装随机数库 npm i nanoid
import { nanoid } from 'nanoid'
import { connect } from 'react-redux'
import { addPerson } from '../../redux/actions/person'

class Person extends Component {
    addPerson = () => {
        const name = this.nameNode.value
        const age = this.ageNode.value
        // console.log(name, age);
        const personObj = { id: nanoid(), name, age }
        this.props.addPerson(personObj)
        console.log(personObj);
        this.nameNode.value = ''
        this.ageNode.value = ''
    }
    render() {
        return (
            <div>
                <h1>我是Person 组件,上方组件求和为:{this.props.count}</h1>
                <input ref={c => this.nameNode = c} type="text" id="" placeholder='输入名字' />
                <input ref={c => this.ageNode = c} type="text" id="" placeholder='输入年龄' />
                <button onClick={this.addPerson}>添加</button>
                <ul>
                    {
                        this.props.personArr.map((p) => {
                            return <li key={p.id}>{p.name}--{p.age}</li>

                        })
                    }
                </ul>
            </div>
        )
    }
}

export default connect(
    state => ({
        personArr: state.persons,
        count: state.count
    }),  //映射状态
    { addPerson }
)(Person)