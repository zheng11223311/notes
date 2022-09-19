### 1.floatyWindow 对象

地址:[悬浮窗 - Floaty (autojs.org)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowsetadjustenabledenabled)

## [window.setAdjustEnabled(enabled)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowsetadjustenabledenabled)

- `enabled` {boolean} 是否启用悬浮窗调整(大小、位置)

如果enabled为true，则在悬浮窗左上角、右上角显示可供位置、大小调整的标示，就像控制台一样； 如果enabled为false，则隐藏上述标示。

## [window.setPosition(x, y)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowsetpositionx-y)

- `x` {number} x
- `x` {number} y

设置悬浮窗位置。

## [window.getX()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgetx)

返回悬浮窗位置的X坐标。

## [window.getY()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgety)

返回悬浮窗位置的Y坐标。

## [window.setSize(width, height)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowsetsizewidth-height)

- `width` {number} 宽度
- `height` {number} 高度

设置悬浮窗宽高。

## [window.getWidth()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgetwidth)

返回悬浮窗宽度。

## [window.getHeight()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgetheight)

返回悬浮窗高度。

## [window.close()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowclose)

关闭悬浮窗。如果悬浮窗已经是关闭状态，则此函数将不执行任何操作。

被关闭后的悬浮窗不能再显示。

## [window.exitOnClose()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowexitonclose)

使悬浮窗被关闭时自动结束脚本运行。

**示例:**

```js
var w = floaty.window(
    <vertical gravity="center">
        <text id="text">布局</text>
        <button>按钮</button>
    </vertical>
);


ui.run(function(){
    // text 为id
    // 放在外面也可以使用,但是要按照ui 规则使用
    w.text.setText("文本");  //修改文本
});

w.setPosition(500, 500);   //设置悬浮窗的位置

// w.setAdjustEnabled(true)  //可拖拽,调整

console.log(w.getX());  //x轴的位置 36
console.log(w.getY());  //y 轴的位置 
// 要保持悬浮窗不被关闭,需保持程序的运行

w.setSize(300,300)  //设置悬浮窗的大小,与拖拽一起使用,可以显示

setInterval(()=>{
    // w.close()   //关闭w 悬浮窗
    floaty.closeAll()   //关闭所有本脚本的悬浮窗。
},2000)

w.exitOnClose()  //关闭悬浮窗,脚本自动结束
setInterval(()=>{}, 1000);
toast ('启动服务器')

```

