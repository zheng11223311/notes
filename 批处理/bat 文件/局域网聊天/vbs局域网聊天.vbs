set wsx=createobject("wscript.shell")
if wscript.arguments.count = 0 then  
  wsx.run _
  "cmd /c mode con cols=80 lines=25 &cscript //logo " _
  &wscript.scriptname & " 0",3
  wsx.run _
  "cmd /c mode con cols=80 lines=5 &title Inputbox &cscript //nologo " _
  &wscript.scriptname & " 1",3
  wscript.quit
elseif wscript.arguments(0) = 1 then
  call readinput()
  wscript.quit
elseif wscript.arguments(0) = 0 then
  call scroll()
  wscript.quit
end if

sub readinput()
bok="x:\chat\talk.x"
btalk="x:\chat\talk.txt"
aok="talk.x"
atalk="talk.txt"
set fs=createobject("scripting.filesystemobject")
if fs.fileexists(aok) then 
    fs.deletefile(aok)
else
    fs.createtextfile(aok)
end if

set writex=fs.createtextfile(atalk,true)
do
   wscript.stdout.write "say:"
   set inp=wscript.stdin
   inpinfo=inp.readline
   writex.writeline inpinfo
loop until inpinfo = "end"
wscript.sleep 1000
wscript.quit
end sub

sub scroll()
bok="x:\chat\talk.x"
btalk="x:\chat\talk.txt"
aok="talk.x"
atalk="talk.txt"
  set wsx=createobject("wscript.shell")
  set fs=createobject("scripting.filesystemobject")

  set output=wscript.stdout
  for i = 1 to 3 
    output.writeline ""
  next
  output.write "等待响应"

  if fs.fileexists(bok) then
     call wait(bok,true)       '因存在而等待
  else
     call wait(bok,false)      '因不存在而等待
  end if

  if fs.fileexists(aok) then 
    fs.deletefile(aok)
  else
    fs.createtextfile(aok)
  end if
  output.writeline "双方连接完成! " &vbcrlf & "对方: " &vbcrlf

  call wait(btalk,false)       '因不存在而等待
  
  set talkx=fs.opentextfile(btalk,1)
  set oursx=fs.opentextfile(atalk,1)
  do
    if talkx.atendofstream then
      wscript.sleep 800
    else
      info=talkx.readline
      output.writeline info
    end if
    if oursx.atendofstream = false then
     if oursx.readline = "end" then
       output.writeline "Closing..."
       wscript.sleep 1000
       wscript.quit
     end if
    end if
  loop until info = "end"
  output.writeline "Script: He was close the chatbox. "
  output.writeline "Script: Input 'end' (at smallbox) and press enter to exit..."
  while oursx.atendofstream = true
    wscript.sleep 800
  wend
  wscript.quit
end sub

sub wait(filename,have)
  set fs=createobject("scripting.filesystemobject")
  set output=wscript.stdout  
  while fs.fileexists(filename) = have
     output.write "."
     wscript.sleep 1000
  wend
End sub
