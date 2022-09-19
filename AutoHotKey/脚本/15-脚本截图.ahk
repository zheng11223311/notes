;一种是调用window 自带的截图
;一种是调用自己安装的snipatse 截图工具,这里使用自己安装的工具

;msgbox,%A_ProgramFiles%		;C 盘下的po


;run,debug.exe,D:\

run,Snipaste.exe,D:\软件安装\Snipaste-1.16.2-x86		;启动截图工具
sleep,2000
;send,#d		;window+d 
send,{F1}		;发送工具自带的截图指令,需要使用{}
sleep,600		;需要时间延迟,否则工具不能及时响应指令
;send,{ctrl down}a{ctrl up}		;使用工具自带的截图区域全屏指令	
send,^a		;使用工具自带的截图区域全屏指令	
send,^s		;将截图保存
send,{enter}	;弹框回车确认保存截图
return














Esc::ExitApp  ; 退出脚本
return
r::reload		;重新加载脚本
return
