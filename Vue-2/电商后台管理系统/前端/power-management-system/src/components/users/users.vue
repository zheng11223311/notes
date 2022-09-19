<template>
<div class="">
    <!-- 层级 -->
    <el-breadcrumb separator-class="el-icon-arrow-right">
        <el-breadcrumb-item :to="{ path: '/home/' }">首页</el-breadcrumb-item>
        <el-breadcrumb-item>用户管理</el-breadcrumb-item>
        <el-breadcrumb-item>用户列表</el-breadcrumb-item>
    </el-breadcrumb>
    <!-- 添加用户 -->
    <div class="input-with-select1" style="margin-top: 20px;">
        <el-input @clear="loadUserList()" clearable placeholder="请输入内容" v-model="query" class="input-with-select">
            <el-button @click="searchuser()" slot="append" icon="el-icon-search"></el-button>
        </el-input>
        <el-button type="success" @click="showAddUserDia()">添加用户</el-button>
        <!-- 添加用户对话框 -->
        <el-dialog title="添加用户" :visible.sync="dialogFormVisible">
            <el-form :model="form">
                <el-form-item label="用户名" label-width="100px">
                    <el-input v-model="form.username" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item label="密码" label-width="100px">
                    <el-input v-model="form.password" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item label="邮箱" label-width="100px">
                    <el-input v-model="form.email" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item label="电话" label-width="100px">
                    <el-input v-model="form.mobile" autocomplete="off"></el-input>
                </el-form-item>
            </el-form>
            <div slot="footer" class="dialog-footer">
                <el-button @click="dialogFormVisible = false">取 消</el-button>
                <el-button type="primary" @click="addUser()">确 定</el-button>
            </div>
        </el-dialog>
    </div>
    <!-- 表格 -->
    <el-table :data="userlist" style="width: 100%">
        <el-table-column type='index' label="#" width="60">
        </el-table-column>
        <el-table-column prop="username" label="姓名" width="80">
        </el-table-column>
        <el-table-column prop="email" label="邮箱">
        </el-table-column>
        <el-table-column prop="mobile" label="电话">
        </el-table-column>
        <el-table-column prop="create_time" label="创建时间">
            <!-- 
            如果单元格内显示的内容不是字符串(文本),
            需要给被显示的内容外层包裹一个template
         -->
            <!-- template 内部要使用外部数据,设置slot-scope 属性 
            该属性的值是要用数据create_time 的数据源头userlist
        -->
            <!-- 
            slot-scope 的值userlist 其实就是el-table 绑定的数据userlist
            userlist.row->数组中的每个对象
            默认就是上一级传递过来的,将 slot-scope="userlist" 中的userlist 改为其他
            名称,找的还是userlist
         -->
            <template slot-scope="userlist">
                <!-- 里我们将表达式 userlist.row.create_time 的值“管输（pipe）”到内置的 fmdate方法 过滤器 -->
                {{userlist.row.create_time|fmdate}}
            </template>
        </el-table-column>
        <el-table-column label="用户状态" width="80">
            <template slot-scope="userlist">
                <el-switch @change="changeMsgState(userlist.row)" v-model="userlist.row.mg_state" active-color="#13ce66" inactive-color="#ff4949">
                </el-switch>
            </template>
        </el-table-column>
        <el-table-column prop="name" label="操作">
            <template slot-scope="userlist">
                <el-button @click="showEditUserMsgBox(userlist.row)" plain size="mini" type="primary" icon="el-icon-edit" circle></el-button>
                <el-button @click="showSetUserRoleDia(userlist.row)" plain size="mini" type="success" icon="el-icon-check" circle></el-button>
                <el-button @click="showDeleUserMsgBox(userlist.row.id)" plain size="mini" type="danger" icon="el-icon-delete" circle></el-button>
            </template>
        </el-table-column>
    </el-table>
    <!-- 分页 -->
    <el-pagination style="width:80px" @size-change="handleSizeChange" @current-change="handleCurrentChange" :current-page="pagenum" :page-sizes="[2, 4, 6, 8]" :page-size="pagesize" layout="total, sizes, prev, pager, next, jumper" :total="total">
    </el-pagination>
    <!-- 编辑用户对话框 -->
    <el-dialog title="编辑用户" :visible.sync="dialogFormVisibleEdit">
        <el-form :model="editForm">
            <el-form-item label="用户名" label-width="100px">
                <el-input disabled v-model="editForm.username" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="邮箱" label-width="100px">
                <el-input v-model="editForm.email" autocomplete="off"></el-input>
            </el-form-item>
            <el-form-item label="电话" label-width="100px">
                <el-input v-model="editForm.mobile" autocomplete="off"></el-input>
            </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
            <el-button @click="dialogFormVisibleEdit = false">取 消</el-button>
            <el-button type="primary" @click="editUser(editForm.id)">确 定</el-button>
        </div>
    </el-dialog>
    <!-- 分配角色对话框 -->
    <el-dialog title="分配角色" :visible.sync="dialogFormVisibleRole">
        <el-form :model="editForm">
            <el-form-item style="text-align:left;" label="用户名: " label-width="100px">
                {{currentUsername}}
            </el-form-item>
            <el-form-item style="text-align:left;" label="角色: " label-width="100px">
                <!-- 如果select 的绑定的数据的值 和option 的value 的一样,
                    就会显示该option 的label 的值 -->
                <el-select v-model="currentRoleId">
                    <el-option label="请选择" :value="currentRoleId"></el-option>
                    <el-option v-for="(item, index) in roles" :key="index" :label="item.roleName" :value="item.id"></el-option>
                </el-select>
            </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
            <el-button @click="dialogFormVisibleRole = false">取 消</el-button>
            <el-button type="primary" @click="setRole()">确 定</el-button>
        </div>
    </el-dialog>
