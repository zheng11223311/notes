import {request} from './request.js'
export function getHome(){
   
    return request({
        // url:'',
        
    })
}
//  console.log(getHome())

export function getHomeGoods(type,page){
    return request({
        url:'/home/data',
        params:{
            type:'',
            page:''
        }
    })
}