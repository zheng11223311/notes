import request from './request.js'


//添加购物车
export function addCart(data){
        return request({
            url:'',
            method:'post',
            data
        })
}

//修改购物车
export function checkCart(data){
        return request({
            url:'',
            method:'patch',
            data
        })
}

//删除购物车
export function deleteCart(data){
        return request({
            url:'',
            method:'delete',
            data
        })
}



// 获取购物车列表
export function getCartItem(data){
        return request({
            url:'',
            method:'get',
            data
        })
}


