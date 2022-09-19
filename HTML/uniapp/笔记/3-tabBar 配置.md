### 配置tabBar

**配置tabbar**

如果应用是一个多tab 应用,可以通过tabBar 配置指定的tab 栏的表现,以及tab 切换时显示的对应页

**Tips**

- 当设置position 为top 时,将不会显示icon
- tabBar 中的list 是一个数组,只能配置最少2个,最多5个tab,tab 按照数组的顺序排序

**属性说明**

| 属性            | 类型     | 必填 | 默认值 | 描述                                            | 平台差异说明              |
| --------------- | -------- | ---- | ------ | ----------------------------------------------- | ------------------------- |
| color           | HexColor | 是   |        | tab 上的文字默认颜色                            |                           |
| selectedColor   | HexColor | 是   |        | tab 上的文字选中时的颜色                        |                           |
| backgroundColor | HexColor | 是   |        | tab 的背景色                                    |                           |
| borderStyle     | String   | 否   | black  | tab 上边框的颜色,仅支持black/white              | App 2.3.4+ 支持其他颜色值 |
| list            | Array    | 是   |        | tab 的列表,详见list 属性说明,最少2个,最多5个tab |                           |
| position        | String   | 否   | bottom | 可选值 bottom,top                               | top 仅支持微信小程序      |

其中list 接收一个数组,数组中的每个项都是一个对象,其属性值如下:

| 属性             | 类型   | 必填 | 说明                                                         |
| ---------------- | ------ | ---- | ------------------------------------------------------------ |
| pagePath         | String | 是   | 页面路径,必须在pages 中先定义                                |
| text             | String | 是   | tab 上按钮文字,在5+App 和H5 平台为非必,例如中间可以放一个没有文字的的+号图标 |
| iconPath         | String | 否   | 图片路径,icon 大小限制为40kb,建议尺寸为81px*81px,当position 为top 时,此参数无效,不支持网络图片,不支持字体图标 |
| selectedIconPath | String | 否   | 选中时的图标路径,icon 大小限制为40kb,建议尺寸为81px*81px,当position 为top 时,此参数无效, |

**pages.json**

```json
{
	"pages": [ //pages数组中第一项表示应用启动页，参考：https://uniapp.dcloud.io/collocation/pages
	// 第一个对象 中的path 代表首页
		{
			"path": "pages/message/message", //pages下message 下的message.vue 页面文件
			"style":{
				"navigationBarTitleText":"信息页",
				"navigationBarBackgroundColor":"#007AFF",
				"h5":{
					// 设置H5 的样式
					"pullToRefresh":{	//设置下拉属性
						"color":"#aaaaaa"	//下拉刷新时的颜色
					}
				}
			}
		},
		{
			"path": "pages/index/index",	//pages下index 下的index.vue 页面文件
			"style": {
				// "navigationBarTitleText": "uni-app"		//页面的导航栏文字,设置后全局的导航栏文字 失效,使用页面的导航栏文字
			}
		},
		{
			"path": "pages/my/my",	//pages下index 下的index.vue 页面文件
			"style": {
				"navigationBarTitleText": "我的"		//页面的导航栏文字,设置后全局的导航栏文字 失效,使用页面的导航栏文字
			}
		}
		
	],
	"globalStyle": {
		"navigationBarTextStyle": "white",		//导航栏文字颜色
		"navigationBarTitleText": "开发小程序",	//导航栏文字
		"navigationBarBackgroundColor": "#7fff00",		//导航栏颜色
		"backgroundColor": "#F8F8F8",	//下拉背景色	//下拉再小程序上会显示
		"enablePullDownRefresh":true,	//全局开启下拉
		"backgroundTextStyle":"light"	//下拉刷新的颜色
	},
	"tabBar":{
		"color":"#aa386f",	//tabbar 中文字的颜色
		"selectedColor":"#ddbe4c",	//选中时的颜色
		"backgroundColor":"#e1fff1",	//tabbar 背景颜色
		"borderStyle":"white",	//tabbar 上边框颜色,仅支持App 修改颜色
		// "position":"top",   //tabbar 在顶部显示
		"list":[	//tabbar 显示
			{
				"text":"首页",	//tabbar 文字
				"pagePath":"pages/index/index",  //需要显示的页面
				"iconPath":"static/tab/首页.png",	//图标
				"selectedIconPath":"static/tab/首页s.png"  //选中时的图标
			},{
				"text":"分类",
				"pagePath":"pages/message/message",
				"iconPath":"static/tab/分类.png",
				"selectedIconPath":"static/tab/分类s.png"
			},{
				"text":"我的",
				"pagePath":"pages/my/my",
				"iconPath":"static/tab/用户.png",
				"selectedIconPath":"static/tab/用户s.png"
			}
			
		]
	}
}

```

