q::
Send, {Click 10 20 left}  ; 		左键点击100,200,坐标是以活动窗口为基础点的
run,1-第一个脚本.ahk
return

z::  ; Z 热键.
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox 当前位置颜色 %color%.
;msgbox,%color%="0xFFFFFF",
MouseMove,286, 361	;鼠标移动 横2 竖2
if(color!="0xFFFFFF"){
	;MsgBox 当前位置颜色 %color%.
	click
}
sleep,500
MouseMove,189, 414	;横1 竖3
if(color!="0xFFFFFF"){
	;MsgBox 当前位置颜色 %color%.
	click
}


sleep,500
MouseMove,189, 468 	;横1 竖4
if(color!="0xFFFFFF"){
	
	click
}

return


;提示
d::
str=c
showtext(str)
{
y := A_ScreenHeight - 88   ;;y is the y-coordinate of the prompting window
Gui,Destroy
Gui,+AlwaysOnTop +Disabled -Caption -SysMenu +Owner +LastFound
WinGet,hwnd,ID
Gui, font, s26 cFF0000 w600, Verdana
Gui, Color, FF0001
WinSet, TransColor, FF0001
Gui,Add,Text,BackgroundTrans,%str%
Gui, Show, NoActivate Y%y% NA, Title of Window
Sleep,1000
Gui,Destroy
}
showtext(str)
return





