import request from './request.js'

//添加地址
export function addAddress(params){
    return request({
        url:'',
        method:'post',
        params
    })
}


//编辑地址
export function editAddress(id,params){
    return request({
        url:'',
        method:'put',     //接口时put,所以必须用put
        params
    })
}

//删除地址
export function deleteAddress(id){
    return request({
        url:'',
        method:'delete',
        params
    })
}

//获取地址列表
export function getAddressList(){
    return request({
        url:'',
        method:'get',
        params
    })
}

//地址详情
export function getAddressDetail(){
    return request({
        url:'',
        method:'get',
        params
    })
}