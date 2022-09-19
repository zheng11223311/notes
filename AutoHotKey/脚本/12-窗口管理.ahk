Run, notepad.exe

WinWaitActive, 无标题 - 记事本	;暂停脚本的执行,等待窗口的出现

WinSetTitle, This is a new title ; Use the window found by WinWaitActive.



















Esc::ExitApp  ; 退出脚本
return
r::reload		;重新加载脚本
return
