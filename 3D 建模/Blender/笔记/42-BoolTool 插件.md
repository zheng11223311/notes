### BoolTool 插件

Bool Tool 插件,布尔插件

用于对两个模型做交,并,差运算



交集:A+B

并集:AnB

差集:A-B



偏好设置，启用Bool Tool 插件

1. 先选圆柱体，再加上正方体
   1. 则Active =正方体，Selected=圆柱体
2. 按 n 键，打开右侧边栏，编辑->BoolTool
   1. ![](D:\学习\wanye\3D 建模\Blender\笔记\img\42-1.png)
   2. Diference 差集 A-B
      1. ![](D:\学习\wanye\3D 建模\Blender\笔记\img\42-2.png)
   3. Union 并集 A+B， 正方体中间空的部分依然是空心的
      1. ![](D:\学习\wanye\3D 建模\Blender\笔记\img\42-3.png)
   4. Intersect 交集AnB
   5. Slice 切片
      1. 正方体存在，但是被切掉圆柱体部分
      2. 圆柱体存在，但是被切除漏出的部分
      3. ![](D:\学习\wanye\3D 建模\Blender\笔记\img\42-4.png)



###### 要点与细节：

除BoolTool 之外，还有 布尔修改器 等其他地方也是布尔运算