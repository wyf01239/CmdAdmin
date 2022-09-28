@echo off
set wver=Beta 2.1.0
set wvdate=2022.9.3
title wyfadmin
if %1==launch goto go
if %1==back goto goto
if %1==exit goto exit
if %1==dellog goto dlog
if %1==cls goto cls
if %1==wver goto wyfver
if %1==sysver goto systemver
if %1==whelp goto wyfhelp
echo [%date% %time%]Input other command>>running.log
%1 %2 %3 %4 %5 %6 %7 %8 %9
goto back
:go
echo Wyfadmin Version %wver%.
echo Copyright wyf9. All Rights Reserved.
echo Now time:%date% %time%
echo [%date% %time%]==========>>running.log
echo [%date% %time%]Program starting>>running.log
echo [%date% %time%]Languang:English>>running.log
echo [%date% %time%]Version:%wver%>>running.log
echo [%date% %time%]Progran started>>running.log
:goto
echo [%date% %time%]Waiting command>>running.log
set /p com=^>^>
echo [%date% %time%]Command:%com%>>running.log
%0 %com%
:back
if NOT %errorlevel%==0 goto err
:backto
echo [%date% %time%]No error>>running.log
%0 back
:exit
echo [%date% %time%]Program exit>>running.log
exit
:dlog
del running.log
exit
:cls
cls
goto back
:wyfver
echo wyfadmin version %wver%
echo Bulit Date: %wvdate%
echo Copyright wyf9. All Rights Reserved.
echo Contact:
echo email: wyf01299@163.com
echo website: wyf9.bj.bcebos.com
echo [%date% %time%]Show version info>>running.log
goto back
:systemver
ver
start %windir%\system32\winver.exe
goto back
:wyfhelp
echo None
echo [%date% %time%]Show helps>>running.log
goto back
:err
if %errorlevel%==1 goto backto
if %errorlevel%==9009 goto backto
if %errorlevel%==9059 goto backto
if %errorlevel%==4 goto backto
echo.
echo [%date% %time%]---------->>running.log
echo [%date% %time%]Error code:%errorlevel%>>running.log
echo Your program is experiencing a problem and needs to exit.
echo Press any key to exit the program.
echo If you need help, provide the developer with a running.log
echo error code: %errorlevel%
echo *** This feature is in beta
echo *** If you find that an error occurred while performing a system operation that caused the program to display this content, please submit the running.log to Issues
pause
echo [%date% %time%]Exit.>>running.log
exit

if NOT %errorlevel%==0 goto err
