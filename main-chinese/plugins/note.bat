rem 作者:wyf9 2022.10.3
set pluginname=%0
title Wyfadin - Plugin "%pluginname:plugins\=%"
rem ----------
if not exist plugins\notes\ md plugins\notes\
echo.
if %1==help goto help
if %1==read goto read
if %1==new goto new
if %1==del goto delnote
if %1==all goto all
if %1==exit admin back
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
echo.
echo 已创建一条提示: "%2" ,内容: "%3" ,位于 "%cd%\plugins\notes\note_%2.txt".
echo.
goto end
:delnote
echo.
echo 内容:
type plugins\notes\note_%2.txt
echo.
del plugins\notes\note_%2.txt
echo 已删除提示 "%2".
echo.
goto end
:read
echo.
echo "%2" 的内容:
type plugins\notes\note_%2.txt
echo.
goto end
:all
dir plugins\notes\
goto end
:end
rem ----------
admin back