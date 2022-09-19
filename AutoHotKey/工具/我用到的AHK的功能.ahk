﻿;======================快捷启动================================
;第一种,快捷启动网站
^+b:: run, https://www.bilibili.com/	;打开B站
^+i:: run, https://www.iqiyi.com/	;打开爱奇艺
^+t:: run, https://v.qq.com/		;打开腾讯视频
^+y:: run, https://www.youku.com/	;打开优酷
^+v:: run, http://v.baidu.com/

;第二种快捷启动
+k::run,control 	;打开控制面板
+p::run,G:\Sofewile\Adobe Photoshop CC 2018 v19.0.0.24821 x64 Portable\PhotoshopPortable.exe
+l::run,C:\Program Files\Listen1\Listen1.exe
+n::run,C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Notepad++.lnk
+b::run,G:\Sofewile\BandicamPortable\Bandicam_Portable.exe
+[::run,G:\Sofewile\Adobe Premiere Pro 2020 SP\Adobe Premiere Pro 2020\Adobe Premiere Pro.exe

;======================热键缩写================================
;第一种是输入很短的字符显示很长的字符(`n是换行的符号)
::slf::Select * From `nWhere `nAnd `nGroup by `nOrder by `nlimit `n

::yym::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm:ss ; 形式：晏犹眠08月16-11点-43-51短片
SendInput 晏犹眠 %CurrentDateTime% 短片
return

;第二种是输入快捷键显示一段话
^j::
Send,Hello,大家好,我是晏犹眠 `n谢谢你观看我的视频,如果喜欢请点赞支持一下 `n我跟大家念首诗: `n处穷上策更谁如,日晏犹眠为腹虚
return


;==选中关键字后,同时按下win+b，打开百度搜索===============================
#b::  			;win+b
	Send ^c   	;输入 ctrl+c
	sleep,100  	;等待100毫秒
	;根据选中的内容打开百度搜索
	run https://www.baidu.com/s?ie=utf-8&f=8&rsv_bp=1&rsv_idx=1&tn=92765401_hao_pg&wd=%clipboard%  
return

!x:: send !{f4}		;关闭窗口
#m:: WinMinimize, A	;窗口最小化
^+delete::FileRecycleEmpty 	;清空回收站

;=============无敌工作神器之终极计时器===============================
#+t:: 
var := 0
InputBox, time, 晏犹眠, 请输入一个时间（单位是分）
time := time*60000
Sleep,%time%
loop,16
{
var += 180
SoundBeep, var, 500
}
msgbox 时间到，啊啊啊！！！晏犹眠,快点!!!!
return


;=========================================================
~lbutton & enter:: ;鼠标放在任务栏，滚动滚轮实现音量的加减
exitapp  
~WheelUp::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Up}  
Return  
~WheelDown::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Down}  
Return  
~MButton::  
if (existclass("ahk_class Shell_TrayWnd")=1)  
Send,{Volume_Mute}  
Return  

Existclass(class)  
{  
MouseGetPos,,,win  
WinGet,winid,id,%class%  
if win = %winid%  
Return,1  
Else  
Return,0  
}

;========颜色拾取=获取RGB色===================================
#+p::
    MouseGetPos, mouseX, mouseY
    ; 获得鼠标所在坐标，把鼠标的 X 坐标赋值给变量 mouseX ，同理 mouseY
    PixelGetColor, color, %mouseX%, %mouseY%, RGB
    ; 调用 PixelGetColor 函数，获得鼠标所在坐标的 RGB 值，并赋值给 color
    StringRight color,color,6
    ; 截取 color（第二个 color）右边的6个字符，因为获得的值是这样的：#RRGGBB，一般我们只需要 RRGGBB 部分。把截取到的值再赋给 color（第一个 color）。
    clipboard = #%color%	;把 color 的值发送到剪贴板    
    ;msgbox 当前坐标RGB颜色值的十六进制值为#%color%.
return

;========文本操作命令================================
#+c:: ;用快捷键得到当前选中文件的路径
send ^c
sleep,200
clipboard=%clipboard% ;windows 复制的时候，剪贴板保存的是“路径”。只是路径不是字符串，只要转换成字符串就可以粘贴出来了
tooltip,%clipboard% ;提示文本
sleep,500
tooltip,
return

#+m:: ;复制当前鼠标所在文件文件名
;请将你的鼠标放在目标文件位置，即将为你复制其文件名
mouseclick, right
send,m
send,^c
send, {enter}
tooltip,已将鼠标所在文件名复制到剪切板
sleep, 1500
tooltip,
return

#+n:: ;将鼠标所在文件重命名为剪切板内容
clipboard = %clipboard%   ; 把任何复制的文件, HTML 或其他格式的文本转换为纯文本
send,{F8}
sleep,100
mouseclick, right
send,m
send,^v
send, {enter}
tooltip,已为你将鼠标所在文件重命名为剪切板内容
sleep, 1500
tooltip,
return

:*:111:: ;无损删除当前行
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
return

:*:222:: ;无损删除当前行
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
return

:*:333:: ;无损删除当前行
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
send,{end}{shiftdown}{home}{shiftup}{delete}{delete}
return

:*:ddd:: ;键盘秘技之剪切当前行
send,{home}{shiftdown}{end}{shiftup}
send,^x
clipboard = %clipboard%   ; 把任何复制的文件, HTML 或其他格式的文本转换为纯文本
return


;======键盘映射========================================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
;在这里设置快捷键 比如讲小键盘Numpad7 修改成a键可以添加：Numpad7::a
Numpad7::a
Numpad8::b
Numpad9::c





;======重复执行======================================
f1::
	Sleep,300
	loop,1000 ;逗号后面的是重复执行次数,我设置了1000,不设置就一直执行
	{
	click
	Sleep,100
	if GetKeyState("f1")
	{
	break
	}
	}
return
