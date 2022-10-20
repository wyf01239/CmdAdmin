set wver=Beta 0.3.1
set wvdate=2022.10.20
:go
if %1==exit goto exit
if %1==dellog goto dlog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==wplugins goto wsplugin
echo [%date% %time%]输入非预设命令>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]返回>>running.log
admin back
:wopenplugin
echo [%date% %time%]运行插件: "%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:dlog
del running.log
exit
:exit
echo [%date% %time%]程序退出>>running.log
exit
:wver
echo Wyfadmin 版本: %wver%
echo 语言: Chinese
echo 打包日期：%wvdate%
echo 版权所有 wyf9. 保留所有权.
echo 项目主页: https://github.com/wyf01239/wyfadmin
echo 联系方式：
echo 邮箱: wyf01299@163.com
echo [%date% %time%]显示版本信息>>running.log
goto wback
:whelp
echo 内部命令:
echo exit          退出程序
echo dellog        删除日志文件(running.log)并退出
echo wver          显示版本信息
echo whelp         显示此提示
echo wplugins      显示插件列表
echo.
echo [%date% %time%]显示内置帮助>>running.log
goto wback
:wsplugin
echo.
echo 插件列表:
dir /a:-d-h-s /b plugins\
echo.
goto wback
