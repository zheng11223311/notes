**React UI 组件库**

**1.流行的开源React UI 组件库**

1.material-ui（国外）

官网：

```
http：//www.material-ui.com/#/
```

github:

```
https://github.com/callemall/material-ui
```

2.ant-design（国内蚂蚁金服）

官网：

```
https：//ant.design/index-cn
```

github:

```
https://github.com/ant-design/ant-design
```

**安装:**

```
npm install antd
```

**示例**

App.js 文件

```js
// 引入第三方库组件
import { Button } from 'antd';
// 引入第三方库组件样式
import 'antd/dist/antd.css'
// 引入使用图标的库（子库）
import {WechatOutlined,WeiboOutlined} from '@ant-design/icons'
import { DatePicker } from 'antd';


function App() {
  function onChange(date, dateString) {
  console.log(date, dateString);
}
  return (
    <div className="App">
      <Button type="primary">Primary Button</Button>
      <WechatOutlined/>
      <WeiboOutlined/>
      <DatePicker onChange={onChange} />
    </div>
  );
}

export default App;
```

