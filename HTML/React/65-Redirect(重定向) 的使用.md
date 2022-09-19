```jsx
import {Route,Switch,Redirect} from 'react-router-dom'

<Switch>
<Route exact="true" path="/about" component={About}/>
<Route exact="true" path="/home" component={Home}/>
<Redirect to='/About'/>		//重定向到About
</Switch>
```

