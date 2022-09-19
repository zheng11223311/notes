

;MyGui :=MyGui().Add("Text", "", "Click here to launch Google.")		;不兼容新版本语法
;FakeLink := MyGui.Add("Text", "", "Click here to launch Google.")
;FakeLink.SetFont("underline cBlue")
;FakeLink.OnEvent("Click", LaunchGoogle)




;gui, font,cffff s20, Verdana  ; 		;为在此处之后创建的控件设置字体字型, 大小, 样式和/或颜色.
; c 颜色 s 字体大小

;Gui, Color, #fff			;窗口颜色

;Gui,Add,Text,, 请输入你的名字:		;gui 图形界面,add 添加控件, 添加为文本 text ,

;Gui, Submit 
;Gui, Show,x10 y10 w100 h100  
;Gui, Show 			;最后使用show 展示界面

;gui,+AlwaysOnTop			;窗口置顶

;Gui, Destroy			;销毁当前窗口

;#Persistent
;ToolTip, 嘿嘿`n哈哈, 100, 150		;提示工具,相对于顶层的窗口的 x100 y150

;SetTimer,RemoveToolTip, -5000	;一段时间后移除提示,RemoveToolTip 跳转到标签RemoveToolTip

;RemoveToolTip:
;ToolTip	;内容为空即移除
;return


;系统通知
TrayTip #1, 这是通知消息 #1
Sleep 3000   ; 让它显示 3 秒钟.
HideTrayTip()
TrayTip #2, This is the second notification.
Sleep 3000

TrayTip, My Title, Multiline`nText, 20, 17			;在托盘图标附近显示多行气球消息或 toast 通知 20 秒, 而不播放通知声音. 它也有一个标题并包含一个信息图标.
; 将此函数复制到脚本中使用.
HideTrayTip() {
    TrayTip  ; 尝试以正常的方式隐藏它.
    if SubStr(A_OSVersion,1,3) = "10." {
        Menu Tray, NoIcon
        Sleep 200  ; 可能有必要调整 sleep 的时间.
        Menu Tray, Icon
    }
}

Esc::ExitApp  ; 退出脚本
return
r::reload		;重新加载脚本
return



