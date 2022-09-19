FileEncoding,UTF-8
file := FileOpen("1.ahk", "w")
file.Write("`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`n`nEsc::ExitApp  `; 退出脚本`nreturn`nr::reload		`;重新加载脚本`nreturn`n")
file.Close()
