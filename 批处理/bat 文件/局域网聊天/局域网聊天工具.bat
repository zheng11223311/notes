@echo off

title ���������칤��
color 1f 
MODE con: COLS=54 lines=34

:choose
cls
echo\
echo       ������������������������������������������
echo       ��                                      ��   
echo       ��            ���������칤��            ��
echo       ��         copyright by jellord         ��
echo       ������������������������������������������
echo\
echo.
echo    ===============================================
echo.
echo        ʹ�ñ����������ȷ�����ļ�����Ѿ�������
echo        windows��ʹ���񣬷����밴�����·�������:
echo.
echo        1.�����п�������net start messenger;
echo        2.�ڿ�������н����������� Ȼ�����
echo          ������� �ҵ�messege��������֮��
echo.
echo    ===============================================
echo.


set /p choose=��ѡ��(1/�˳�����������ʹ����;2/����):
if /i "%choose%"=="1" goto
if /i "%choose%"=="2" goto 2
echo.
echo. ---------������������ԣ�----------&&echo.&&pause&&goto choose


:2
cls
echo\
echo       ������������������������������������������
echo       ��                                      ��
echo       ��            ���������칤��            ��
echo       ��         copyright by jellord         ��
echo       ������������������������������������������
echo\
echo ����ɨ������������û������Ե�...
echo.
echo /////////////////////////////////////////////////////
echo               IP              �������
setlocal enabledelayedexpansion
net view|find "\\">lan.txt
for /f "usebackq" %%j in ('lan.txt') do (
  if "%%~zj"=="0" (
     echo           �Բ���Ŀǰû�л�Ծ�û����ߣ�
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
echo ������ʾ����Ŀǰ�������ڵ������û�
echo.

rem ============================================================================================
rem ����б��֮�䲿��Ҳ����������Ĵ���ʵ��ͬ���Ĺ��ܣ�ͬʱ�����������ʱ�Ե��ı��ļ���
rem setlocal enabledelayedexpansion
rem net view|find "\\">nul||echo           �Բ���Ŀǰû�л�Ծ�û����ߣ�
rem for /f "tokens=1" %%i in ('net view ^| find "\\"') do (
rem     set co=%%i
rem     set co=!co:\\=!
rem     for /f "tokens=2,3 delims= " %%a in ('ping -w 1 -n 1 !co! ^| find /I "!co!"') do if not %%b"=="could" echo       %%b       %%a
rem     for /f "tokens=2,3 delims= " %%a in ('ping -w 1 -n 1 !co! ^| find /I "!co!"') do if not %%b"=="could" echo       %%b       %%a>>ip.txt
rem )
rem pause
rem ============================================================================================

:user
set /p u=��ѡ���Ͷ�����û�����ip(ע���Сд):
echo.
type ip.txt|find "%u%">nul||echo. -----------���벻��ɨ�����У������ԣ�------------&&echo.&&goto user

:main
cls
echo.
echo       ������������������������������������������
echo       �� 1: ������Ϣ     3: ����ѡ���Ͷ���  ��
echo       �� 2: �鿴�����¼ 4:����ɨ�������     ��
echo       ��            0: �˳�����               ��
echo       ������������������������������������������
echo.
echo             ����ǰ���ں� %u% ������...
echo.
set /p c=����������ѡ��:
if /i "%c%"=="4" del /q ip.txt&&cls&&goto 2
if /i "%c%"=="3" cls&&echo.-----------------------------------------------------&&echo.�ϴ�ɨ��������û���ʾ����:&&type ip.txt&&echo.&&goto user
if /i "%c%"=="0" if exist ip.txt del /q ip.txt&&goto
if /i "%c%"=="2" goto 3
if /i "%c%"=="1" goto work
echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
echo                    ����ѡ����ȷ��
echo                      ������ѡ��
echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
pause
goto main

:work
echo.-----------------------------------------------------
set /p m=�������㽫Ҫ���͵���Ϣ:
echo ����%date% %time%��%u%˵: %m%>>messege.txt
echo. ���ڷ�����Ϣ�����Ե�...
net send %u% %m%
pause
goto main

:3
echo.-----------------------------------------------------
set /p t=��ѡ��(1/��ǰ������ʾ;2/�½�������ʾ):
if "%t%"=="1" goto t
if "%t%"=="2" goto s
echo -----------------------------------------------------
echo                      �����ѡ��
goto 3

:t
cls
echo.-----------------------------------------------------
type messege.txt|more&pause
goto main

:s
start messege.txt
goto main
