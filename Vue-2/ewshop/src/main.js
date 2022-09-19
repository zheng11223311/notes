import { createApp } from 'vue'
import App from './App.vue'
import './registerServiceWorker'
import router from './router'
import store from './store'
import 'vant/lib/index.css'
import { AddressEdit,AddressList,Cell, CellGroup,SwipeCell ,SubmitBar,Checkbox, CheckboxGroup,Form,Tag,Button,Image as VanImage,Card ,Tab, Tabs,Swipe, SwipeItem ,Lazyload,Badge,Sidebar, SidebarItem,Collapse, CollapseItem } from 'vant';

createApp(App).use(store).use(Lazyload ,{
    loading:require('./assets/images/1.jpg')  //缺省时显示默认图片
}).use(router).use(Badge).use(Swipe).use(Sidebar).use(SidebarItem)
.use(Collapse).use(CollapseItem).use(Tab).use(Tabs).use(Card).use(VanImage)
.use(Tag).use(Button).use(Form).use(Checkbox).use(CheckboxGroup).use(SubmitBar)
.use(SwipeCell).use(Cell).use(CellGroup).use(AddressEdit).use(AddressList)
.use(SwipeItem).mount('#app')
