;所有的脚本文件(.ahk)统一使用带BOM的UTF-8格式
msgbox 重新加载脚本	
^!r::Reload  		; Ctrl+Alt+R	;重新加载后, 中文输出会变成乱码
Sleep 1000 		; 如果成功, 则 reload 会在 Sleep 期间关闭这个实例, 所以下面这行语句永远不会执行.
Result := MsgBox "这个脚本重新加载失败,你是否需要重新编辑?",, 4
if Result = "Yes"
    Edit
return