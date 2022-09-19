<template >
    <div class="backtop" @click="backtop">
        
    </div>
</template>
<script>
export default {
    name:'BackTop',
    // emit 子组件调用父组件事件
    setup(props,{emit}) {
        return{
            backtop:()=>{
                emit('bTop')
            }
        }
    }
    
}
</script>
<style lang="scss" scoped>
    .backtop{
        width: 40px;
        height: 40px;
        position: fixed;
        bottom: 80px;
        right: 30px;
        box-shadow: 5px 5px 5px #8888;
        border-radius: 5px;
        background:#FCFCFC url('~assets/images/backtop.png') no-repeat center center;
        z-index: 20;
    }
</style>