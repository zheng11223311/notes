// components/test2/test2.js
Component({
  /**
   * 组件的属性列表
   */
  properties: {

  },

  /**
   * 组件的初始数据
   */
  data:{
    rgb:{	//rgb 的颜色值对象
        r:0,
        g:0,
        b:0
    },
    fullColor:'0,0,0'	//根据rgb 对象的三个属性,动态计算fullColor 的值 
},

  /**
   * 组件的方法列表
   */
  methods: {
    changeR:function(){	//修改rgb 对象上r 属性值
      this.setData({
          'rgb.r':this.data.rgb.r+5>255?255:this.data.rgb.r+5
      })
  },
  changeG:function(){	//修改rgb 对象上g 属性值
      this.setData({
          'rgb.g':this.data.rgb.g+5>255?255:this.data.rgb.g+5
      })
  },
  changeB:function(){	//修改rgb 对象上b 属性值
      this.setData({
          'rgb.b':this.data.rgb.b+5>255?255:this.data.rgb.b+5
      })
  },
  },
  observers:{
    // 监听rgb 对象上r,g,b 三个子属性的变化
    'rgb.r,rgb.g,rgb.b':function(r,g,b){
        this.setData({
            //为data 中的fullColor 重新赋值
            fullColor:`${r},${g},${b}`
        })
    },
}
})
