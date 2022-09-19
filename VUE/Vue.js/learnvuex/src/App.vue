<template>
  <div id="app">
    <h1>----store 的 moduleA 内容-------------------------------</h1>
    <!-- moudles 里面的数据都被放到state 里面
    f12 查看vue 可以看到 state 里面有模块a -->
    <h2>{{ $store.state.a.name }}</h2>
    <button @click="updateName">修改名字</button>
    <h2>{{ $store.getters.fullName }}</h2>
    <h2>{{ $store.getters.fullName2 }}</h2>
    <h2>{{ $store.getters.fullName3 }}</h2>
    <button @click="asyncUpdateName">异步修改名字</button>

    <h1>----App 内容-------------------------------</h1>
    <h1>{{ message }}</h1>
    <h2>{{ $store.state.counter }}</h2>
    <!-- 方法一 直接修改,但修改不会被记录,不便于观察 -->
    <!-- <button @click="$store.state.counter++">+</button>
    <button @click="$store.state.counter--">-</button> -->
    <!-- 方法2  通过nutations 记录,在vue 调试,可以看见修改的记录-->
    <button @click="addition">+</button>
    <button @click="subtraction">-</button>
    <button @click="addCount(5)">+5</button>
    <button @click="addCount(10)">+10</button>
    <button @click="addStudent">添加学生</button>
    <h2>{{ $store.getters.powerCounter }}</h2>
    <h2>{{ more20stu() }}</h2>
    <h2>{{ $store.getters.more20stu }}</h2>
    <h2>满足条件的学生人数:{{ $store.getters.more20stuLength }}</h2>
    <h2>年龄大于age 的学生人数:{{ $store.getters.moreAgestu(1) }}</h2>
    <h1>
      ----store 的 info 对象内容是否是响应式的-------------------------------
    </h1>
    <h2>{{ $store.state.info }}</h2>
    <button @click="updataInfo">修改信息</button>
    <!-- :counter="counter"  是子组件props 接收的 -->
    <hello-vuex :counter="counter"></hello-vuex>
    <router-view />
  </div>
</template>

<script>
import helloVuex from "./components/helloVuex.vue";
import { INCREMENT } from "./store/mutations-types";
// import * as types from "./store/mutations-types"
export default {
  name: "App",
  data() {
    return {
      message: "我是App 组件",
      counter: 0,
    };
  },
  components: {
    helloVuex,
  },
  methods: {
    addition() {
      // 调用提交commit
      // ("INCREMENT") 都行
      this.$store.commit(INCREMENT);
    },
    subtraction() {
      this.$store.commit("decrement");
    },
    more20stu() {
      // filter 过滤 筛选函数  s 是一个对象
      return this.$store.state.students.filter((s) => {
        return s.age >= 20;
      });
    },
    addCount(count) {
      //payload 负载 表示commit 可以多带一个参数 比如count,就是参数payload
      //1.普通的提交方式
      // this.$store.commit("incrementCount", count);

      // 2.特殊的提交风格
      this.$store.commit({
        type: "incrementCount",
        count: count, //ES6 语法 直接count
        age: 18,
      });
    },
    addStudent() {
      const stu = { id: 114, name: "8why", age: 100 };
      this.$store.commit("addStudent", stu);
    },
    updataInfo() {
      // this.$store.commit("updataInfo");
      //异步执行时用下面的代码
      // this.$store.dispatch("aUpdataInfo", "我是payload");
      // 传递函数
      // this.$store.dispatch("aUpdataInfo", () => {
      //   console.log("异步完成");
      // });
      // 传递对象,在传递函数的基础上,可以多传递多个参数
      // this.$store.dispatch("aUpdataInfo", {
      //   message: "我是携带信息",
      //   success: function () {
      //     console.log("异步完成");
      //   },
      // });

      this.$store.dispatch("aUpdataInfo", "我是携带信息").then((res) => {
        // return new Promise((resolve,reject) 返回到.then((res) => {
        //所以可以调用then
        console.log("里面完成了提交");
        console.log(res);
      });
    },
    updateName() {
      //修改模块A 里面的name,也可以修改不是模块的state 的name
      this.$store.commit("updateName", "lisi");
    },
    asyncUpdateName() {
      this.$store.dispatch("aUpdateName");
    },
  },
};
</script>

<style>
</style>
