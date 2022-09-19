<template>
  <div id="home">
      <nav-bar>
        <template v-slot:left></template>
        <template v-slot:default>
          图书兄弟
        </template>
        <template v-slot:right></template>
      </nav-bar>
      <tab-control v-show="isFiexd" @tabClick="tabClick" :titles="['畅销','新书','精选']"></tab-control> 
    <div class="wrapper">
          <div class="content">
            <div ref="banref">
              <home-swiper  :banners="banners"></home-swiper>
                <recommend-view :recommends="recommends"></recommend-view>
            </div>
                <tab-control @tabClick="tabClick" :titles="['畅销','新书','精选']"></tab-control>
                <goods-list :goods="showGoods"></goods-list>
            </div>
    </div>
    <!-- 组件接收点击等自带事件需要使用到native  @click.native="" -->
    <back-top @bTop='bTop'  v-show="isShowBackTop"></back-top>
  </div>
</template>

<script>
import NavBar from 'components/common/navbar/NavBar'
import BackTop from "components/common/backtop/BackTop.vue";

import TabControl from 'components/content/tabControl/TabControl'
import GoodsList from 'components/content/goods/GoodsList'

import HomeSwiper from "views/home/ChildComps/HomeSwiper.vue";
import RecommendView from 'views/home/ChildComps/RecommendView'

import {getHomeAllData,getHomeGoods} from 'network/home'

import {ref,reactive,onMounted,computed,watchEffect,nextTick} from 'vue'
import BScroll from "better-scroll";
export default {
  name: 'Home',
  components:{
    NavBar,
    RecommendView,
    TabControl,
    GoodsList,
    BackTop,
    HomeSwiper,
  },
  setup(props) {
    let isShowBackTop=ref(false)
    let isFiexd=ref(false)
    let banref=ref(null)


  const recommends=ref([]);
  // const demo=reactive({});

  // 商品列表数据模型
  const goods=reactive({
    sales:{page:1,list:[]},
    new:{page:1,list:[]},
    recommend:{page:1,list:[]},
  })

  let currentType=ref('sales')

  const showGoods=computed(()=>{
    return goods[currentType.value].list
  })
   let bscroll=reactive({})

  let banners=ref([])
  onMounted(()=>{
    getHomeAllData().then(res=>{
      recommends.value=res.goods.data
      banners.value=res.slides
    }).catch(err=>{
      console.log(err);
    })
    getHomeGoods('sales').then(res=>{
     goods.sales.list=res.goods.data
    }).catch(err=>{
      console.log(err);
    })
    getHomeGoods('recommend').then(res=>{
      goods.recommend.list=res.goods.data
    }).catch(err=>{
      console.log(err);
    })
    getHomeGoods('new').then(res=>{
      goods.new.list=res.goods.data

    }).catch(err=>{
      console.log(err);
    })

  //创建BetterScroll 对象
  bscroll=new BScroll(document.querySelector('.wrapper'),{
    probeType:3,  //0,1,2,3, 3 只要在运行就触发scroll 事件
    click:true,   //是否允许点击
    pullUpLoad:true,  //上拉加载更多,默认是false
    mouseWheel:false,
  })

  //触发滚动事件
  bscroll.on('scroll',(e)=>{
    // console.log(banref.value.offsetHeight);
    // console.log(e.y);
      isShowBackTop.value=isFiexd.value=-e.y>banref.value.offsetHeight
  })

  //下拉加载数据,触发pullingUp
  bscroll.on('pullingUp',()=>{
    console.log('上拉加载更多');
   console.log( document.querySelector('.content').clientHeight);

  const page=goods[currentType.value].page+1
  getHomeGoods(currentType.value,page).then(res=>{
    goods[currentType.value].list.push(...res.goods.data)
    goods[currentType.value].page+=1
  })

  //完成上拉,等新数据请求完成,要将新数据展示出来
  bscroll.finishPullUp();
  //从新计算高度
   bscroll.refresh();
  })

  
  })

  const tabClick=(index)=>{
    let types=['sales','new','recommend']
    currentType.value=types[index]
    nextTick(()=>{
      //从新计算高度
      bscroll &&bscroll.refresh()
    })
  }

  //监听任何一个变量有变化
  watchEffect(()=>{
    nextTick(()=>{
      //从新计算高度
      bscroll &&bscroll.refresh()
    })
  })

  const bTop=()=>{
    //  xy 0 0  500ms
    bscroll.scrollTo(0,0,500)
  }

  return {
      recommends,
      tabClick,
      goods,
      showGoods,
      isFiexd,
      banref,
      isShowBackTop,
      bTop,
      banners,
}
}



}
</script>
<style lang="scss" scoped>
.banners img{
  width: 100%;
  height: auto;
  margin-top: 45px;
}

#home{
  height: 100vh;
  position: relative;
}
.wrapper{
  position: absolute;
  top: 45px;
  bottom: 50px;
  left: 0;
  right: 0;
  overflow: scroll;
}
.content{

}
</style>
