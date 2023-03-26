@echo off
title wyfadmin
set wver=Beta 0.4
if "%1"=="" goto goto
if "%1"==" " goto goto
if %1==launch goto go
if %1==wback goto goto
if %1==ioopen goto ioopen
:go
echo [%date% %time%]版本号:%wver%>>running.log
echo Wyfadmin 版本：%wver%.
echo 版权所有 wyf9. 保留所有权.
echo 系统时间: %date% %time%
echo [%date% %time%]正常启动>>running.log
:goto
echo [%date% %time%]等待命令>>running.log
set com=null
set /p com=^>^>
echo [%date% %time%]执行命令: "%com%">>running.log
io %com%
exit
:ioopen
echo [%date% %time%]*可能从io启动>>running.log
goto goto