### 1.图片找色及Point 对象

地址:[图片与颜色 - Images (autojs.org)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindcolorimage-color-options)

## [images.findColor(image, color, options)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindcolorimage-color-options)

- `image` {Image} 图片
- `color` {number} | {string} 要寻找的颜色的RGB值。如果是一个整数，则以0xRRGGBB的形式代表RGB值（A通道会被忽略）；如果是字符串，则以"#RRGGBB"代表其RGB值。
- `options` {Object} 选项

在图片中寻找颜色color。找到时返回找到的点Point，找不到时返回null。

选项包括：

- `region` {Array} 找色区域。是一个两个或四个元素的数组。(region[0], region[1])表示找色区域的左上角；region[2]*region[3]表示找色区域的宽高。如果只有region只有两个元素，则找色区域为(region[0], region[1])到图片右下角。如果不指定region选项，则找色区域为整张图片。
- `threshold` {number} 找色时颜色相似度的临界值，范围为0 ~ 255（越小越相似，0为颜色相等，255为任何颜色都能匹配）。默认为4。threshold和浮点数相似度(0.0~1.0)的换算为 similarity = (255 - threshold) / 255.

该函数也可以作为全局函数使用。

一个循环找色的例子如下：

```
requestScreenCapture();

// 循环找色，找到红色(#ff0000)时停止并报告坐标
while(true){
    var img = captureScreen();
    var point = findColor(img, "#ff0000");
    if(point){
        toast("找到红色，坐标为(" + point.x + ", " + point.y + ")");
    }
}
```

一个区域找色的例子如下：

```
// 读取本地图片/sdcard/1.png
var img = images.read("/sdcard/1.png");
// 判断图片是否加载成功
if(!img){
    toast("没有该图片");
    exit();
}
// 在该图片中找色，指定找色区域为在位置(400, 500)的宽为300长为200的区域，指定找色临界值为4
var point = findColor(img, "#00ff00", {
     region: [400, 500, 300, 200],
     threshold: 4
 });
if(point){
    toast("找到啦:" + point);
}else{
    toast("没找到");
}
```

## [images.findColorInRegion(img, color, x, y[, width, height, threshold\])](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindcolorinregionimg-color-x-y-width-height-threshold)

区域找色的简便方法。

相当于

```
images.findColor(img, color, {
     region: [x, y, width, height],
     threshold: threshold
});
```

该函数也可以作为全局函数使用。

## [images.findAllPointsForColor(img, color, options)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindallpointsforcolorimg-color-options)

- `img` {Image} 图片

- `color` {number} | {string} 要检测的颜色

- ```
  options
  ```

   

  {Object} 选项包括：

  - `region` {Array} 找色区域。是一个两个或四个元素的数组。(region[0], region[1])表示找色区域的左上角；region[2]*region[3]表示找色区域的宽高。如果只有region只有两个元素，则找色区域为(region[0], region[1])到图片右下角。如果不指定region选项，则找色区域为整张图片。
  - `similarity` {number} 找色时颜色相似度，范围为0~1（越大越相似，1为颜色相等，0为任何颜色都能匹配）。
  - `threshold` {number} 找色时颜色相似度的临界值，范围为0 ~ 255（越小越相似，0为颜色相等，255为任何颜色都能匹配）。默认为4。threshold和浮点数相似度(0.0~1.0)的换算为 similarity = (255 - threshold) / 255 。相似度与阈值二选一，同时存在则以相似度为准。

- 返回 {Array}

在图片中寻找所有颜色为color的点。找到时返回找到的点Point的数组，找不到时返回null。

例如找出所有白色的点：

```javascript
log(images.findAllPointsForColor(img, "#ffffff"));
```

## [images.findColorEquals(img, color[, x, y, width, height\])](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindcolorequalsimg-color-x-y-width-height)

- `img` {Image} 图片
- `color` {number} | {string} 要寻找的颜色
- `x` {number} 找色区域的左上角横坐标
- `y` {number} 找色区域的左上角纵坐标
- `width` {number} 找色区域的宽度
- `height` {number} 找色区域的高度
- 返回 {Point}

在图片img指定区域中找到颜色和color完全相等的某个点，并返回该点的左边；如果没有找到，则返回`null`。

找色区域通过`x`, `y`, `width`, `height`指定，如果不指定找色区域，则在整张图片中寻找。

该函数也可以作为全局函数使用。

示例： (通过找QQ红点的颜色来判断是否有未读消息)

