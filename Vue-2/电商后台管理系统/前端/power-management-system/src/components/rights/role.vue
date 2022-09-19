<template>
<el-card>
    <my-bread level1="权限管理" level2="角色列表"></my-bread>
    <el-row>
        <el-col style="margin-top:20px;text-align:left">
            <el-button type="success">添加角色</el-button>
        </el-col>
    </el-row>
        <el-table :data="roleList" style="width: 100%">
            <el-table-column type='expand' width="140">
                <template slot-scope="scope">
                    <el-row v-for="(item, index) in scope.row.children" :key="index">
                        <el-col :span="4">
                            <el-tag
                            @close="deleteRight(scope.row,item.id)"
                             closable 
                             type="success">{{item.authName}}</el-tag>
                            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                            <i class="el-icon-arrow-right" ></i>
                        </el-col>
                        <el-col :span="20">
                            <el-row  v-for="(item1, index) in item.children" :key="index">
                                <el-col :span="4">
                                   <el-tag @close="deleteRight(scope.row,item1.id)" closable type="error">{{item1.authName}}</el-tag>
                                   &nbsp; &nbsp; &nbsp;
                                    <i class="el-icon-arrow-right"></i>
                                </el-col>
                                <el-col :span="20">
                                    <el-tag
                                    v-for="(item2, index) in item1.children" :key="index"
                                     @close="deleteRight(scope.row,item2.id)" 
                                     closable  
                                     type="warning" 
                                     :span="20"
                                      >{{item2.authName}}</el-tag>
                                </el-col>
                            </el-row>
                            
                        </el-col>
                        
                    </el-row>   
                    <!-- 无权限的提示 -->
                    <div style="color:#999;width:100%;line-height:50px;text-align:center" v-if="scope.row.children.length==0">未分配权限</div>
                </template>
            </el-table-column>
            <el-table-column type='index' label="#" width="60">
            </el-table-column>
            <el-table-column prop="roleName" label="角色名称" width="280">
            </el-table-column>
            <el-table-column prop="roleDesc" label="角色描述"  width="280">
            </el-table-column>
            <el-table-column prop="name" label="操作">
                <template slot-scope="userlist">
                    <el-button @click="showEditUserMsgBox(userlist.row)" plain size="mini" type="primary" icon="el-icon-edit" circle></el-button>
                    <el-button @click="showSetRightDia(userlist.row)" plain size="mini" type="success" icon="el-icon-check" circle></el-button>
                    <el-button @click="showDeleUserMsgBox(userlist.row.id)" plain size="mini" type="danger" icon="el-icon-delete" circle></el-button>
                </template>
            </el-table-column>
    </el-table>
    <!-- 修改权限的对话框 -->
    <el-dialog title="修改权限" :visible.sync="dialogFormVisibleRight">
        <!-- 
            树形结构
            data->数据源[]
            show-checkbox->选择框
            node-key 每个节点的唯一标识 通常时data 数据源中的key 名id
            default-expanded-keys 默认展开[要展开节点的id]
            default-checked-keys [要选择的节点的id]
            props 配置项{label,children}
            label 节点的文字标题和chidlren节点的子节点
            值都来源于data 绑定的数据源中的该数据的key 名 label 和children
             -->
             <!-- 
        -->
        <el-tree
        ref="tree"
        :data="treeList"
        show-checkbox
        node-key="id"
        default-expand-all
        :default-checked-keys="arrcheck" 
        :props="defaultProps">
        </el-tree>

    <div slot="footer" class="dialog-footer">
        <el-button @click="dialogFormVisibleRight = false">取 消</el-button>
        <el-button type="primary" @click="setRoleRight()">确 定</el-button>
    </div>
    </el-dialog>
</el-card>
</template>

<script>
export default {
    name: 'roles',
     data() {
        return {
            roleList:[],
            dialogFormVisibleRight:false,   //修改权限对话框属性
            treeList:[],    //树形节点数据
            defaultProps:{
                label:'authName',
                children:'children',
            },
            arrexpand:[],
            arrcheck:[],    //打勾的权限
            currentRoleId:-1,
        }
    },
    created(){
        this.getRoleList()
    },
    methods:{
        //获取角色
      getRoleList(){
          this.$http.get(`roles`).then(res=>{
            //   console.log(res);
              this.roleList=res.data.data
               this.$message.success(res.data.meta.msg)
          })
      },
      //取消权限
      deleteRight(role,rightId){
          this.$http.delete(`roles/${role.id}/rights/${rightId}`).then(res=>{
            //   console.log(res);
              if(res.data.meta.status==200){
                  this.$message.success(res.data.meta.msg)
                role.children=res.data.data
              }
          })
      },
      //修改/分配权限-打开对话框
      showSetRightDia(role){
        //   获取树形结构的权限
        this.$http.get(`rights/tree`).then(res=>{
            // console.log(res);
            // 给currentRoleId 赋值
            this.currentRoleId=role.id
            this.treeList=res.data.data
            role.children.forEach(element => {
                // this.arrcheck.push(element.id)
                    element.children.forEach(element1 => {
                        // this.arrcheck.push(element1.id)
                            element1.children.forEach(element2 => {
                                this.arrcheck.push(element2.id)
                            });
                    });
            });
          this.dialogFormVisibleRight=true
        })
      },
      //修改/分配权限-发送请求
      setRoleRight(role){
          let arr1=this.$refs.tree.getCheckedKeys()
          let arr2=this.$refs.tree.getHalfCheckedKeys()
          let arr=arr1.concat(arr2)
        //   console.log(arr1);
        //   console.log(arr2);
        //   console.log(arr);
        //   获取树形结构的权限
        this.$http.post(`roles/${this.currentRoleId}/rights`,{rids:arr.join(',')}).then(res=>{
            // console.log(res);
          this.dialogFormVisibleRight=false
          this.$message.success(res.data.meta.msg)
          //更新视图
          this.getRoleList()
        })
      }
    }

}
</script>

<style  scoped>

</style>
