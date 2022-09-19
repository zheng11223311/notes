<template>
<el-card>
 <!-- 面包屑 -->
    <my-bread level1="商品管理" level2="商品列表"></my-bread>
     <el-alert
     style="margin-top:20px"
     v-if="msg!=''"
        :title="msg"
        show-icon
        center
        type="success">
    </el-alert>
    <!-- 步骤条 -->
    <el-steps :space="200" :active="active*1" 
    simple
     style="margin-top:20px"
    finish-status="success">
        <el-step title="基本信息"></el-step>
        <el-step title="商品参数"></el-step>
        <el-step title="商品属性"></el-step>
        <el-step title="商品图片"></el-step>
        <el-step title="商品内容"></el-step>
    </el-steps>
    <!-- 最外层是el-form -->
    <el-form
     style="height: 400px;margin-top:20px;overflow:auto;text-align:left"
     label-position="top"
      label-width="80px" 
      :model="form">
         <el-tabs 
         @tab-click="tabChange()"
        v-model="active"
        :tab-position="tabPosition" 
       >
            <el-tab-pane name="1" label="基本信息">
                <el-form-item label="商品名称">
                    <el-input v-model="form.goods_name"></el-input>
                </el-form-item>
                <el-form-item label="商品价格">
                    <el-input v-model="form.goods_price"></el-input>
                </el-form-item>
                <el-form-item label="商品重量">
                    <el-input v-model="form.goods_weight"></el-input>
                </el-form-item>
                <el-form-item label="商品数量">
                    <el-input v-model="form.goods_number"></el-input>
                </el-form-item>
                <el-form-item  label="商品分类" >
                    <!-- 级联选择器 -->
                     <el-cascader
                        v-model="value"
                        clearable=""
                        :options="options"
                        :props="{ expandTrigger: 'hover' }"
                        @change="handleChange"></el-cascader>
                </el-form-item>
            </el-tab-pane>
            <el-tab-pane  name="2" label="商品参数">
                <!-- 显示的是该三级分类的商品参数 -->
                <el-form-item 
                v-for="(item, index) in arrDyparams" :key="index"
                :label="item.attr_name">
                      <el-checkbox-group v-model="item.attr_vals">
                        <el-checkbox
                        border
                        v-for="(item1, index1) in item.attr_vals" :key="index1"
                         :label="item1"></el-checkbox>
                    </el-checkbox-group>
                </el-form-item>
            </el-tab-pane>
            <el-tab-pane name="3" label="商品属性">
                 <!-- 静态参数的数据 -->
                 <el-form-item 
                        v-for="(item, index) in arrStaticparams" :key="index"
                        :label="item.attr_name">
                            <el-input v-model="item.attr_vals"></el-input>
                </el-form-item>
            </el-tab-pane>
            <el-tab-pane name="4" label="商品图片">
                 <el-form-item>
                    <el-upload
                        class="upload-demo"
                        :headers="headers"
                        action="http://127.0.0.1:8888/api/private/v1/upload"
                        :on-preview="handlePreview"
                        :on-remove="handleRemove"
                        :on-success="handleSuccess"
                        list-type="picture">
                        <el-button size="small" type="primary">点击上传</el-button>
                        <div slot="tip" class="el-upload__tip">只能上传jpg/png文件，且不超过500kb</div>
                    </el-upload>
                 </el-form-item>
            </el-tab-pane>
            <el-tab-pane name="5" label="商品内容">    
                 <el-form-item label="">
                     <!-- 表单元素 -->
                     <el-button @click="addGoods()" type="primary">点我-添加商品</el-button>
                     <!-- 富文本 -->
                    <quill-editor v-model="form.goods_instroduce" style="margin-top:10px" ></quill-editor>
                </el-form-item>
        </el-tab-pane>
        </el-tabs>
    </el-form>
    
</el-card>
</template>

<script>
import 'quill/dist/quill.core.css'
import 'quill/dist/quill.snow.css'
import 'quill/dist/quill.bubble.css'
 
import { quillEditor } from 'vue-quill-editor'
 
export default {
    name: 'goodsAdd',
    components: {
    quillEditor
  },
    data() {
        return {
            tabPosition:'left',
            active:'1',
            form:{  //添加表单的数据
                goods_name:'',
                goods_cat:'',
                goods_price:'',
                goods_number:'',
                goods_weight:'',
                goods_instroduce:'',
                pics:[],
                attrs:[],
            },
            value:[1,3,6],   //级联选择器绑定的数据
            options:[],
            arrDyparams:[], //动态参数的数据数组
            arrStaticparams:[], //静态参数的数组
            headers:{
                'Authorization':localStorage.getItem('token')
            },
            msg:'',
        }
    },
    created(){
        this.getGoodsCate()
    },
    methods:{
        //级联选择器触发事件
      handleChange(){

      },
      //获取三级分类的商品
      getGoodsCate(){
          this.$http.get(`categories?type=3`).then(res=>{
            //   console.log(res);
              res.data.data.forEach(element => {
                  element.value=element.cat_id
                  element.label=element.cat_name
                    element.children.forEach(element1 => {
                        element1.value=element1.cat_id
                        element1.label=element1.cat_name
                    // console.log(element1);
                    if(element1.children){
                        element1.children.forEach(element2 => {
                            // console.log(element2);
                             element2.value=element2.cat_id
                            element2.label=element2.cat_name
                        });
                    }
                    
                });
              });
              this.options=res.data.data
            //   console.log(this.options);
              
          })
      },
    //   点击不同的tab 触发事件
    tabChange(){
        if(this.value.length<1){
                this.$message.warning("请先选择三级分类")
                return
        }
        console.log(this.value);
        // 如果点击的是第二个tab,同时三级分类要有值
        if (this.active=='2') {
            this.$http.get(`categories/${this.value[this.value.length-1]}/attributes?sel=many`).then(res=>{
                // console.log(res);
                this.arrDyparams=res.data.data
                this.arrDyparams.forEach(item=>{
                    item.attr_vals=item.attr_vals.trim().split(',')
                })
            })
        }else if(this.active=='3'){
            //获取静态参数的数据
            this.$http.get(`categories/${this.value[this.value.length-1]}/attributes?sel=only`).then(res=>{
                // console.log(res);
                this.arrStaticparams=res.data.data
               
            })
        }
    },
    // 图片上传时的相关方法
    // file 形参里里面是当前操作的图片的相关信息
    handlePreview(file){

    },
    handleRemove(file){
        // console.log('移除');
        // findIndex 遍历数组 把符合条件的元素的索引进行返回
        let index=this.form.pics.findIndex(item=>{
             return item.pic=file.response.data.temp_path
        })
        this.form.pics.splice(index,1)
        // console.log(this.form);
    },
    handleSuccess(file){
        // console.log(file);
        this.form.pics.push({
            pic:file.data.temp_path
        })
    },
    addGoods(){
        this.form.goods_cat=this.value.join(',')
        this.$http.post(`goods`,this.form).then(res=>{
            // console.log(res);
            // this.$message.success(res.data.meta.msg)
            this.msg=res.data.meta.msg

        })
    }
    }

}
</script>

<style  scoped>
::-webkit-scrollbar{
    width: 0px;
}

</style>
