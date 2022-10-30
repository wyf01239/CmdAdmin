@echo off
set wver=Beta 0.3.1
set wvdate=2022.10.29
title wyfadmin
if %1==launch goto go
if %1==wback goto command
if %1==exit goto exit
if %1==dellog goto dlog
if %1==wver goto wyfver
if %1==whelp goto whelp
echo [%date% %time%]输入非预设命令>>running.log
%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:go
echo ==========>>running.log
echo [%date% %time%]程序启动>>running.log
echo [%date% %time%]语言:Chinese(中文)>>running.log
echo [%date% %time%]版本号:%wver%>>running.log
echo Wyfadmin 版本：%wver%.
echo 版权所有 wyf9. 保留所有权.
echo 系统时间；%date% %time%
echo [%date% %time%]正常启动>>running.log
:command
echo [%date% %time%]等待命令>>running.log
set /p com=^>^>
echo [%date% %time%]执行命令:"%com%">>running.log
%0 %com%
exit
:wback
echo [%date% %time%]无错误返回>>running.log
%0 wback
:exit
echo [%date% %time%]程序退出>>running.log
exit
:dlog
del running.log
exit
:wyfver
echo wyfadmin 版本：%wver%
echo 打包日期：%wvdate%
echo 版权所有 wyf9. 保留所有权.
echo 联系方式：
echo 邮箱: wyf01299@163.com
echo 网站: wyf9.bj.bcebos.com
echo [%date% %time%]显示版本信息>>running.log
goto wback
:whelp
echo None
echo [%date% %time%]显示内置帮助>>running.log
goto wback

