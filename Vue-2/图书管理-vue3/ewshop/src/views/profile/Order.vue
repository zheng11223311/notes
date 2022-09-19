<template >
    <div>
        <nav-bar>
            <template v-slot:left></template>
            <template v-slot:default>
               订单列表
            </template>
            <template v-slot:right></template>
        </nav-bar>
        <van-tabs  style="margin-top:45px" @click="onChangeTab">
        <van-tab title="全部" ></van-tab>
        <van-tab title="待付款" ></van-tab>
        <van-tab title="已支付" ></van-tab>
        <van-tab title="发货" ></van-tab>
        <van-tab title="交易完成" ></van-tab>
        <van-tab title="过期" ></van-tab>
        </van-tabs>
        <div class="content">
            <van-pull-refresh
            class="fresh"
                v-model="isLoading"
                success-text="刷新成功"
                @refresh="onRefresh"
                >
                <van-list
                    v-model:loading="loading"
                    :finished="finished"
                    finished-text="没有更多了"
                    @load="onLoad"
                    >
                <div @click="goTo(item.id)" class="order-item-box"  v-for="(item,index) in list" :key="index">
                    <div class="order-item-header">
                        <span>订单号:{{item.order_no}}<br/>创建时间:{{item.created_at}} </span>
                    </div>
                    <van-card
                    v-for="(sub) in item.orderDetails.data" :key="sub.id"
                    :num="sub.num"
                    :price="sub.goods.price+'.00'"
                    :desc="sub.goods.description"
                    :title="sub.goods.title"
                    lazy-load
                    :thumb="sub.goods.cover_url"
                    />
                </div>
                </van-list>
            </van-pull-refresh>
        </div>
    </div>
</template>
<script>
import NavBar from 'components/common/navbar/NavBar'
import { Toast } from 'vant';
import { useRoute, useRouter } from "vue-router";
import { useStore } from "vuex";

import {getOrderList } from "network/order";
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
           loading:false,
           finished:false,
           isLoading:false,
           list:[],
           page:1,
           totalPage:1,
           status:0,
           

        })
        onMounted(()=>{
            onRefresh()
        })
        // push 组件
        const onRefresh=()=>{
            if(state.finished==true){
                state.isLoading=false
                return
            }
           
            state.isLoading=true
            //list 请求完全部数据
            state.finished=false
             //请求中不再再次打开 list请求
            state.loading=true
            onLoad()
        }
        //list 组件
        const onLoad=()=>{
           
            getOrderList({page:state.page,status:state.status,include:'orderDetails.goods'}).then(res=>{
                // console.log(res.data);
                // console.log(state.list);
                state.list=state.list.concat(res.data)
                console.log(state.list);
                if(state.page<state.totalPage){
                    state.page+=1
                }
                
                state.totalPage=res.meta.pagination.total_pages
                if(state.page>=state.totalPage){
                     //list 请求完全部数据
                    state.finished=true
                }
                 //请求中不再再次打开 list请求
                state.loading=false
                // 下拉完成
                state.isLoading=false
                
            })
        }

        const onChangeTab=(name)=>{
            console.log(name);
            state.status=name
              //清空数据
            state.list=[]
            state.page=1
             state.finished=false
             state.isLoading=false
            onRefresh()
            console.log(state.list);
        }

        //到订单详情
        const goTo=(id)=>{
            router.push({path:'/orderdetail',query:{id}})
        }
        return{
            ...toRefs(state),
            onRefresh,
            onLoad,
            onChangeTab,
            goTo

        }
    }
}
</script>
<style lang="scss" scoped>
.order-item-header{
    margin-top: 20px;
    padding-left: 10px;
    text-align: left;
    color: #999;
}
.content{
    margin-bottom: 50px;
}
.fresh{
}
</style>