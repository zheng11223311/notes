Set WshShell = WScript.CreateObject("Wscript.Shell")
WshShell.AppActivate"Íø¹Ü" 
for i = 1 to 99
WScript.sleep 300
WshShell.Sendkeys "^v" 
WshShell.Sendkeys i 
WshShell.Sendkeys"%s"  
Next