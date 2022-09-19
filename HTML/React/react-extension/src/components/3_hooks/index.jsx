import React, { Component } from 'react'
import ReactDOM from 'react-dom'

// 类式组件
/* class Demo extends Component {
    state = { count: 0 }
    myRef = React.createRef()
    add = () => {
        this.setState(state => ({ count: state.count + 1 }))
    }

    componentDidMount() {
        this.timer = setInterval(() => {
            this.setState(state => ({ count: state.count + 1 }))
        }, 1000)
    }

    unmount = () => {
        ReactDOM.unmountComponentAtNode(document.getElementById('root'))
    }


    componentWillUnmount() {
        clearInterval(this.timer)
    }

    show = () => {
        alert(this.myRef.current.value)
    }
    render() {
        return (
            <div>
                <input type="text" ref={this.myRef} />
                <h2>当前求和为：{this.state.count}</h2>
                <button onClick={this.add}>点我加1</button>
                <button onClick={this.unmount}>卸载组件</button>
                <button onClick={this.show}>点击提示数据</button>
            </div>
        )
    }
} */


// 函数式组件
function Demo() {
    const myRef = React.useRef()

    const [count, setCount] = React.useState(0)
    const [name, setName] = React.useState('tom')
    //只有一个参数时，表示检测所有状态,相当于componentDidUpdate
    // 当底层状态改变时，会调用useEffect 第一个参数回调，如果后面
    // 加了第二个参数[]，则第一个参数只会回调一次，相当于 componentDidMount
    //[count] 表示检测count 状态的改变
    React.useEffect(() => {
        // console.log('@');
    }, [count, name])

    React.useEffect(() => {
        let timer = setInterval(() => {
            setCount(count => count + 1)
        }, 1000)
        return () => {
            // return 返回值相当于componentWillUnmount
            console.log('#');
            clearInterval(timer)
        }
    }, [])

    function add() {
        // setCount(count + 1) //第一种写法
        setCount(count => count + 1)
    }
    function change() {
        setName(name => 'jack')
    }
    function unmount() {
        ReactDOM.unmountComponentAtNode(document.getElementById('root'))
    }
    function show() {
        alert(myRef.current.value)
    }

    return (
        <div>
            <input type="text" ref={myRef} />
            <h2>当前求和为：{count}，{name}</h2>
            <button onClick={add}>点我加1</button>
            <button onClick={change}>点我改名</button>
            <button onClick={unmount}>卸载组件</button>
            <button onClick={show}>点击提示数据</button>
        </div>
    )
}

export default Demo