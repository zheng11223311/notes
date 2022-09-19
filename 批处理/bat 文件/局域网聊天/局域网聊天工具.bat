@echo off

title 局域网聊天工具
color 1f 
MODE con: COLS=54 lines=34

:choose
cls
echo\
echo       ┏━━━━━━━━━━━━━━━━━━━┓
echo       ┃                                      ┃   
echo       ┃            局域网聊天工具            ┃
echo       ┃         copyright by jellord         ┃
echo       ┗━━━━━━━━━━━━━━━━━━━┛
echo\
echo.
echo    ===============================================
echo.
echo        使用本软件您必须确保您的计算机已经启动了
echo        windows信使服务，否则请按照以下方法开启:
echo.
echo        1.在运行框中输入net start messenger;
echo        2.在控制面板中进入计算机管理， 然后进入
echo          服务程序， 找到messege服务并启动之。
echo.
echo    ===============================================
echo.


set /p choose=请选择(1/退出程序启动信使服务;2/继续):
if /i "%choose%"=="1" goto
if /i "%choose%"=="2" goto 2
echo.
echo. ---------输入错误，请重试！----------&&echo.&&pause&&goto choose


:2
cls
echo\
echo       ┏━━━━━━━━━━━━━━━━━━━┓
echo       ┃                                      ┃
echo       ┃            局域网聊天工具            ┃
echo       ┃         copyright by jellord         ┃
echo       ┗━━━━━━━━━━━━━━━━━━━┛
echo\
echo 正在扫描局域网在线用户，请稍等...
echo.
echo /////////////////////////////////////////////////////
echo               IP              计算机名
setlocal enabledelayedexpansion
net view|find "\\">lan.txt
for /f "usebackq" %%j in ('lan.txt') do (
  if "%%~zj"=="0" (
     echo           对不起，目前没有活跃用户在线！
) else (
  for /f "tokens=1" %%i in (lan.txt) do (
     set co=%%i
     set co=!co:\\=!
     ping -w 1 -n 1 !co!|find /I "!co!">ping.txt
     for /f "tokens=2,3 delims= " %%a in (ping.txt) do if not "%%b"=="could" echo       %%b       %%a
     for /f "tokens=2,3 delims= " %%a in (ping.txt) do if not "%%b"=="could" echo       %%b       %%a >>ip.txt
        )
    )
)
if exist lan.txt del /q lan.txt&if exist ping.txt del /q ping.txt
echo.
echo /////////////////////////////////////////////////////
echo 以上显示的是目前局域网内的在线用户
echo.

rem ============================================================================================
rem 以上斜线之间部分也可以用下面的代码实现同样的功能，同时还不会产生临时性的文本文件。
rem setlocal enabledelayedexpansion
rem net view|find "\\">nul||echo           对不起，目前没有活跃用户在线！
rem for /f "tokens=1" %%i in ('net view ^| find "\\"') do (
rem     set co=%%i
rem     set co=!co:\\=!
rem     for /f "tokens=2,3 delims= " %%a in ('ping -w 1 -n 1 !co! ^| find /I "!co!"') do if not %%b"=="could" echo       %%b       %%a
rem     for /f "tokens=2,3 delims= " %%a in ('ping -w 1 -n 1 !co! ^| find /I "!co!"') do if not %%b"=="could" echo       %%b       %%a>>ip.txt
rem )
rem pause
rem ============================================================================================

:user
set /p u=请选择发送对象的用户名或ip(注意大小写):
echo.
type ip.txt|find "%u%">nul||echo. -----------输入不在扫描结果中，请重试！------------&&echo.&&goto user

:main
cls
echo.
echo       ┏━━━━━━━━━━━━━━━━━━━┓
echo       ┃ 1: 发送信息     3: 重新选择发送对象  ┃
echo       ┃ 2: 查看聊天记录 4:重新扫描局域网     ┃
echo       ┃            0: 退出程序               ┃
echo       ┗━━━━━━━━━━━━━━━━━━━┛
echo.
echo             您当前正在和 %u% 聊天中...
echo.
set /p c=请做出您的选择:
if /i "%c%"=="4" del /q ip.txt&&cls&&goto 2
if /i "%c%"=="3" cls&&echo.-----------------------------------------------------&&echo.上次扫描的在线用户显示如下:&&type ip.txt&&echo.&&goto user
if /i "%c%"=="0" if exist ip.txt del /q ip.txt&&goto
if /i "%c%"=="2" goto 3
if /i "%c%"=="1" goto work
echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
echo                    您的选择不正确！
echo                      请重新选择
echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
pause
goto main

:work
echo.-----------------------------------------------------
set /p m=请输入你将要发送的信息:
echo 你于%date% %time%对%u%说: %m%>>messege.txt
echo. 正在发送信息，请稍等...
net send %u% %m%
pause
goto main

:3
echo.-----------------------------------------------------
set /p t=请选择(1/当前窗口显示;2/新建窗口显示):
if "%t%"=="1" goto t
if "%t%"=="2" goto s
echo -----------------------------------------------------
echo                      错误的选择！
goto 3

:t
cls
echo.-----------------------------------------------------
type messege.txt|more&pause
goto main

:s
start messege.txt
goto main
