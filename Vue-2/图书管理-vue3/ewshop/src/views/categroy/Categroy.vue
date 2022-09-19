<template>
  <div class="">
     <nav-bar>
      <template v-slot:left></template>
      <template v-slot:default>
        商品分类
      </template>
      <template v-slot:right></template>
    </nav-bar>
    <div id="mainbox">
      <div class="ordertab">
        <van-tabs :active="active1" @click-tab="onClickTab">
          <van-tab title="销量排序"></van-tab>
          <van-tab title="价格排序"></van-tab>
          <van-tab title="评论排序"></van-tab>
        </van-tabs>
      </div>
         <van-sidebar class="leftmenu" v-model="active">
          <van-collapse v-model="activeName" accordion>
            <van-collapse-item v-for="(item) in categories" :key="item.id"
            :title="item.name" :name="item.name">
                <van-sidebar-item 
                v-for="(item1) in item.children"
                :key="item1.id"
                 :title="item1.name" 
                 @click="getGoods(item1.id)"
                 />
            </van-collapse-item>
          </van-collapse>
        </van-sidebar>
      <div class="goodslist">
        <div class="content">
           <van-card
           @click="itemClick(item.id)"
           style="text-align: left;"
           v-for="item in showGoods"
           :key="item.id"
              :num="item.comments_count"
              :tag="item.comments_count>=0?'流行':'不流行'"
              :price="item.price"
              :desc="item.updated_at"
              :title="item.title"
              :thumb="item.cover_url"
              :lazy-load="true"
            />
        </div>
      </div>
    </div>
     <back-top @bTop='bTop'  v-show="isShowBackTop"></back-top>
  </div>
</template>

<script>
import NavBar from 'components/common/navbar/NavBar'
import BackTop from "components/common/backtop/BackTop.vue";

import { ref,reactive,onMounted,computed,watchEffect,nextTick } from "vue";
import BScroll from "better-scroll";
import {useRouter} from "vue-router";

import {getCategory,getCategoryGoods  } from "network/category";
export default {
  name: 'Categroy',
  components:{
    NavBar,
    BScroll,
    BackTop
  },
  setup(props) {
    const router=useRouter()
    let active=ref(0)
    let categories=ref([])
    let activeName=ref(1)
    let active1=ref(1)
    let bscroll=reactive({})
    let isShowBackTop=ref(false)

    //当前的排序条件
    let currentOrder=ref('sales')
    // 当前的分类id
    let currentCid=ref(0)
    // 数据模型
    const   goods=reactive({
      sales:{page:1,list:[]},
      price:{page:1,list:[]},
      comments_count:{page:1,list:[]},
    })

    const showGoods=computed(()=>{
      return goods[currentOrder.value].list
    })

    const init=()=>{
      getCategoryGoods('sales',currentCid.value).then(res=>{
        // console.log(res);
        goods.sales.list=res.goods.data
      }).catch(err=>{
        console.log(err);
      })
      getCategoryGoods('price',currentCid.value).then(res=>{
        // console.log(res);
        goods.price.list=res.goods.data
      }).catch(err=>{
        console.log(err);
      })
      getCategoryGoods('comments_count',currentCid.value).then(res=>{
        // console.log(res);
        goods.comments_count.list=res.goods.data
      }).catch(err=>{
        console.log(err);
      })
    }

    onMounted(()=>{
      getCategory().then(res=>{
        console.log(res);
        categories.value=res.categories
      }).catch(err=>{
        console.log(err);
      })
       getCategoryGoods('sales',currentCid.value).then(res=>{
        // console.log(res);
        goods.sales.list=res.goods.data
      }).catch(err=>{
        console.log(err);
      })

        //创建BetterScroll 对象
  bscroll=new BScroll(document.querySelector('.goodslist'),{
    probeType:3,  //0,1,2,3, 3 只要在运行就触发scroll 事件
    click:true,   //是否允许点击
    pullUpLoad:true,  //上拉加载更多,默认是false
    mouseWheel:false,
  })

  //触发滚动事件
  bscroll.on('scroll',(e)=>{
     isShowBackTop.value=-e.y>300
  })
//监听任何一个变量有变化
  watchEffect(()=>{
    nextTick(()=>{
      //从新计算高度
      bscroll &&bscroll.refresh()
    })
  })

  //下拉加载数据,触发pullingUp
  bscroll.on('pullingUp',()=>{
    console.log('上拉加载更多');

  const page=goods[currentOrder.value].page+1
  getCategoryGoods(currentOrder.value,currentCid.value,page).then(res=>{
    goods[currentOrder.value].list.push(...res.goods.data)
    goods[currentOrder.value].page+=1
  })

  //完成上拉,等新数据请求完成,要将新数据展示出来
  bscroll.finishPullUp();
  //从新计算高度
   bscroll.refresh();

  })
    })

    //排序选项卡
     const onClickTab = (index) =>{
        // console.log(index.name)
         let orders=['sales','price','comments_count']
        // console.log(orders[index.name]);
        currentOrder.value=orders[index.name]

        getCategoryGoods(currentOrder.value,currentCid.value).then(res=>{
        // console.log(res);
        goods[currentOrder.value].list=res.goods.data
        bscroll&&bscroll.refresh();
      }).catch(err=>{
        console.log(err);
      })

        console.log('当前分类id:'+currentCid.value);
        console.log('当前排序:'+currentOrder.value);
        
     };

    //通过分类得到商品
    const getGoods=(cid)=>{
      currentCid.value=cid
      console.log('当前分类id:'+currentCid.value);
        console.log('当前排序:'+currentOrder.value);

       init()
    }

  const bTop=()=>{
    bscroll.scrollTo(0,0,500)
  }
  

    return{
      active,
      categories,
      activeName,
      active1,
      onClickTab,
      getGoods,
      currentCid,
      showGoods,
      bscroll,
      isShowBackTop,
      bTop,
      itemClick:(id)=>{
        router.push({path:'/detail',query:{id}})
      }
    }
  }


}
</script>
<style lang="scss" scoped>
#mainbox{
  // margin-top: 45px;
  display: flex;
  .ordertab{
    flex: 1;
    float: right;
    height: 50px;
    z-index: 9;
    position: fixed;
    top: 45px;
    right: 0;
    left: 130px;

  }
  .leftmenu{
    position: fixed;
    top: 95px;
    left: 0;
    width: 130px;

  }
  .goodslist{
    flex: 1;
    height: 100vh;
    position: absolute;
    // top: 100px;
    left: 130px;
    right: 0;
    padding: 10px;
    // ::v-deep 可以修改scoped 外的属性,即其他组件的属性
    //或者单独再写一个style
    ::v-deep .van-card__content{
      color: chocolate;
    }
    ::v-deep .van-card__thumb img{
      width: 66px;
    }
    .content{
      padding-top: 100px;
      padding-bottom: 50px;
    }
  }
}
</style>
