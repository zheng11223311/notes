### 1.floatyrowWindow 对象

地址:[悬浮窗 - Floaty (autojs.org)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=floatyrawwindow)

# [FloatyRawWindow](https://pro.autojs.org/docs/#/zh-cn/floaty?id=floatyrawwindow)

原始悬浮窗对象，可通过`window.{id}`获取悬浮窗界面上的元素。例如, 悬浮窗window上一个控件的id为aaa, 那么`window.aaa`即可获取到该控件，类似于ui。

## [window.setTouchable(touchable)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowsettouchabletouchable)

- `touchable` {Boolean} 是否可触摸

设置悬浮窗是否可触摸，如果为true, 则悬浮窗将接收到触摸、点击等事件并且无法继续传递到悬浮窗下面；如果为false, 悬浮窗上的触摸、点击等事件将被直接传递到悬浮窗下面。处于安全考虑，被悬浮窗接收的触摸事情无法再继续传递到下层。

可以用此特性来制作护眼模式脚本。

```
var w = floaty.rawWindow(
    <frame gravity="center" bg="#44ffcc00"/>
);

w.setSize(-1, -1);
w.setTouchable(false);

setTimeout(()=>{
    w.close();
}, 4000);
```

## [window.setPosition(x, y)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowsetpositionx-y-1)

- `x` {number} x
- `x` {number} y

设置悬浮窗位置。

## [window.getX()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgetx-1)

返回悬浮窗位置的X坐标。

## [window.getY()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgety-1)

返回悬浮窗位置的Y坐标。

## [window.setSize(width, height)](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowsetsizewidth-height-1)

- `width` {number} 宽度
- `height` {number} 高度

设置悬浮窗宽高。

特别地，如果设置为-1，则为占满全屏；设置为-2则为根据悬浮窗内容大小而定。例如：

```
var w = floaty.rawWindow(
    <frame gravity="center" bg="#77ff0000">
        <text id="text">悬浮文字</text>
    </frame>
);

w.setSize(-1, -1);

setTimeout(()=>{
    w.close();
}, 2000);
```

## [window.getWidth()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgetwidth-1)

返回悬浮窗宽度。

## [window.getHeight()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowgetheight-1)

返回悬浮窗高度。

## [window.close()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowclose-1)

关闭悬浮窗。如果悬浮窗已经是关闭状态，则此函数将不执行任何操作。

被关闭后的悬浮窗不能再显示。

## [window.exitOnClose()](https://pro.autojs.org/docs/#/zh-cn/floaty?id=windowexitonclose-1)

使悬浮窗被关闭时自动结束脚本运行。

**示例:**

```js
var w = floaty.rawWindow(
    <vertical gravity="center" bg="#55cccccc">
        <text id="text">布局</text>
        <button>按钮</button>
    </vertical>
);


// false 不可被触摸,触摸遮悬浮窗时穿透,直接点击到底部的界面
// true  可被触摸,直接点击到悬浮窗,而不会点击到底部的界面
w.setSize(-1,-1)   //设置悬浮窗的大小,与拖拽一起使用,可以显示大小,-1 表示全屏
w.setTouchable(false); 


ui.run(function(){
    // text 为id
    // 放在外面也可以使用,但是要按照ui 规则使用
    w.text.setText("文本");  //修改文本
});

// w.setPosition(500, 500);   //设置悬浮窗的位置

// w.setAdjustEnabled(true)  //可拖拽,调整

//屏幕是从除去电量wifi顶部显示界面开始计算xy
console.log(w.getX());  //x轴的位置 36
console.log(w.getY());  //y 轴的位置 
// 要保持悬浮窗不被关闭,需保持程序的运行

 

setInterval(()=>{
    // w.close()   //关闭w 悬浮窗
    floaty.closeAll()   //关闭所有本脚本的悬浮窗。
},2000)

w.exitOnClose()  //关闭悬浮窗,脚本自动结束
setInterval(()=>{}, 1000);
toast ('启动服务器')


```

