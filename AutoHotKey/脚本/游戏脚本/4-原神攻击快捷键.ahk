;sleep,2000
;msgbox,2312312
;sleep,2000
;IfWinActive,*无标题 - 记事本
;{
;msgbox,22222222222
;sleep,2000
;send,123
;}

;按8 即一直慢跑,按w停止慢跑
Numpad8::	
Send, {w down}
;MouseClick [, WhichButton, X, Y, ClickCount, Speed, DownOrUp, Relative]
;MouseClick, , 0, -200, , 0, U, R
Return




Numpad1::
IfWinActive,原神	;如果原神窗口处于激活状态,就使用下面热键,激活即处于最前的窗口
{
;--------------------角色1 操作--------------------------------------
Send,1		;切换到1 角色
sleep,600
Send,{e down}	;放小招
sleep,1000
Send,{e up}

sleep,500
Send,{q}	;放大招
sleep,3000

;--------------------角色2 操作--------------------------------------
Send,2		;切换到2 角色
sleep,600
Send,{e}	;放小招
sleep,1000
Send,{e}

sleep,500
Send,{q}	;放大招
sleep,2000

;--------------------角色4 操作--------------------------------------
Send,4		;切换到4 角色
sleep,800
Send,{e down}	;e 放小招, 三段连续小招
sleep,200
Send,{e up}

sleep,600
Send,d{e down}	;放小招,d 向左移动
sleep,200
Send,{e up}	

sleep,500
Send,s{e down}	;放小招, s 向下移动
sleep,200
Send,{e up}
sleep,1000

;--------------------角色3 操作--------------------------------------
Send,{3}	;切换3 角色
sleep,200
Send,{e down}	;放小招
sleep,600
Send,{e up}

; 耗时13.5s 盾消失,切换钟离继续放盾
;--------------------角色1 操作--------------------------------------
sleep,500
Send,1		;切换到1 角色
sleep,600
Send,{e down}	;放小招
sleep,1000
Send,{e up}
sleep,500

;--------------------角色3 操作--------------------------------------
Send,{3}	;切换3 角色
sleep,200
Send,{e down}	;放小招
sleep,600
Send,{e up}
sleep,200
click 
sleep,200
click 
sleep,200
click 
sleep,200
click 
sleep,200
click 
sleep,200
click 
sleep,200
click 
sleep,200
click 
sleep,200
click 

Return
}

return		;每一个语句都要return ,否则下面的热键都会自动使用上





!::
MsgBox,!
Return

c::
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 
sleep,500
click 

return

alt::
send,{alt  down}

return

Esc::ExitApp  ; 退出脚本
return
r::reload		;重新加载脚本
return



