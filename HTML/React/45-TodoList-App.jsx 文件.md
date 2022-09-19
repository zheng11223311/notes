**App.jsx 文件**

```jsx
import './App.css';
import Header from './components/todoList/header'
import List from './components/todoList/List'
import Footer from './components/todoList/footer'
import { Component } from 'react';


class App extends Component {
  //状态在哪里,操作状态的方法就在哪里
  // 初始化状态
  state = {
    todas: [
      { id: '001', name: '吃饭', done: true },
      { id: '002', name: '睡觉', done: true },
      { id: '003', name: '打代码', done: false },
      { id: '004', name: '逛街', done: true },
    ]
  }
  // 子传父  header==>App
  a = (data) => {
    // console.log("App", data);
    // 获取原todos
    const { todas } = this.state
    //追加一个todo
    const newTodos = [data, ...todas]
    //更新状态
    this.setState({ todas: newTodos })
  }

  // 获取孙组件item 传来的数据, item==>list===>App
  updateTodo = (id, done) => {
    //获取状态中的todos
    const { todas } = this.state
    //匹配处理数据
    const newTodos = todas.map((todoObj) => {
      if (todoObj.id === id) return { ...todoObj, done: done }
      else return todoObj
    })
    this.setState({
      todas: newTodos
    })
  }

  //用于删除一个todo 对象
  deleteTodo = (id) => {
    //获取原来的todos
    const { todas } = this.state
    //删除指定id 的对象
    const newTodos = todas.filter((todoObj) => {
      return todoObj.id !== id
    })
    //更新状态
    this.setState({ todas: newTodos })
  }

  // 全选
  checkedAllTodo = (done) => {
    //获取原来的todos
    const { todas } = this.state
    // 加工数据
    const newTodos = todas.map((todoObj) => {
      return { ...todoObj, done }
    })
    // 更新状态
    this.setState({ todas: newTodos })
  }

  //clearAllDone 用于所有已完成的
  clearAllDone = () => {
    //获取原来的todos
    const { todas } = this.state
    //过滤数据
    const newTodos = todas.filter((todoObj) => {
      return !todoObj.done
    })
    //更新状态
    console.log(newTodos);
    this.setState({ todas: newTodos })
  }
  render() {
    const { todas } = this.state
    return (
      <div className="todo-container">
        <div className="todo-wrap">
          <Header a={this.a} />
          <List deleteTodo={this.deleteTodo} todos={todas} updateTodo={this.updateTodo} />
          <Footer clearAllDone={this.clearAllDone} todos={todas} checkedAllTodo={this.checkedAllTodo} />
        </div>
      </div>
    );
  }

}

export default App;

```

**App.css 文件**

```css
.todo-container {
  width: 500px;
  margin: auto;
}

.todo-wrap {
  width: 400px;
  box-sizing: border-box;
  padding-left: 40px;
  padding-bottom: 10px;
  padding-top: 10px;
  border: 1px solid #999;
}
```

