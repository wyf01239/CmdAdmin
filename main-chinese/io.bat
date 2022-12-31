@echo off
set wver=Beta 0.3.1
set wvdate=2022.10.20
:go
if %1==exit goto exit
if %1==null goto wback
if %1==wsetuppluginalldone goto wsetuppalldone
if %1==cd goto nocd
if %1==wdellog goto dlog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==whelpmore goto whelpm
if %1==wplugins goto wsplugin
if %1==whmlist goto whmlist
if %1==wsetupplugin goto wsetupp
echo [%date% %time%]执行非内部命令>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]返回>>running.log
admin wback
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
:nocd
cd
goto wback
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
echo 带*的命令可输入"whelpmore 命令"查看详细信息
echo 内部命令:
echo exit          退出程序
echo wdellog       删除日志文件(running.log)并退出
echo wver          显示版本信息
echo whelp         显示此帮助信息
echo whelpmore     查看插件/命令详细信息
echo whmlist       显示有帮助信息的命令/插件
echo wplugins      显示插件列表
echo *wsetupplugin  安装插件(拖入)
echo.
echo [%date% %time%]显示内置帮助>>running.log
goto wback
:whelpm
if exist helps\%2 echo -----START-----&&type helps\%2.txt&&goto whelpmok
if exist helps\%2.txt echo -----START-----&&type helps\%2.txt&&goto whelpmok
echo 插件/命令帮助 "%2" 不存在!
goto wback
:whelpmok
echo ------END------
goto wback
:whmlist
echo.
echo 可以显示帮助的命令/插件:
dir /a:-d-h-s /b helps\
echo.
echo 可用"whelpmore 命令"获取插件/命令详细信息.
goto wback
:wsplugin
echo.
echo 已安装的插件列表:
dir /a:-d-h-s /b plugins\
echo.
echo 可在(None)获取插件.
echo [%date% %time%]显示插件列表>>running.log
echo.
goto wback
:wsetupp
if %2==-all goto wsetuppall
if %2==-onlyexe goto wsetupponlyexe
goto wback
:wsetuppall
copy %3 plugins\>nul
set setuppluginname=%~n3%~x3
plugins\%setuppluginname% /install
:wsetuppalldone
echo 已安装 "%setuppluginname%" 到 plugins\
echo 更多帮助可用,执行"whelpmore %setuppluginname%"
echo.
echo [%date% %time%]安装插件: "%3",完整安装>>running.log
goto wback
:wsetupponlyexe
copy %3 plugins\>nul
set setuppluginname=%~n1%~x1
echo 已安装 "%setuppluginname%" 到 plugins\
echo 未包含更多帮助信息
echo.
echo [%date% %time%]安装插件: "%3",仅安装主程序>>running.log
goto wback