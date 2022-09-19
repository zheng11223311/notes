<template>
<el-card>
 <!-- 面包屑 -->
    <my-bread level1="数据统计" level2="数据报表"></my-bread>
    <div id="main" style="width:600px;height:400px;margin-top:20px"></div>
</el-card>
</template>

<script>
var echarts=require('echarts')
export default {
    name: 'report',
    data() {
        return {
            
        }
    },
    mounted(){
        this.useEcharts()
    },
    methods:{
      useEcharts(){
          //初始化 getElementById 在mounted 中执行
          var mychart=echarts.init(document.getElementById('main'))
          //获取数据表
          this.$http.get(`reports/type/1`).then(res=>{
            //   console.log(res);
                let option2=res.data.data

                //指定图表的配置项和数据
                let option1={
                    title:{
                        text:'堆叠区域图'
                    },
                    tooltip:{
                        trigger:'axis',
                        axisPointer:{
                            type:'cross',
                            label:{
                                backgroundColor:"#6a7985"
                            }
                        }
                    },
                    toolbox:{
                        feature:{
                            saveAsImage:{}
                        }
                    },
                    grid:{
                        left:"3%",
                        right:"4%",
                        bottom:"3%",
                        containLabel:true
                    }
                }
                //setoption
                let option={...option1,...option2}
                mychart.setOption(option)

              this.$message.success(res.data.meta.msg)
          })
      }

    }

}
</script>

<style  scoped>

</style>
