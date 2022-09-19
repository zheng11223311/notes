<template >
    <div>
        <nav-bar>
            <template v-slot:left></template>
            <template v-slot:default>
                地址管理
            </template>
            <template v-slot:right></template>
        </nav-bar>
        <div class="empty">
            <div class="isempty"  v-if="!list.length">你还没有可选地址,赶快去添加一个吧~</div>
                <van-address-list
                v-model="chosenAddressId"
                :list="list"
                :disabled-list="disabledList"
                disabled-text="以下地址超出配送范围"
                default-tag-text="默认"
                @add="onAdd"
                @edit="onEdit"
                />
        </div>
    </div>
</template>
<script>
import NavBar from 'components/common/navbar/NavBar'
import { Toast } from 'vant';
import { useRouter } from "vue-router";
import { useStore } from "vuex";

import { getAddressList } from "network/address";
import { onMounted,toRefs,reactive,ref } from 'vue';

export default {
    name:'Address',
    components:{
        NavBar,
    },
    setup(props) {
        const router=useRouter()

        const state=reactive({
            chosenAddressId:1,
            //不可用地址
            disabledList:[],
            list:[]
        })
        onMounted(()=>{
            Toast.loading({message:'加载中...',duration:10000})
            getAddressList().then(res=>{
                Toast.clear()
                // console.log(res);
                if(res.data.length==0){
                    state.list=[]
                    return
                }else{
                    state.list=res.data.map((item)=>{
                        return{
                            id:item.id,
                            name:item.name,
                            tel:item.phone,
                            address:`${item.province} ${item.city} ${item.county} ${item.address}`,
                            isDefault:!!item.is_default

                        }
                    })
                }
            })
        })

        const onAdd=()=>{
            router.push({path:'/addressedit',query:{type:'add'}})
        }
        const onEdit=(item)=>{
            router.push({path:'/addressedit',query:{type:'edit',addressId:item.id}})
        }
        return{
            ...toRefs(state),
            onAdd,
            onEdit
        }
    }
    
}
</script>
<style lang="scss" scoped>
.empty{
    margin-bottom: 50px;
    margin-top: 45px;
   div.isempty{
        padding-top: 230px;
   }
    
}
::v-deep .van-address-list__bottom{
        margin-bottom: 55px;
    }
</style>