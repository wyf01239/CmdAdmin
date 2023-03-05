set wver=Beta 0.3.1
set wvdate=2022.10.20
:go
echo [%date% %time%]Command:%1 %2 %3 %4 %5 %6 %7 %8 %9>>running.log
if %1==exit goto exit
if %1==wdellog goto dlog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==wplugins goto wsplugin
echo [%date% %time%]Input other command>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]Back>>running.log
admin back
:wopenplugin
echo [%date% %time%]Run plugin: "%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:dlog
del running.log
:exit
echo [%date% %time%]Program exit>>running.log
exit
:wver
echo wyfadmin version %wver%
echo Bulit Date: %wvdate%
echo Copyright wyf9. All Rights Reserved.
echo Project Home: https://github.com/wyf01239/wyfadmin
echo Contact:
echo email: wyf01299@163.com
echo.
echo [%date% %time%]Show version info>>running.log
goto wback
:whelp
echo Commands:
echo exit        Close this program.
echo wdellog      Delete "running.log" and exit.
echo wver        Show version info.
echo whelp       Show this help.
echo wplugins    Show plugins list.
echo.
echo [%date% %time%]Show helps>>running.log
goto wback
:wsplugin
echo.
echo Plugins list:
dir /a:-d-h-s /b plugins\
echo.
goto wback
