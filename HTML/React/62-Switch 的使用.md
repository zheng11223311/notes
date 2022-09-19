当出现多个路由的路径相同时,匹配时的组件不一样的情况时,路由会连续向下匹配,将多个相同路径而组件不同的组件都会被匹配到并将其一同显示

**没有Switch 时**

```jsx
<Route path="/about" component={About}/>
<Route path="/home" component={Home}/>
<Route path="/home" component={Test}/>
<Route path="/about" component={Test}/>
```

这里的组件都会被匹配到并在相应的路径下一起显示

**使用Swtch**

```jsx
import {Route,Switch} from 'react-router-dom'

 <Switch>
<Route path="/about" component={About}/>
<Route path="/home" component={Home}/>
<Route path="/home" component={Test}/>
<Route path="/about" component={Test}/>
                             </Switch>
```

相同路径的路由只会匹配到第一个出现的路由

