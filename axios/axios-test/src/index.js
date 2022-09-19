import axios from 'axios'
// axios.get('https://httpbin.org',{params:{id:1}}).then(res=>{console.log(res);})  //请求id:1 的数据
// axios.get('https://httpbin.org').then(res=>{
//     console.log(res)
//     })
// axios.post('https://httpbin.org').then(res=>{
//     console.log(res)
//     })

// axios({
//   url:'http://jsonplaceholder.typicode.com/',
//   // 专门针对get 请求的参数拼接
//   params:{
//     // params 参数 type page,拼接到url 后面
//     type:'pop',
//     page:1
//   }
// }).then(res=>{
//   console.log(res);
// })


// axios.all([
// axios.get('https://httpbin.org'),
// axios.get('http://jsonplaceholder.typicode.com/'),


// ]).then(res=>{
//     console.log(res); //上面只要有一个地址错误,都对跳到err
// }).catch(err=>{
//     console.log(err);
// })

// 参数分开处理
axios.all([
axios.get('https://httpbin.org'),
axios.get('http://jsonplaceholder.typicode.com/'),


]).then(
    axios.spread((res1,res2)=>{
        console.log(res1);
        console.log(res2);  //上面只要有一个地址错误,都对跳到err
    })
).catch(err=>{
    console.log(err);
})