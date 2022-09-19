;在活动窗口的某个区域搜索图像, 并在 FoundX 和 FoundY 中存储找到图像的左上角像素的 X 和 Y 坐标.
;ImageSearch, FoundX, FoundY, 0, 750, 150, 810, ./img/1.png	;查找 幻三 快捷键 位置	
;ImageSearch, FoundX, FoundY, 260, 580,410, 670, ./img/2.png	;查找 幻三 移动 位置	
ImageSearch, FoundX, FoundY, 260, 580,410, 670, ./img/3.png	;查找 原神 商店 位置	
sleep,1000
msgbox,%FoundX%, %FoundY%
sleep,2000
;click,%FoundX%, %FoundY%		;在活动窗口的位置点击



















Esc::ExitApp  ; 退出脚本
return
r::reload		;重新加载脚本
return
