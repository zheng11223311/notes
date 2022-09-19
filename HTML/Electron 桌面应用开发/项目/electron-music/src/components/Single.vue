<template>
  <div id="single">
    <!-- 不能使用小写的 table 组件,因为table 也是一个原生的元素标签 -->
    <!-- <table></table> -->
    <my-table :currentData="searchMusicList.abslist" @sendMusicId="sendMusicId"></my-table>

  </div>
</template>

<script >
import MyTable from "./common/MyTable.vue";
import { ref, getCurrentInstance, reactive, watch,defineEmits ,defineProps } from "vue";
import { useRoute, useRouter } from "vue-router";

//  ref 和reactive 不能直接赋值,需要赋值变量的属性才能响应式
// 直接赋值整个对象不会被响应,这里修改对象中属性value(或对象中的其他属性) 来触发响应
// 或 变量.属性=值 也可以触发响应式
// 使对象变成响应式
// reactive 不能直接解构,这样会导致失去响应
//  需要使用toRefs 保持响应, {a,c}=toRefs(b)
// 且解构后的也需要使用 变量.value 来响应式获取
// vue3 为了提升效率,将没有修改的属性 不会被响应
// reactive 对字符,数字,布尔值(ref 用的) 不会进行响应,比如求 length 时,不会响应
// 将abslist 的length 设置为[] 可以被响应, 设置为 0 不会被响应
// let searchMusicList = reactive({
//     abslist:{
//         length:[]
//     },
// });

export default {
  components:{
  MyTable
},
  setup(props,context){
    // 粗略搜索数据
let searchMusicList = reactive({
  abslist: [],
});
// 初始化路由
const route = useRoute();
const router = useRouter();
// 方法二  使用全局挂载属性
const {
  proxy: {
    $http: { searchMusic },
  },
} = getCurrentInstance();
// console.log(proxy.$http);
// console.log($http);
// console.log(searchMusic('平凡之路'));

// const emit=defineEmits(['sendMusicId'])
// // const emit=defineEmits({
// //     "sendMusicId":null
// // })
// const props=defineProps({
//    'about':{
//        type:String
//    }
// })
// console.log(props);

//根据名称搜索歌曲
function requestMusic() {
  let key = route.query.keyValue;
//   console.log(route.query.keyValue);
  searchMusic(key).then((res) => {
    // console.log(res);
    searchMusicList.abslist = JSON.parse(res.data.replace(/'/g, '"')).abslist;
    // console.log(searchMusicList);
  });
}
requestMusic();
// 子组件发送的消息,音乐id,mv id
function sendMusicId(musicId,mvId,playMv){
  // console.log(playMv);
    // console.log(musicId,mvId);
     // 发射事件到父组件
    //  emit('sendMusicId',{musicId,mvId})
    context.emit('sendMusicId',musicId,mvId,playMv)
}
// 监听器,监听 route.query.keyValue 值的变化
watch(
  (old,new1) => route.query.keyValue,
  () => {
    //通过一个函数返回要监听的属性
    // console.log("书名改变了");
    requestMusic()
  }
);

  return{
    sendMusicId,
    searchMusicList
  }
  }

}
</script>

<style lang="scss" scoped>
</style>
