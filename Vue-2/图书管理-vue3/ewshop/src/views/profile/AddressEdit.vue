<template >
    <div>
        <nav-bar>
            <template v-slot:left></template>
            <template v-slot:default>
                {{title}}
            </template>
            <template v-slot:right></template>
        </nav-bar>
        <div class="edit">
            <van-address-edit
            :area-list="areaList"
            show-postal
            show-delete
            :address-info="addressInfo"
            show-set-default
            show-search-result
            :search-result="searchResult"
            :area-columns-placeholder="['请选择', '请选择', '请选择']"
            @save="onSave"
            @delete="onDelete"
            @change-detail="onChangeDetail"
            />
        </div>
    </div>
</template>
<script>
import { areaList } from '@vant/area-data';
import NavBar from 'components/common/navbar/NavBar'
import { Toast } from 'vant';
import { useRoute, useRouter } from "vue-router";
import { useStore } from "vuex";

import { addAddress,EditAddress,DeleteAddress,getAddressDetail } from "network/address";
import { onMounted,toRefs,reactive, computed } from 'vue';

export default {
    name:'AddressEdit',
    components:{
        NavBar,

    },
    setup(props) {
        const router=useRouter()
        const route=useRoute()
        const store=useStore()

        const state=reactive({
            areaList,
            searchResult:[],
            addressInfo:{},
            type:'add',
            addressId:'',
            title:'',
        })

        // 由值获取键,获取区域id
       const getKeyByValue=function(list, province,city,county){
           //省市区的前两位
           let province_name1=null
           let city_name1=null
           let county_name1=null
            for (const province_list1  in list) {
                // console.log(province_list1);
                for (const province_name in list[province_list1]) {
                    // 省
                    if(list['province_list'][province_name]==province){
                    //    console.log("省:"+province_name);
                        province_name1=province_name.slice(0,2)
                    //    console.log("省:"+province_name1);
                    }
                    // 市
                    if(list['city_list'][province_name]==city){
                        // console.log("市:"+province_name);
                        city_name1=province_name.slice(0,2)==province_name1&&province_name1!=null?province_name.slice(0,2):null
                        // console.log("市:"+city_name1);
                          
                        }
                    //区
                    if(list['county_list'][province_name]==county){
                    // console.log("区:"+province_name);
                    county_name1=province_name.slice(0,2)==province_name1&&province_name1!=null?province_name.slice(0,2):null
                    // console.log("区:"+county_name1);
                     if(county_name1!=null){
                        return province_name
                    }
                    }
                   
                }
            }
        }
// console.log(getKeyByValue(state.areaList,'天津市','天津市','河东区'));
    // console.log(state.areaList);
       onMounted(()=>{
            //接收参数
        const {type,addressId}=route.query
        state.type=type
        state.addressId=addressId
        if(type=='edit'){
            Toast.loading({message:'加载中...',duration:50000,forbidClick: true})
            getAddressDetail(addressId).then(res=>{
                // console.log(res);
                state.addressInfo={
                    name:res.name,
                    tel:res.phone,
                    province:res.province,
                    city:res.city,
                    county:res.county,
                    addressDetail:res.address,
                    isDefault:!!res.is_default,
                    areaCode:getKeyByValue(state.areaList,res.province,res.city,res.county)
                }
                Toast.clear()
            })
        }
           
       })
         state.title=computed(()=>{
            // console.log(state.type);
            return state.type=='add' ? '新增地址':'编辑地址'
        })
        const onSave=(content)=>{
            // console.log(content);
            const params={
                name:content.name,
                phone:content.tel,
                province:content.province,
                city:content.city,
                county:content.county,
                address:content.addressDetail,
                is_default:content.isDefault?1:0,
            }
            if(state.type=='edit'){
                 EditAddress(state.addressId,params).then(res=>{
                    Toast.success('编辑成功')
                    // console.log(res);
                    setTimeout(() => {
                        // router.back()    //会缓存
                        router.go(-1)
                        //清除数据
                    }, 500);
                })

            }else if(state.type=='add'){
                 addAddress(params).then(res=>{
                    Toast.success('保存成功')
                    // console.log(res);
                    setTimeout(() => {
                        router.go(-1)
                        //清除数据
                    }, 500);
                })
            }
           
        }
        const onDelete=()=>{
           Toast.loading({message:'删除中...',duration:50000,forbidClick: true})
            DeleteAddress(state.addressId).then(res=>{
                setTimeout(() => {
                    Toast.clear()
                    router.go(-1)
                }, 500);

                // console.log(res);
            })
        }
        const onChangeDetail=()=>{

        }
        
        return{
            ...toRefs(state),
            onSave,
            onDelete,
            onChangeDetail,
        }
    }
    
}
</script>
<style lang="scss" scoped>
.edit{
    margin-top: 45px;
}
</style>