```
requestScreenCapture();
launchApp("QQ");
sleep(1200);
var p = findColorEquals(captureScreen(), "#f64d30");
if(p){
    toast("有未读消息");
}else{
    toast("没有未读消息");
}
```

## [images.findMultiColors(img, firstColor, colors[, options\])](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindmulticolorsimg-firstcolor-colors-options)

- `img` {Image} 要找色的图片

- `firstColor` {number} | {string} 第一个点的颜色

- `colors` {Array} 表示剩下的点相对于第一个点的位置和颜色的数组，数组的每个元素为[x, y, color]

- ```
  options
  ```

   

  {Object} 选项，包括：

  - `region` {Array} 找色区域。是一个两个或四个元素的数组。(region[0], region[1])表示找色区域的左上角；region[2]*region[3]表示找色区域的宽高。如果只有region只有两个元素，则找色区域为(region[0], region[1])到图片右下角。如果不指定region选项，则找色区域为整张图片。
  - `threshold` {number} 找色时颜色相似度的临界值，范围为0 ~ 255（越小越相似，0为颜色相等，255为任何颜色都能匹配）。默认为4。threshold和浮点数相似度(0.0~1.0)的换算为 similarity = (255 - threshold) / 255.

多点找色，类似于按键精灵的多点找色，其过程如下：

1. 在图片img中找到颜色firstColor的位置(x0, y0)
2. 对于数组colors的每个元素[x, y, color]，检查图片img在位置(x + x0, y + y0)上的像素是否是颜色color，是的话返回(x0, y0)，否则继续寻找firstColor的位置，重新执行第1步
3. 整张图片都找不到时返回`null`

例如，对于代码`images.findMultiColors(img, "#123456", [[10, 20, "#ffffff"], [30, 40, "#000000"]])`，假设图片在(100, 200)的位置的颜色为#123456, 这时如果(110, 220)的位置的颜色为#fffff且(130, 240)的位置的颜色为#000000，则函数返回点(100, 200)。

如果要指定找色区域，则在options中指定，例如:

```
var p = images.findMultiColors(img, "#123456", [[10, 20, "#ffffff"], [30, 40, "#000000"]], {
    region: [0, 960, 1080, 960]
});
```

## [images.detectsColor(image, color, x, y[, threshold = 16, algorithm = "diff"\])](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesdetectscolorimage-color-x-y-threshold-16-algorithm-quotdiffquot)

