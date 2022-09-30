set wver=Beta 2.1.0
set wvdate=2022.8.11
:go
if %1==wback goto wback
if %1==exit goto exit
if %1==dellog goto dlog
if %1==cls goto wcls
if %1==wver goto wver
if %1==sysver goto systemver
if %1==whelp goto whelp
echo [%date% %time%]输入非预设命令>>running.log
if exist plugins\%1 goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]正常返回>>running.log
admin back
:wopenplugin
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
echo test...
pause
:dlog
del running.log
exit
:exit
echo [%date% %time%]程序退出>>running.log
exit
:wcls
cls
goto wback
:wver
echo Wyfadmin 版本：%wver%
echo 语言:Chinese
echo 打包日期：%wvdate%
echo 版权所有 wyf9. 保留所有权.
echo 项目主页：https://github.com/wyf01239/wyfadmin
echo 联系方式：
echo 邮箱：wyf01299@163.com
echo [%date% %time%]显示版本信息>>running.log
goto wback
:systemver
ver
start %windir%\system32\winver.exe
goto wback
:whelp
echo None
echo [%date% %time%]显示内置帮助>>running.log
goto wback