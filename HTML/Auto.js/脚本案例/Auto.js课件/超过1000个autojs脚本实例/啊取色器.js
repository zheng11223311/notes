
//使用说明:
// 鼠标(手指) 按下显示位置,颜色等
// 鼠标(手指) 抬起复制位置,颜色等
// 点击退出结束脚本


//
if(!requestScreenCapture()){
    toast("请求截图失败");
    exit();
}
//最小化窗口()
取色()

function 最小化窗口(){
  v= floaty.window(
    <frame bg="#99611919" gravity="center" w="90" h="100">
       <vertical  w="90" h="100">
      <button id="quse" text="取色" w="50" h="30"  textSize="10sp" />
      <button id="yd"   text="移动" w="50" h="30"  textSize="10sp" />
      </vertical>
     </frame>
);
  v.quse.click(()=>{
       v.close();
    bb = threads.start(function(){
    取色()
       
   });
 
});
 }


function 取色(){
 w = floaty.rawWindow(
  <vertical id="beijing"  bg="#00000000" h="*" w="*" >
     <text id="zhuobiao" padding="6"  w="*" bg='#ffd65100' gravity="center" color="#111111" size="12">坐标:</text>
       <text id="yanse" w="*" gravity="left" color="#111111" size="16" >数字颜色:</text>
       <text id="yanse1" w="*" gravity="left" color="#111111" size="16">RGB颜色:</text>
       <text id="yanse2" w="*" gravity="left" color="#111111" size="16">颜色:</text>
       <button id="fuzhi"  gravity="center" text="退出"  w="50" h="40" textSize="13sp" />
  </vertical>
);
// 设置全屏
w.setSize(-1,-1)
// 设置可穿透
// 不设置穿透也可以使鼠标获取底层的颜色,而不会获取到遮挡层的颜色
// 修改顶层颜色为透明就行
// rawWindow 的属性
// w.setTouchable(true);
// Window 的属性
// w.setAdjustEnabled(true)

//     toast("最小化");
//     //activity.finish();
//     w.close();
//   a= threads.start(function(){
//     最小化窗口()
// });
w.fuzhi.click(()=>{
    toast("退出");
    //activity.finish();
     w.close();
    exit()
});
w.beijing.setOnTouchListener(function(view, event) {
  // event.getAction()  按下为0,抬起为1 ,移动为2
  // console.log(event.getAction());
  // event.ACTION_DOWN  为0,即按下
  // console.log(event.ACTION_DOWN);
  // // 2  移动
  // console.log(event.ACTION_MOVE);
  // // 1 抬起
  // console.log(event.ACTION_UP);
  switch (event.getAction()) {
     case event.ACTION_DOWN:
    //  按下的时间戳
      downTime = new Date().getTime();
      // console.log(downTime);
       // 按下时获取手指坐标位置,
      //  不能使用按下移动获取并改变颜色和值,触发事件过多,调用函数
      // 过多,导致系统处理不过来,导致系统奔溃
       x = event.getRawX();
      y = event.getRawY();
      // console.log(x,y);
          fcyidong(x,y)
      return true;
    case event.ACTION_MOVE:
      // 移动时获取手指坐标位置
       x = event.getRawX();
      y = event.getRawY();
      // console.log(x,y);
          // fcyidong(x,y)
      case event.ACTION_UP:
        // 鼠标抬起进行复制
          (()=>{
            toast("复制成功");
            setClip( w.zhuobiao.getText()+' ' + w.yanse.getText()+' '  + w.yanse1.getText()+' '  + w.yanse2.getText())
        })()
        return true;
   }
    return true;
})
}

function fcyidong(x,y){
  var img = capturescreen();
var color = images.pixel(img, x, y);
//显示该颜色值
 w.yanse.setText("数字:"+color);
  w.yanse1.setText("ARGB:"+colors.toString(color));
  w.fuzhi.setTextColor(color)

  hsl=RgbToHsl(colors.red(color), colors.green(color), colors.blue(color))
      w.yanse2.setText("SHL:"+hsl)
      w.zhuobiao.setText("坐标:X:"+x+"  Y:"+y)
  }
  //  截屏函数
function capturescreen() {
  while (true) {
    if (ajt = captureScreen()) {
      return ajt;
    }
  }
}

// RGB 转HSL
function RgbToHsl(r, g, b) {
        r /= 255, g /= 255, b /= 255;
        var max = Math.max(r, g, b), min = Math.min(r, g, b);
        var h, s, l = (max + min) / 2;
 
        if (max == min) {
            h = s = 0;
        } else {
            var d = max - min;
            s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
            switch (max) {
                case r: h = (g - b) / d + (g < b ? 6 : 0); break;
                case g: h = (b - r) / d + 2; break;
                case b: h = (r - g) / d + 4; break;
            }
            h /= 6;
        }
        return [Math.floor(h * 100), Math.round(s * 100) + "%", Math.round(l * 100) + "%"];
    }

setInterval(()=>{}, 1000);