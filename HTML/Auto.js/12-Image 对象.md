### 1.Image 对象

地址:[图片与颜色 - Images (autojs.org)](https://pro.autojs.org/docs/#/zh-cn/images?id=image)

# [Image](https://pro.autojs.org/docs/#/zh-cn/images?id=image)

表示一张图片，可以是截图的图片，或者本地读取的图片，或者从网络获取的图片。

## [Image.getWidth()](https://pro.autojs.org/docs/#/zh-cn/images?id=imagegetwidth)

返回以像素为单位图片宽度。

## [Image.getHeight()](https://pro.autojs.org/docs/#/zh-cn/images?id=imagegetheight)

返回以像素为单位的图片高度。

## [Image.saveTo(path)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagesavetopath)

- `path` {string} 路径

把图片保存到路径path。（如果文件存在则覆盖）

## [Image.pixel(x, y)](https://pro.autojs.org/docs/#/zh-cn/images?id=imagepixelx-y)

- `x` {number} 横坐标
- `y` {number} 纵坐标

返回图片image在点(x, y)处的像素的ARGB值。

该值的格式为0xAARRGGBB，是一个"32位整数"(虽然JavaScript中并不区分整数类型和其他数值类型)。

坐标系以图片左上角为原点。以图片左侧边为y轴，上侧边为x轴。

## 

# [Point](https://pro.autojs.org/docs/#/zh-cn/images?id=point)

findColor, findImage返回的对象。表示一个点（坐标）。

## [Point.x](https://pro.autojs.org/docs/#/zh-cn/images?id=pointx)

横坐标。

## [Point.y](https://pro.autojs.org/docs/#/zh-cn/images?id=pointy)

纵坐标。

# [ColorMapping](https://pro.autojs.org/docs/#/zh-cn/images?id=colormapping)

通过颜色映射的实现一种找色方式，对于同一张图找多次色，每次找色相比images模块里的函数非常快，只是需要相比一般找色需要一个初始化过程。

注意！ColorMapping仅能使用**截图的图片对象**初始化颜色映射。

初始化方式：

```javascript
// 申请截图权限
$images.requestScreenCapture();
// 初始化ColorMapping
let ColorMapping = $colors.mapping;
// 创建ColorMapping实例
let cm = new ColorMapping();
// 截屏
let img = $images.captureScreen();
// 初始化颜色映射
cm.reset(img);
// 使用完后及时回收
cm.recycle();
```

如果不想手动回收，可以用ColorMapping的单例，这个单例会自动在脚本结束时回收。

```javascript
// 申请截图权限
$images.requestScreenCapture();
// 初始化ColorMapping
let ColorMapping = $colors.mapping;
// 创建ColorMapping实例
let cm = ColorMapping.singleton;
// 截屏
let img = $images.captureScreen();
// 初始化颜色映射
cm.reset(img);
// 找色
cm.findColor("#ffffff")
```

**示例:**

```js

var img = images.read("/storage/emulated/0/1.jpeg");

if(img){
    var w=img.getWidth()
    var h=img.getHeight()
    log(w,h)  //3456 5184
}


toast('获取图片的大小');

var color=img.pixel(10,10)
log(color)   // -3750210  返回argb 值
// 转换成字符串颜色
log(colors.toString(color))  //#ffc6c6be
img.recycle();
```

