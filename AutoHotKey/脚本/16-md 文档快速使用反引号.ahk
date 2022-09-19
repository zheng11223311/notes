$`::  				;$ 避免send 发送r 字母时触发,手动按下r 键才会触发,
				;$ 前缀强制使用键盘钩子来实现此热键,作为副作用这样阻止了 Send 命令触发它自己
;msgbox,执行反引号
;tooltip,哈哈哈
;send,{ctrl down}d{ctrl up}		;执行单词选中
send,{ctrl down}x{ctrl up}		;执行剪切功能,需要在此之前已经选中文字
send,``				;写入``  因为`具有转义功能,转义之后为`
send,{ctrl down}v{ctrl up}		;执行粘贴功能
send,``				;写入``  因为`具有转义功能,转义之后为`
return















Esc::ExitApp  ; 退出脚本
return
;r::reload		;重新加载脚本
return
