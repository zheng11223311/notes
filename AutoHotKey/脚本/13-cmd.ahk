run cmd
sleep,2000
;sendinput,cd .. `n		;{} 内只能写一个按键,将特殊的按键转化,比如{ctrl} 表示为ctrl 而不是变成^ 触发热键

;SendInput {Raw}

sendinput,tree `n
SendRaw ,a

send,r		 ;send 无法触发r 热键
;send,$r	 ;send 无法触发r 热键



::a:: cccr













Esc::ExitApp  ; 退出脚本
return
$r::reload		;重新加载脚本,	$ 避免send 发送r 字母时触发,手动按下r 键才会触发,
;$ 前缀强制使用键盘钩子来实现此热键,作为副作用这样阻止了 Send 命令触发它自己
return
