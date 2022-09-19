^j::			;  ^ 为ctrl 键, j 为 j 键
Run, Notepad.exe		;运行Notepad.exe
Send, My First Script	;热键,ctrl+j,在文本中会输入My First Script,不在文本中不会输出 ; 为注释符
Return			; Return 结束当前的热键操作,便于下文的内容作为下个热键的执行操作


::ftw::Free the whales	;热字替换,将输入的ftw 替换为Free the whales,   热字敲完后一定要敲回车键才能有效
Return

esc::
   MsgBox Escape!!!!		;按键ESC ,发出弹窗,内容为 Escape!!!!	
Return

::btw::			; 在 :: 前的表示是 热键, ::与:: 中间的是 热字
   MsgBox You typed "btw".		;输入btw 触发弹窗,热字也可以作为触发条件
Return