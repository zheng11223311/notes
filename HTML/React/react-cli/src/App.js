import './App.css';
import {Route,Switch,Redirect} from 'react-router-dom'
import Home from './components/Home'
import About from './components/About'
import MyNavLink from './components/MyNavLink/MyNavLink'
import Header from './components/Header/Header'

function App() {
  return (
    <div className="App">
         <div className='row'>
                    <div className="col-xs-offset-2 col-xs-8">
                        <div className="page-header">
                            <h2><Header/></h2>
                        </div>
                    </div>
                </div>
                <div className='row'>
                    <div className="col-xs-offset-2 col-xs-2">
                        <div className="list-group">
                            <MyNavLink to="/about" title="About"></MyNavLink>
                            <MyNavLink to="/about" title="About">About</MyNavLink>
                            <MyNavLink to="/home/" children="Home"/>
                        </div>
                    </div>
                </div>
                <div className=" col-xs-6">
                    <div className="panel">
                        <div className="panel-body">
                            {/* 注册路由 */}
                         
                            <Switch>
                            <Route  path="/about" component={About}/>
                            <Route  path="/home" component={Home}/>
                            <Redirect to='/About'/>
                             </Switch>
                        </div>
                    </div>
                </div>
    </div>
  );
}

export default App;
