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
echo [%date% %time%]执行非内部命令>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
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
:goto
echo [%date% %time%]等待命令>>running.log
set /p com=^>^>
echo [%date% %time%]执行命令:"%com%">>running.log
%0 %com%
exit
:wback
echo [%date% %time%]返回>>running.log
%0 wback
:wopenplugin
echo [%date% %time%]运行插件: "%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
:exit
echo [%date% %time%]程序退出>>running.log
exit
:wdellog
del running.log
exit
:wver
echo wyfadmin 版本：%wver%
echo 打包日期：%wvdate%
echo 版权所有 wyf9. 保留所有权.
echo 联系方式：
echo 邮箱: wyf01299@163.com
echo 网站: wyf9.bj.bcebos.com
echo [%date% %time%]显示版本信息>>running.log
goto wback
:whelp
echo 内部命令:
echo exit           退出程序
echo wdellog        删除日志文件(running.log)并退出
echo wver           显示版本信息
echo whelp          显示此帮助信息
echo wplugins       显示插件列表
echo [%date% %time%]显示内置帮助>>running.log
goto wback
:wsplugin
dir /a:-d-h-s /b plugins\
echo.
goto wback