- `image` {Image} 图片
- `color` {number} | {string} 要检测的颜色
- `x` {number} 要检测的位置横坐标
- `y` {number} 要检测的位置纵坐标
- `threshold` {number} 颜色相似度临界值，默认为16。取值范围为0 ~ 255。
- `algorithm` {string} 颜色匹配算法，包括:
  - "equal": 相等匹配，只有与给定颜色color完全相等时才匹配。
  - "diff": 差值匹配。与给定颜色的R、G、B差的绝对值之和小于threshold时匹配。
  - "rgb": rgb欧拉距离相似度。与给定颜色color的rgb欧拉距离小于等于threshold时匹配。
  - "rgb+": 加权rgb欧拉距离匹配([LAB Delta E](https://en.wikipedia.org/wiki/Color_difference))。
  - "hs": hs欧拉距离匹配。hs为HSV空间的色调值。

返回图片image在位置(x, y)处是否匹配到颜色color。用于检测图片中某个位置是否是特定颜色。

一个判断微博客户端的某个微博是否被点赞过的例子：

```javascript
requestScreenCapture();
// 找到点赞控件
var like = id("ly_feed_like_icon").findOne();
// 获取该控件中点坐标
var x = like.bounds().centerX();
var y = like.bounds().centerY();
// 截图
var img = captureScreen();
// 判断在该坐标的颜色是否为橙红色
if(images.detectsColor(img, "#fed9a8", x, y)){
    // 是的话则已经是点赞过的了，不做任何动作
}else{
    // 否则点击点赞按钮
    like.click();
}
```

## [images.detectsMultiColors(img, x, y, firstColor, colors, options)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesdetectsmulticolorsimg-x-y-firstcolor-colors-options)

- `img` {Image} 目标图片

- `x` {number} 第一个点的x坐标

- `y` {number} 第一个点的y坐标

- `firstColor` {number} | {string} 第一个点的颜色

- `colors` {Array} 表示剩下的点相对于第一个点的位置和颜色的数组，数组的每个元素为[x, y, color]

- ```
  options
  ```

   

  {Object} 选项，包括：

  - `region` {Array} 找色区域。是一个两个或四个元素的数组。(region[0], region[1])表示找色区域的左上角；region[2]*region[3]表示找色区域的宽高。如果只有region只有两个元素，则找色区域为(region[0], region[1])到图片右下角。如果不指定region选项，则区域为整张图片。
  - `threshold` {number} 比色时颜色相似度的临界值，范围为0 ~ 255（越小越相似，0为颜色相等，255为任何颜色都能匹配）。默认为4。threshold和浮点数相似度(0.0~1.0)的换算为 similarity = (255 - threshold) / 255.

- 返回 `boolean`

多点比色，返回img在起始位置(x, y)处的多个点的颜色是否匹配。

参见`images.findMultiColors()`多点找色的文档。

```javascript
log(images.detectsMultiColors(img, 100, 200, "#000000", [[3, 4, "#123456"], [8, 10, "#ff0000"]]));
```

## [images.findImage(img, template[, options\])](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindimageimg-template-options)

**[v8.5.5新增]**

- `img` {Image} 大图片
- `template` {Image} 小图片（模板）
- `options` {Object} 找图选项

找图。在大图片img中查找小图片template的位置（模块匹配），找到时返回位置坐标(Point)，找不到时返回null。

选项包括：

- `threshold` {number} 图片相似度。取值范围为0~1的浮点数。默认值为0.9。
- `region` {Array} 找图区域。参见findColor函数关于region的说明。
- `level` {number} **一般而言不必修改此参数**。不加此参数时该参数会根据图片大小自动调整。找图算法是采用图像金字塔进行的, level参数表示金字塔的层次, level越大可能带来越高的找图效率，但也可能造成找图失败（图片因过度缩小而无法分辨）或返回错误位置。因此，除非您清楚该参数的意义并需要进行性能调优，否则不需要用到该参数。

该函数也可以作为全局函数使用。

一个最简单的找图例子如下：

```javascript
var img = images.read("/sdcard/大图.png");
var templ = images.read("/sdcard/小图.png");
var p = findImage(img, templ);
if(p){
    toast("找到啦:" + p);
}else{
    toast("没找到");
}
```

稍微复杂点的区域找图例子如下：

```javascript
auto();
requestScreenCapture();
var wx = images.read("/sdcard/微信图标.png");
// 返回桌面
home();
// 截图并找图
var p = findImage(captureScreen(), wx, {
    region: [0, 50],
    threshold: 0.8
});
if(p){
    toast("在桌面找到了微信图标啦: " + p);
}else{
    toast("在桌面没有找到微信图标");
}
```

## [images.findImageInRegion(img, template, x, y[, width, height, threshold\])](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindimageinregionimg-template-x-y-width-height-threshold)

区域找图的简便方法。相当于：

```javascript
images.findImage(img, template, {
    region: [x, y, width, height],
    threshold: threshold
})
```

该函数也可以作为全局函数使用。

## [images.matchTemplate(img, template, options)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesmatchtemplateimg-template-options)

**[v4.1.0新增]**

- `img` {Image} 大图片

- `template` {Image} 小图片（模板）

- ```
  options
  ```

   

  {Object} 找图选项：

  - `threshold` {number} 图片相似度。取值范围为0~1的浮点数。默认值为0.9。
  - `region` {Array} 找图区域。参见findColor函数关于region的说明。
  - `max` {number} 找图结果最大数量，默认为5
  - `transparentMask` {boolean} 是否使用透明模板找图。此选项开启后，传入的template参数可以是一个透明背景的图片对象用于匹配。此选项为 **[[Pro 8.0新增](https://pro.autojs.org/)]** 。
  - `level` {number} **一般而言不必修改此参数**。不加此参数时该参数会根据图片大小自动调整。找图算法是采用图像金字塔进行的, level参数表示金字塔的层次, level越大可能带来越高的找图效率，但也可能造成找图失败（图片因过度缩小而无法分辨）或返回错误位置。因此，除非您清楚该参数的意义并需要进行性能调优，否则不需要用到该参数。

- 返回 {MatchingResult}

在大图片中搜索小图片，并返回搜索结果MatchingResult。该函数可以用于找图时找出多个位置，可以通过max参数控制最大的结果数量。也可以对匹配结果进行排序、求最值等操作。

## [images.findCircles(gray, options)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesfindcirclesgray-options)

- `gray` {Image} 灰度图片
- `options` {Object} 选项包括：
  - `region` {Array} 找圆区域。是一个两个或四个元素的数组。(region[0], region[1])表示找圆区域的左上角；region[2]*region[3]表示找圆区域的宽高。如果只有region只有两个元素，则找圆区域为(region[0], region[1])到图片右下角。如果不指定region选项，则找圆区域为整张图片。
  - `dp` {number} dp是累加面与原始图像相比的分辨率的反比参数，dp=2时累计面分辨率是元素图像的一半，宽高都缩减为原来的一半，dp=1时，两者相同。默认为1。
  - `minDst` {number} minDist定义了两个圆心之间的最小距离。默认为图片高度的八分之一。
  - `param1` {number} param1是Canny边缘检测的高阈值，低阈值被自动置为高阈值的一半。默认为100，范围为0-255。
  - `param2` {number} param2是累加平面对是否是圆的判定阈值，默认为100。
  - `minRadius` {number} 定义了检测到的圆的半径的最小值，默认为0。
  - `maxRadius` {number} 定义了检测到的圆的半径的最大值，0为不限制最大值，默认为0。
- 返回 {Array}

在图片中寻找圆（做霍夫圆变换）。找到时返回找到的所有圆{x,y,radius}的数组，找不到时返回null。

一个寻找圆的例子：

```javascript
// 请求截图
requestScreenCapture();
// 截图
let img = captureScreen();
// 灰度化图片
let gray = images.grayscale(img);
// 找圆
let arr = findCircles(gray, {
    dp: 1,
    minDst: 80,
    param1: 100,
    param2: 100,
    minRadius: 50,
    maxRadius: 80,
});
// 回收图片
gray.recycle();
```

**示例:**

**区域找色**

```js
if(!requestScreenCapture()){
    toast("请求截图失败")
    exit()
}
// true 横屏截图 false 竖屏截图,
// 不指定值，则截图方向由当前设备屏幕方向决定
// 获取截图权限
var screen=images.captureScreen(true)


// 开启线程,点击允许投屏的立即开始
threads.start(function(){
    //在新线程执行的代码
    while(true){
        if(text('立即开始').findOnce()){
            text('立即开始').findOnce().click()
            break
        }else{
                sleep(1000) 
        }
    }
});



// 循环找色,找到红色时停止并报告
while (true) {
    // 每次需要截图
    var cap=images.captureScreen()  
    // 注意:如果有使用开发者指针,指针痕迹也会被查找到
var point=findColor(cap,"#ff0000",{
    // 2参数 xy  4参数 xywh   无参 全屏
    // region:[400,500,300,200],   //区域
    threshold:0     //色差 完全等于红色  范围为0 ~ 255
})
if(point){
    toast("找到红,坐标为("+point.x+","+point.y+')')
    // break
}
sleep(1500)
}

```

**区域找色简化方法**

```js
    // 注意:如果有使用开发者指针,指针痕迹也会被查找到
    // xywh,色差值
    var point=images.findColorInRegion(cap, "#ff0000", 200, 200, 500, 1000, 4)
```

**全等找色:**

```js
// 在图片中寻找颜色完全相等的点
while (true) {
    // 每次需要截图
    var cap=images.captureScreen()  
    // 注意:如果有使用开发者指针,指针痕迹也会被查找到
// xywh
var point=images.findColorEquals(cap,"#ff0000", 200, 200, 500, 1000)
if(point){
    toast("找到红,坐标为("+point.x+","+point.y+')')
    // break
}
sleep(1500)
}
```

**多点找色:**

```js
while (true) {
    // 每次需要截图
    var cap=images.captureScreen()  
    // 注意:如果有使用开发者指针,指针痕迹也会被查找到
    // 在找到的第一个点上宽加10,高加20,在找第二个色 ,所有的点都是基于第一个点
    // 其他点都是为了确定第一个点的准确位置
    // wh
var point=images.findMultiColors(cap, "#ff0000", [[10,10,"ff0001"],[10,10,"ff0001"]],{
    region:[],
    threshold:0
})
if(point){
    toast("找到红,坐标为("+point.x+","+point.y+')')
    // break
}
sleep(1500)
}
```

**图片某个位置是否是特定色**

```js
    // xy
var point=images.detectsColors(img,"#ff0000",100 , 200, [threshold=16,algorithm = "diff"])
```

