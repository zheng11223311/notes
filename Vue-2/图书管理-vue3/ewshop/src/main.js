import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'

import { Swipe, SwipeItem,Lazyload,Badge,Sidebar, 
    SidebarItem,Collapse, CollapseItem,Tab, Tabs,Card,
    Image as VanImage,Tag,Button,Form, Field, CellGroup,
    SwipeCell,SubmitBar,Stepper,Icon,AddressEdit,AddressList,
    ContactCard,Popup,Grid, GridItem,PullRefresh,List         } from 'vant';

createApp(App)
.use(Swipe).use(SwipeItem).use(Lazyload,{
    //懒加载时默认图片
    loading:require('./assets/images/1.jpg')
} )
.use(Badge).use(Sidebar).use(SidebarItem )
.use(Collapse).use(CollapseItem)
.use(Tab).use(Tabs).use(Card ).use(VanImage)
.use(Button).use(Tag).use(SwipeCell)
.use(Form).use(Field).use(CellGroup).use(SubmitBar)
.use(Stepper ).use(Icon).use(AddressEdit ).use(AddressList)
.use(ContactCard).use(Popup).use(Grid).use(GridItem)
.use(PullRefresh).use(List)
.use(store).use(router).mount('#app')
