安装less 和 less-loader 

使用之后导致项目无法运行起来

```
npm install less less-loader
```

config-overrides.js 文件

```js
//配置具体的修改规则
const {override,fixBabelImports,addLessLoader}=require('customize-cra')

//module.export=function override(config，env){
//	return config	
//}
module.exports=override(
	fixBabelImports('import',{      //按需引入import
        libraryName:'antd',     //需要按需引入的库
        libraryDirectory:'es',  //使用es 模块化规范
        style:true,        //
    }),
    addLessLoader({     //解析less
        lessOptions:{
            javascriptEnabled:true, //允许js 修改底层的less 文件
            modifyVars:{'@primary-color':'orange'}     //修改的变量
        }
        
    })
)
```

App.js 文件

```js
// 引入第三方库组件
import { Button } from 'antd';
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

