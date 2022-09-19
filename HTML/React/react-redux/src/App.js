//引入容器组件
import Count from './containers/Count/Count'
//‘引入redux 的store
// import store from './redux/store'
function App() {
  return (
    <div className="App">
      {/* <Count store={store}/> */}
      <Count />
    </div> 
  );
}

export default App;