</div>
</template>

<script>
export default {
    name: 'users',
    data() {
        return {
            query: '',
            pagenum: 1, //页数
            pagesize: 2, //条数
            userlist: [], //表格绑定的数据
            total: 1, //总页数
            dialogFormVisible: false, //添加用户对话框的属性
            dialogFormVisibleEdit: false, //编辑用户对话框的属性
            dialogFormVisibleRole: false, //分配角色对话框的属性
            form: { //添加用户的表单数据
                username: '',
                password: '',
                email: '',
                mobile: '',
            },
            editForm: {
                username: '',
                email: '',
                mobile: '',
                id: '',
            },
            currentRoleId: -1, //当前角色id
            currentId: 0, //当前用户id
            currentUsername: '', //当前角色名称
            roles: [], //保存所有角色的数据

        }
    },
    created() {
        this.getUserList()
    },
    methods: {
        //修改状态
        changeMsgState(user) {
            //发送请求
            this.$http.put(`users/${user.id}/state/${user.mg_state}`).then(res => {
                // console.log(res);
                if (res.data.meta.status = 200) {
                    //提示
                    this.$message.success(res.data.meta.msg)
                }
            })
        },
        // 编辑用户-发送请求
        editUser(userID) {
            this.$http.put(`users/${userID}`, this.editForm).then(res => {
                // console.log(res);
                if (res.data.meta.status = 200) {
                    //关闭对话框
                    this.dialogFormVisibleEdit = false
                    //更新
                    this.getUserList()
                    //提示
                    this.$message.success(res.data.meta.msg)
                }

            })
        },
        //编辑用户-打开消息盒子
        showEditUserMsgBox(user) {
            // console.log(user);
            this.editForm = user
            this.dialogFormVisibleEdit = true
        },
        //设置用户权限-打开消息盒子
        showSetUserRoleDia(user) {
            this.currentUsername = user.username
            this.currentId = user.id

            //获取所有的角色
            this.$http.get(`roles`).then(res => {
                // console.log(res);
                this.roles = res.data.data
            })
            //获取当前用角色id
            this.$http.get(`users/${user.id}`).then(res => {
                // console.log(res);
                if (res.data.meta.status == 200) {
                    this.currentRoleId = res.data.data.rid
                    this.dialogFormVisibleRole = true
                }
            })
        },
        //分配角色-发送请求
        setRole() {
            this.$http.put(`users/${this.currentId}/role`, {
                rid: this.currentRoleId
            }).then(res => {
                // console.log(res);
                if (res.data.meta.status == 200) {
                    //提示
                    this.$message({
                        type: 'success',
                        message: res.data.meta.msg
                    });
                    this.dialogFormVisibleRole = false
                }

            })
        },
        //删除用户-打开消息盒子
        showDeleUserMsgBox(userId) {
            this.$confirm('此操作将永久删除该用户, 是否继续?', '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {

                //发送删除请求 参数用户id

                this.$http.delete(`users/${userId}`).then(res => {
                    // console.log(res);
                    if (res.data.meta.status == 200) {
                        //提示
                        this.$message({
                            type: 'success',
                            message: '删除成功!'
                        });
                        this.pagenum = 1
                        this.getUserList()
                    }
                })
            }).catch(() => {
                this.$message({
                    type: 'info',
                    message: '已取消删除'
                });
            });
        },
        // 添加用户-发送请求
        addUser() {
            this.$http.post(`users`, this.form).then(res => {
                //  console.log(res);
                const {
                    meta: {
                        status,
                        msg
                    },
                    data
                } = res.data
                if (status == 201) {
                    //1.提示成功
                    this.$message.success(msg)
                    //3.更新视图
                    this.getUserList()
                    //4.清空文本框
                    this.form.username = ''
                    this.form.password = ''
                    this.form.email = ''
                    this.form.mobile = ''
                } else {
                    //1.提示失败
                    this.$message.warning(msg)
                }
            })
            //2.关闭对话框
            this.dialogFormVisible = false
        },
        //添加用户-显示对话框
        showAddUserDia() {
            this.dialogFormVisible = true
        },
        //清空搜索框从新加载数据
        loadUserList() {
            this.getUserList()
        },
        // 搜索用户
        searchuser() {
            this.getUserList()
        },
        //分页相关的方法
        handleSizeChange(val) {
            // console.log(`每页 ${val} 条`);
            this.pagesize = val
            this.pagenum = 1
            this.getUserList()
        },
        handleCurrentChange(val) {
            // console.log(`当前页: ${val}`);
            this.pagenum = val
            this.getUserList()
        },
        getUserList() {
            //获取用户列表的请求
            this.$http.get(`users?query=${this.query}&pagenum=${this.pagenum}&pagesize=${this.pagesize}`)
                .then(res => {
                    // console.log(res);
                    const {
                        meta: {
                            status,
                            msg
                        },
                        data: {
                            users,
                            total
                        }
                    } = res.data
                    if (status == 200) {
                        //给表格数据赋值
                        this.userlist = users
                        //给total 赋值
                        this.total = total
                        //提示
                        this.$message.success(msg)
                    } else {
                        this.$message.warning(msg)
                    }
                })
        }
    }

}
</script>

<style scoped>
.input-with-select1 {
    text-align: left;
}

.input-with-select {
    width: 300px;
}
</style>
