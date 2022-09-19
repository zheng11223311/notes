import {request} from './request'

//创建订单
export function createOrder(params){
return request({
    url:'/api/orders',
    method:'post',
    params
})
}
//获取订单预览
export function getOrderPreview(){
return request({
    url:'/api/orders/preview',
})
}
//订单支付,获取二维码,支付类型
export function payOrder(order,params){
return request({
    url:'/api/orders/'+order+'/pay',
    params
  
})
}
//订单状态
export function payOrderStatus(order){
return request({
    url:'/api/orders/'+order+'/status',
    method:'get',
})
}
//获取订单列表{page:1,status:1,include:'goods,user,orderDetails.goods'}
export function getOrderList(params){
return request({
    url:'/api/orders',
    method:'get',
    params
})
}
//订单详情
export function getOrderDetail(order){
return request({
    url:'/api/orders/'+order,
    method:'get',
    params:{
        include:'user,orderDetails.goods'
    }
})
}
//确认订单
export function confirmOrder(order){
return request({
    url:'/api/orders/'+order+'/confirm',
    method:'patch',
})
}
//订单物流信息
export function viewExpress(order){
return request({
    url:'/api/orders/'+order+'/express',
    
})
}