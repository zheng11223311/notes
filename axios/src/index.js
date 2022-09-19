import axios from "axios";
// axios.get(url:'https://httpbin.org',{params:{id:1}}).then(res=>{console.log(res);})  //请求id:1 的数据
axios.get(url:'https://httpbin.org').then(res=>{console.log(res);})