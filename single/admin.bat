@echo off
set wver=Beta 2.1.0
set wvdate=2022.9.3
title wyfadmin
if %1==launch goto go
if %1==wback goto goto
if %1==exit goto exit
if %1==dellog goto dlog
if %1==wver goto wver
if %1==whelp goto whelp
echo [%date% %time%]Input other command>>running.log
%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
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
:wback
echo [%date% %time%]Back>>running.log
%0 wback
:exit
echo [%date% %time%]Program exit>>running.log
exit
:dlog
del running.log
exit
:wver
echo wyfadmin version %wver%
echo Bulit Date: %wvdate%
echo Copyright wyf9. All Rights Reserved.
echo Contact:
echo email: wyf01299@163.com
echo website: wyf9.bj.bcebos.com
echo [%date% %time%]Show version info>>running.log
goto wback
:whelp
echo None
echo [%date% %time%]Show helps>>running.log
goto wback

