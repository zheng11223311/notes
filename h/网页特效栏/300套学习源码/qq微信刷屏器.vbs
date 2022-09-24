Set WshShell= WScript.CreateObject("WScript.Shell")
WshShell.AppActivate"老婆大人"
for i=1 to 10
WScript.Sleep 99
WshShell.Sendkeys"^v"
WshShell.Sendkeys i
WshShell.Sendkeys "%s"
Next