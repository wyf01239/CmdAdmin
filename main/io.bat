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
echo [%date% %time%]Back>>running.log
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
