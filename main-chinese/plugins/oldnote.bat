@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
echo 您正在使用旧版本的提示插件 新版本:notes  by wyf9
if not exist plugins\notes\ md plugins\notes\
echo.
if "%1"=="" goto help
if "%1"==" " goto help
if %1==help goto help
if %1==read goto read
if %1==new goto new
if %1==del goto delnote
if %1==all goto all
if %1==exit admin wback
goto end
:help
echo 命令:
echo help   显示此提示
echo new    创建一条提示 (note new 名称 内容).
echo read   读取提示 (note read 名称).
echo del    删除提示 (note del 名称).
echo all    显示所有提示(dir).
echo.
goto end
echo.
:new
echo %3>plugins\notes\note_%2.txt
echo 已创建一条提示: "%2" ,内容: "%3" ,位于 "%cd%\plugins\notes\note_%2.txt".
echo.
goto end
:delnote
echo 内容:
type plugins\notes\note_%2.txt
echo.
del plugins\notes\note_%2.txt
echo 已删除提示 "%2".
echo.
goto end
:read
echo "%2" 的内容:
type plugins\notes\note_%2.txt
echo.
goto end
:all
echo 提示列表:
dir /a:-d-h-s /b plugins\notes
echo.
goto end
:end
rem ----------
admin wback