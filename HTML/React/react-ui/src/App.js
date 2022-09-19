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
