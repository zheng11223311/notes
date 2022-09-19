//引入的Count 的容器组件
import Count from './containers/Count/Count'
//引入的Person 的容器组件
import Person from './containers/Person/Person'

function App() {
  return (
    <div className="App">
        <Count/>
        <hr/>
        <Person/>
    </div>
  );
}

export default App;


// import React, { Component } from 'react'
// import Count from './containers/Count/Count'
// import Person from './containers/Person/Person'

// export default class App extends Component {
//   render() {
//     return (
//       <div className="App">
//         <Count/>
//         <hr/>
//         <Person/>
//     </div>
//     )
//   }
// }