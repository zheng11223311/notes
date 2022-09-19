<template>
<el-container class="container">
    <el-header class="header">
        <el-row>
            <el-col :span="4">
                <div class="grid-content bg-purple">
                    <img src="~@/assets/image/logo.png" alt="无法显示图片">
                </div>
            </el-col>
            <el-col :span="18" class="middle">
                <h3>电商后台管理系统</h3>
            </el-col>
            <el-col :span="2">
                <div class="grid-content bg-purple">
                    <a href="" @click.prevent="handleLogout()" class="logout">退出</a>
                </div>
            </el-col>
        </el-row>
    </el-header>
    <el-container>
        <el-aside width="250px" style="overflow:hidden" class="aside">
            <el-row class="tac">
                <el-col :span="12">
                    <el-menu default-active="2"
                     class="el-menu-vertical-demo"
                     unique-opened
                     :router='true'
                      @open="handleOpen" 
                      @close="handleClose">
                        <el-submenu 
                        v-for="(item, index) in menus" :key="index"
                        :index="String(item.order)">
                            <template slot="title">
                                <i class="el-icon-location"></i>
                                <span>{{item.authName}}</span>
                            </template>
                            <el-menu-item-group>
                                <el-menu-item 
                                v-for="(item1, index1) in item.children" :key="index1"
                                :index="'/home/'+item1.path"><i class="el-icon-menu"></i>{{item1.authName}}</el-menu-item>
                            </el-menu-item-group>
                        </el-submenu>
                        

                    </el-menu>
                </el-col>
            </el-row>
        </el-aside>
        <el-main class="main">
            <router-view></router-view>
        </el-main>
    </el-container>
</el-container>
</template>

<script>
export default {
    name: '',
    data() {
        return {
            menus:[],
        }
    },
    created(){
        this.handleOpen1()
    },
    methods: {
        //获取导航数据
        handleOpen1() {
            this.$http.get(`menus`).then(res=>{
                // console.log(res);
                this.menus=res.data.data
            })
        },
        handleOpen() {
            
        },
        handleClose() {},
        handleLogout(){
            // 清除token
            // localStorage.setItem('token','')
            localStorage.clear()
            this.$message.success('退出成功');
            this.$router.push({name:'login'})
        }
    },
    beforeCreate(){
        //获取token
        const token=localStorage.getItem('token')
        if(!token){ 
            this.$router.push({name:'login'})
        }
    }

}
</script>

<style scoped>
.container {
    height: 100%;
}

.header {
    background-color: #B3C0D1;
    color: #333;
    text-align: center;
}

.aside {
    background-color: #D3DCE6;
    color: #333;
    text-align: center;
}

.main {
    background-color: #E9EEF3;
    color: #333;
    text-align: center;
}

.middle {
    text-align: center;

}

.logout {
    text-decoration: none;
    line-height: 60px;

}

.el-menu-vertical-demo {
    width: 250px;
    text-align: left;
    /* padding-left: 30px; */
}
</style>
