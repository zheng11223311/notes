<template>
  <div class="">
     <nav-bar>
      <template v-slot:left></template>
      <template v-slot:default>
        购物车 ({{ $store.state.cartCount }})
      </template>
      <template v-slot:right></template>
    </nav-bar>
    <div class="cart-box" style="margin-top:45px;height:calc(100vh - 145px);">
      <div class="cart-body" style="height:calc(100vh - 145px); overflow:scroll">
        <van-swipe-cell 
        v-for="(item, index) in list" :key="index"
        class="shop">
        <!-- :checked="item.goods.is_checked" -->
          <input type="checkbox" name="checkbox"
          :price="item.goods.price"
          :num="item.num"
          :name1="item.id"
          :checked="item.is_checked"
           @change="onCheckbox(item.goods.price,item.num,item.is_checked,index)" >
            <van-card
            style="text-align:left;padding-left:50px"
              :price="item.goods.price+'.00'"
              :desc="item.goods.description"
              :title="item.goods.title"
              class="goods-card"
              :thumb="item.goods.cover_url"
            />
            <van-stepper class="stop"
             v-model="item.num"
              min="1" 
             :max="item.goods.stock" 
             :name="item.id"
             @change="onChange"
             />
            <template #right>
              <van-button 
              square text="删除" 
              type="danger"
              @click="deleteGood(item.id)"
               class="delete-button" />
            </template>
          </van-swipe-cell>
          <div class="empty" v-if="list.length==0" style="margin-top:195px" >
            <div>购物车空空如也~</div>
            <div><van-button round type="primary" @click="goTo">点击前往选购</van-button></div>
          </div>
      </div>
      <div class="cart-bottom" style="text-align:left;">
        <van-submit-bar 
        style="margin-bottom:55px" 
        :price="allPrice*100"
         button-text="结算" 
         @submit="onSubmit">
            <input type="checkbox"
            ref='aaa'
            @click="onchecked"
             name="checkbox1" >全选
          <template #tip  >
            你的收货地址不支持配送, <span @click="onClickLink">修改地址</span>
          </template>
        </van-submit-bar>
      </div>
    </div>
  </div>
</template>

<script>
import {ref,reactive,toRefs,onMounted,computed    } from "vue";
import { useRouter } from "vue-router";
import { useStore } from "vuex";

import { getCart,deleteCartItem,checkedCart,modifyCart } from "network/cart";

import NavBar from 'components/common/navbar/NavBar'
import { Toast } from 'vant';
export default {
  name: 'ShopCart',
  components:{
    NavBar,
  },
  setup(props) {
    const router=useRouter()
    const store=useStore()
    let aaa=ref(null)
     

    onMounted(()=>{
      init()
    })

    //数据模型,状态
    const state=reactive({
      list:[]
    })

    //初始化购物车数据
    let isAllChecked=false
     let allPrice=ref(0)
    const init=()=>{
     
      Toast.loading({duration: 3000,message:'加载中...',forbidClick:true})
      getCart('include=goods').then(res=>{
        // console.log(res);
        state.list=res.data
        state.result=res.data.filter((n)=>n.is_checked==1).map(item=>item.id)
        // console.log(state.result);
        isAllChecked=state.result.length==res.data.length?true:false
        aaa.value.checked=isAllChecked
         allPrice.value=0
        res.data.filter((n)=>n.is_checked==1).forEach((item)=>{
          allPrice.value+=(item.goods.price)*(item.num)
          // console.log(item.goods.price);
        })
        // console.log(state.list);
        // console.log(state.list.length===0);
        if(state.list.length===0){
          aaa.value.checked=false
        }
        Toast.clear()
      })

    }
    
    // 修改数量
    const onChange=(value,detail)=>{
      allPrice.value=0
      Toast.loading({duration: 1000,message:'修改中...',forbidClick:true})
      console.log(value,detail);
      modifyCart(detail.name,{num:value}).then(res=>{
        // console.log(res);
        //将在onMount 中的list 中的num 也要改变,后期计算属性
        //用到的时onMount 里面的num
        state.list.forEach((item,index)=>{
          if(item.id==detail.name){
            item.num=value
            if(item.is_checked==1){
                    state.list.filter((n)=>n.is_checked==1).forEach((item)=>{
                allPrice.value+=(item.goods.price)*(item.num)
              })
            }
          }
        })
        Toast.clear()
      })
    }

    //前往购物
    const goTo=()=>{
      router.push({path:'/'})
    }

    //选中复选框改变
    const onCheckbox=(price,num,ischecked,index)=>{
      allPrice.value=0
      // console.log(index);
      state.list[index].is_checked=!state.list[index].is_checked
      state.result=state.list.filter((n)=>n.is_checked==1).map(item=>item.id)
      console.log(state.result);
      state.list.filter((n)=>n.is_checked==1).forEach((item)=>{
          allPrice.value+=(item.goods.price)*(item.num)
        })
        isAllChecked=state.result.length==state.list.length?true:false
        aaa.value.checked=isAllChecked

        checkedCart({cart_ids:state.result}).then(res=>{
          // console.log(res);
          // console.log({cart_ids:state.result});
        })
    }
  
  //全选
  const onchecked=()=>{
    allPrice.value=0
    isAllChecked=!isAllChecked
      state.list.forEach((item)=>{
          item.is_checked=isAllChecked
        })
        state.result=state.list.filter((n)=>n.is_checked==1).map(item=>item.id)
         state.list.filter((n)=>n.is_checked==1).forEach((item)=>{
          allPrice.value+=(item.goods.price)*(item.num)
        })
        checkedCart({cart_ids:state.result}).then(res=>{
          console.log(res);
          console.log({cart_ids:state.result});
        })
  }
  
  //提交订单
  const onSubmit=()=>{
    if(state.result.length==0){
      Toast.fail("请选择商品进行结算")
      return
    }else{
        router.push({path:'/createOrder'})
    }
  }  

  //删除订单
  const deleteGood=(id)=>{
    deleteCartItem(id).then(res=>{
      init() //从新初始化
      //改变vuex 数量的状态
      store.dispatch('updateCart')
      //更新订单合计
       
       console.log(state.list);
    })
  }


    return{
      ...toRefs(state),
      goTo,
      onChange,
      onCheckbox,
      onchecked,
      allPrice,
      aaa,
      onSubmit,
      deleteGood
    }
  }


}
</script>
<style lang="scss" scoped>
 .goods-card {
    background-color: #fff;
  }

  .delete-button {
    height: 100%;
  }
  .shop{
    position: relative;
  }
  input[name="checkbox"]{
    width: 20px;
    height: 20px;
    position: absolute;
    top: 40px;
    left: 10px;
    background-color: chocolate;
    z-index: 100;
  }
  input[name="checkbox1"]{
    float: left;
    margin-right: 10px;
    width: 15px;
    height: 15px;
  }
  .stop{
    position: absolute;
    right: 10px;
    bottom: 0;
  }

</style>
