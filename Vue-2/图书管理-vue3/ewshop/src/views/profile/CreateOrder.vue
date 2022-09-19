<template >
    <div>
        <nav-bar>
            <template v-slot:left></template>
            <template v-slot:default>
               订单预览
            </template>
            <template v-slot:right></template>
        </nav-bar>
        <div class="order">
            <van-contact-card type="edit"
             :tel="address.phone"
              :name="address.name" 
              @click="onEdit" />
              <div v-if="address"
              
              style="text-align:left;padding-left:10px;
              border-bottom:2px solid #ccc;font-size=12px;padding-bottom:10px;padding-top:10px">
                  地址:{{address.province}} {{address.city}} {{address.county}} {{address.address}}
              </div>
        </div>
        <div class="cart-box" style="margin-top:0px;height:calc(100vh - 145px);">
      <div class="cart-body" style="height:calc(100vh - 145px); overflow:scroll">
        <van-card
            v-for="item in cartList"
            :key="item.id"
            :num="item.num"
            :price="item.goods.price"
            :title="item.goods.title"
            lazy-load
            :thumb="item.goods.cover_url"
            />
      </div>
      <div class="cart-bottom" style="text-align:left;">
       <van-submit-bar 
        style="margin-bottom:55px" 
        :price="allPrice*100"
         button-text="生成订单" 
         @submit="onSubmit">
        </van-submit-bar>
      </div>
    </div>
        <van-popup
        v-model:show="show"
        closeable
        @close='close'
        position="bottom"
        :style="{ height: '40%' }"
        style="padding-top:30px"
        >
                <van-grid :border="false" :column-num="2">
                    <van-grid-item>
                        支付宝二维码<br/>
                        <van-image width="150" height="150" :src="aliyun" />
                    </van-grid-item>
                    <van-grid-item>
                        微信二维码<br/>
                        <van-image width="150" height="150" :src="aliyun" />
                    </van-grid-item>
                    </van-grid>
        </van-popup>
        
    </div>
</template>
<script>
import NavBar from 'components/common/navbar/NavBar'
import { Toast } from 'vant';
import { useRoute, useRouter } from "vue-router";
import { useStore } from "vuex";

import { getOrderPreview,createOrder,payOrder,payOrderStatus } from "network/order";
import { onMounted,toRefs,reactive, computed, ref } from 'vue';

export default {
    name:'CreateOrder',
    components:{
        NavBar,

    },
    setup(props) {
        const router=useRouter()
        const route=useRoute()
        const store=useStore()

        const state=reactive({
            cartList:[],
            address:{},
            show:false,
            orderNo:'',
            aliyun:'',
            weChat:'',
        })
        let allPrice=ref(0)
        
        const init=()=>{
            allPrice.value=0
            Toast.loading({message:'加载中...',forbidClick:true,duration:5000})
            getOrderPreview().then(res=>{
                
                // console.log(res);
                let address=res.address.filter(n=>n.is_default=='1')
                if(address.length==0){
                    state.address={
                        phone:'还没有设置默认地址,请选择或填写地址信息',
                        name:''
                    }
                }else{
                    state.address=address[0]
                }
                state.cartList=res.carts
                state.cartList.forEach((item)=>{
                    allPrice.value+=parseFloat(item.goods.price)*parseInt(item.num)
                })
                
                Toast.clear()
            })
        }

        onMounted(()=>{
            init()
        })

        const onEdit=()=>{
            router.push({path:'/myaddress'})
        }
        const onSubmit=()=>{
            if(state.cartList==0){
                Toast.fail({message:'请选择商品后下单',forbidClick:true})
                setTimeout(() => {
                    router.go(-1)
                }, 500);
                return
            } 
            Toast.loading({message:'生成订单中...',forbidClick:true,duration:50000})
            const params={
                address_id:state.address.id
            }
            createOrder(params).then(res=>{
                //自动删除购物车数据
                Toast.success('成功生成订单')
                // console.log(res);
                //购物车数据同步
                store.dispatch('updateCart')
                state.show=true
                //订单id
                state.orderNo=res.id
                payOrder(state.orderNo,{type:'aliyun'}).then(res=>{
                    // console.log(res);
                    state.aliyun="https://api.shop.eduwork.cn"+res.qr_code_url
                })
                // payOrder(state.orderNo,{type:'weChat'}).then(res=>{
                //     console.log(res);
                // })
                //轮询查看
                const timer=setInterval(() => {
                    payOrderStatus(state.orderNo).then(res=>{
                        if(res=='2'){
                            //支付成功
                            clearInterval(timer)
                            state.showPay=false
                             router.push({path:'/orderdetail',query:{id:state.orderNo}})
                        }
                    })
                }, 2000);
            })
        }
        const close=()=>{
            // console.log(111);
             router.push({path:'/orderdetail',query:{id:state.orderNo}})

        }
        return{
            ...toRefs(state),
            onEdit,
            allPrice,
            onSubmit,
            close,
           
        }
    }
    
}
</script>
<style lang="scss" scoped>
.order{
    margin-top: 45px;
}
.pay{
    width: 70%;
    height: 50px;
    line-height: 50px;
    background-color: rgb(34, 226, 162);
    margin:20px auto 10px;
}
.pay:nth-child(1){
     background-color: rgb(7, 165, 42);
    margin:60px auto 0px;
}
</style>