set wver=Beta 1.0.0
set wvdate=2022.8.11
:go
if %1==exit goto exit
if %1==dellog goto dlog
if %1==cls goto cls
if %1==wver goto wyfver
if %1==sysver goto systemver
if %1==whelp goto wyfhelp
echo [%date% %time%]Input other command>>running.log
%1 %2 %3 %4 %5 %6 %7 %8 %9
:back
if NOT %errorlevel%==0 goto err
:backto
echo [%date% %time%]No error>>running.log
admin back
:dlog
del running.log
:exit
echo [%date% %time%]Program exit>>running.log
exit
:cls
cls
goto back
:wyfver
echo wyfadmin version %wver%
echo Bulit Date: %wvdate%
echo Copyright wyf9. All Rights Reserved.
echo Project Home: https://github.com/wyf01239/wyfadmin
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
echo [%date% %time%]---------->>running.log
echo [%date% %time%]Error code:%errorlevel%>>running.log
echo.
echo Your program is experiencing a problem and needs to exit.
echo Press any key to exit the program.
echo If you need help, provide the developer with a running.log
echo error code: %errorlevel%
echo *** This feature is in beta
echo *** If you find that an error occurred while performing a system operation that caused the program to display this content, please submit the running.log to Issues
pause
echo [%date% %time%]Exit.>>running.log
exit