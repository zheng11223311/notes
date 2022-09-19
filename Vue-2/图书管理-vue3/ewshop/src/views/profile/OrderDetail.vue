<template >
    <div>
        <nav-bar>
            <template v-slot:left></template>
            <template v-slot:default>
               订单支付详情
            </template>
            <template v-slot:right></template>
        </nav-bar>
        <div class="orderdetail" >
            <div><span>订单状态: </span>{{statusString}}</div>
            <div><span>订单编号: </span>{{detail.order_no}}</div>
            <div><span>下单时间: </span>{{detail.created_at}}</div>
        </div>
        <div class="orderpay">
            <div class="" v-if="detail.status==1" @click="showPayFn">去支付</div>
            <div class="" v-if="detail.status==2" @click="handleConfirmOrder">确认订单</div>
        </div>
        <div class="ordernum">
            <p><span>商品金额:</span>￥{{total+'.00'}}</p>
            <p><span>配送方式: </span>普通快递</p>
        </div>
        <van-card
        style="text-align:left"
        v-for="item in detail.orderDetails.data"
        :key="item.id"
        :num="item.num"
        :price="item.goods.price+'.00'"
        :desc="item.goods.description"
        :title="item.goods.title"
        lazy-loading
        :thumb="item.goods.cover_url"
        />

        <van-popup
        v-model:show="showPay"
        closeable
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

import { getOrderDetail,payOrder,payOrderStatus,confirmOrder} from "network/order";
import { onMounted,toRefs,reactive, computed, ref } from 'vue';

export default {
    name:'Order',
    components:{
        NavBar,

    },
    setup(props) {
        const router=useRouter()
        const route=useRoute()
        const store=useStore()

         const state=reactive({
             orderNo:'',      //订单id
             detail:{
                 orderDetails:{
                     data:[]
                 },
                 status:0,
             },
             showPay:false,
             aliyun:'',
            weChat:'',
        })

        const init=()=>{
            const {id}=route.query
            state.orderNo=id

            getOrderDetail(id).then(res=>{
                console.log(res);
                state.detail=res
                 Toast.clear()
            })

        }
        onMounted(()=>{
            Toast.loading({message:'加载中...',forbidClick:true,duration:50000})
            init()
           
        })
        const statusString=computed(()=>{
            //1 下单 2 支付 3 发货 4 收货 5 过期
            let status=['','已下单','已支付','等待发货','确认收货','已过期']
            return status[state.detail.status] 
        })

        const total=computed(()=>{
            // 一系列变化的值都通过计算属性来完成
            let sum =0
            state.detail.orderDetails.data.forEach((item)=>{
                sum+=item.num*item.goods.price
            })
            return sum
        })
        
        const showPayFn=()=>{
            state.showPay=true
             payOrder(state.orderNo,{type:'aliyun'}).then(res=>{
                    state.aliyun="https://api.shop.eduwork.cn"+res.qr_code_url
                })
            
             //轮询查看
                const timer=setInterval(() => {
                    payOrderStatus(state.orderNo).then(res=>{
                        if(res=='2'){
                            //支付成功
                            clearInterval(timer)
                             router.push({path:'/orderdetail',query:{id:state.orderNo}})
                        }
                    })
                }, 2000);
        }

        const handleConfirmOrder=()=>{
                confirmOrder(state.orderNo).then(res=>{
                    console.log(res);
                    if(res.status_code==204){
                        Toast.success({message:"确认成功"})
                        init()
                    }
                })
        }
        return{
            ...toRefs(state),
            statusString,
            total,
            showPayFn,
            handleConfirmOrder,

        }
    }
}
</script>
<style lang="scss" scoped>
.orderdetail{
    margin-top: 45px;
    width: 100%;
    height: 80px;
    // background-color: aquamarine;
    padding-top: 10px;
    padding-left: 20px;
    text-align: left;
    font-size: 14px;
    div{
        width: 100%;
        height: 20px;
        // background-color: burlywood;
        span{
            color: #999;
            
        }
    }
}
.orderpay{
    width: 100%;
    height: 110px;
    // background-color: gold;
    border: 1px solid transparent;
    div{
         width: 90%;
         height: 40px;
         line-height: 40px;
         background-color: rgba(0, 162, 255, 0.788);
         margin:10px auto;
         font-size: 14px;
         color: oldlace;
    }
    div:nth-child(2){
        background-color: #fff;
        color: black;
        border: 1px solid #ccc;
    }
}
.ordernum{
    width: 100%;
    height: 80px;
    margin-top: 20px;
    // background-color: aquamarine;
    p{
        font-size: 14px;
        padding-left: 20px;
        padding-top: 10px;
        text-align: left;
        span{
             color: #999;
        }
    }
}
</style>