<template>
<div class="login-wrap">
    <el-form 
    class="login-form"
    label-position="top" label-width="80px" :model="formLabelAlign">
        <h2>用户登入</h2>
        <el-form-item label="用户名">
            <el-input v-model="formLabelAlign.username"></el-input>
        </el-form-item>
        <el-form-item label="密码">
            <el-input v-model="formLabelAlign.password"></el-input>
        </el-form-item>
         <el-button
         @click="handleLogin()"
          class="login-btn" type="primary">登入</el-button>
    </el-form>
</div>
</template>

<script>
export default {
    name: 'login',
    data() {
        return {
            formLabelAlign: {
                username:'',
                password:'',
            }
        }
    },
    methods:{
        //登入请求
        handleLogin(){
            this.$http.post('login',this.formLabelAlign)
            .then(res=>{
                // console.log(res);
                const {data,meta:{msg,status}}=res.data
                if(status==200){
                    // 登入成功
                    //保存token
                    localStorage.setItem('token',data.token)
                    //跳转home
                    this.$router.push({name:'home'})
                    //提示成功
                     this.$message.success(msg);
                }else{
                    this.$message.warning(msg);
                }
            })
        }

    }

}
</script>

<style  scoped>
.login-wrap{
    height: 100%;
    background-color: #324152;
    display: flex;
    justify-content: center;
    align-items: center;
}
.login-form{
    width: 400px;
    background-color: #fff;
    border-radius: 5px;
    padding: 30px;
    
}
.login-btn{
    width: 100%;
}
</style>
