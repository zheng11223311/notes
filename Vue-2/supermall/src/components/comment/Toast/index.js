//封装Toast 插件,在main.js 里注册
//调用插件: this.$toast.show('提示文字',时间)

import Toast from './Toast'

const obj={}

obj.install=function(Vue){
    //执行了obj 的install 安装函数      //使用use 就会执行 默认会传入Vue 参数
    // console.log('执行了obj 的install 安装函数');

    // Vue.extend(Toast)
    // document.body.appendChild(Toast.$el)   //$el 还没有挂载,获取不到
    console.log(Vue);
    console.log(Vue.extend);
    

    //1.创建组件构造器
    // const toastConstructor=Vue.extend(Toast)
    const toastConstructor=Vue.prototype.extend(Toast)
    
    //2.new 的方式,根据组件构造器,可以创建出来一个组件对象
    const toast =new toastConstructor()

    //3.将组件对象,手动挂载到某一元素上
    toast.$mount(document.createElement('div'))     //将toast 挂载到创建的div 上

    //4.toast.$el 对应的就是div
    document.body.appendChild(toast.$el)        //将这个div 添加到body 上

    









    // Vue.prototype.$toast=对象;  如果 对象是 Taost.vue 对象 会自动调用methods 里面的show 函数
    Vue.prototype.$toast=Toast;
}

export default obj