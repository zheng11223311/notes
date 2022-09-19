**导入NavLink** 

```jsx
import { NavLink, BrowserRouter,Route} from 'react-router-dom'
```

**使用NavLink 替换Link**

```jsx
<NavLink activeClassName="demo" className="list-group-item" to="/about">About</NavLink>
                                <Link className="list-group-item" to="/home">Home</Link>
```

activeClassName="demo"   

修改当前活跃路由增加的class,  默认增加的class 为active

