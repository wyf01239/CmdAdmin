@echo off
set wver=Beta 0.3.1
set wvdate=2022.11.13
title wyfadmin
if %1==launch goto go
if %1==wback goto goto
if %1==exit goto exit
if %1==wdellog goto wdellog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==wplugins goto wsplugin
echo [%date% %time%]Input other command>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
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
set /p com=^>
echo [%date% %time%]Command:"%com%">>running.log
%0 %com%
exit
:wback
echo [%date% %time%]Back>>running.log
%0 wback
:wopenplugin
echo [%date% %time%]Run plugin "%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:exit
echo [%date% %time%]Program exit>>running.log
exit
:wdellog
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
echo helps:
echo exit         Close this program.
echo wver         Show version info.
echo whelp        Show helps.
echo wdellog      Delete "running.log" and exit.
echo wplugins     Show plugins list.
echo [%date% %time%]Show helps>>running.log
goto wback
:wsplugin
echo plugins:
dir /a:-d-h-s /b plugins\
goto wback