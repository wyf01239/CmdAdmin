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
echo [%date% %time%]输入非预设命令>>running.log
%1 %2 %3 %4 %5 %6 %7 %8 %9
goto back
:go
echo ==========>>running.log
echo [%date% %time%]程序启动>>running.log
echo [%date% %time%]语言:Chinese(中文)>>running.log
echo [%date% %time%]版本号:%wver%>>running.log
echo Wyfadmin 版本：%wver%.
echo 版权所有 wyf9. 保留所有权.
echo 系统时间；%date% %time%
echo [%date% %time%]正常启动>>running.log
:goto
echo [%date% %time%]等待命令>>running.log
set /p com=^>^>
echo [%date% %time%]执行命令:"%com%">>running.log
%0 %com%
exit
:back
echo [%date% %time%]无错误返回>>running.log
%0 back
:exit
echo [%date% %time%]程序退出>>running.log
exit
:dlog
del running.log
exit
:cls
cls
goto back
:wyfver
echo wyfadmin 版本：%wver%
echo 打包日期：%wvdate%
echo 版权所有 wyf9. 保留所有权.
echo 联系方式：
echo 邮箱：wyf01299@163.com
echo 网站：wyf9.bj.bcebos.com
echo [%date% %time%]显示版本信息>>running.log
goto back
:systemver
ver
start %windir%\system32\winver.exe
goto back
:wyfhelp
echo None
echo [%date% %time%]显示内置帮助>>running.log
goto back

