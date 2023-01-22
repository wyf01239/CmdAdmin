@echo off
set wver=Beta 0.4
set wvdate=2023.1.7
:go
if "%1"==" " admin ioopen
if "%1"=="" admin ioopen
if %1==exit goto exit
if %1==null goto wback
if %1==wsetuppluginalldone goto wsetuppalldone
if %1==cd goto nocd
if %1==cd.. goto nocd
if %1==wdellog goto dlog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==whelpmore goto whelpm
if %1==wplugins goto wsplugin
if %1==whmlist goto whmlist
if %1==wsetupplugin goto wsetupp
if %1==changelang goto clang
echo [%date% %time%]%lang_io_log_runother%>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]%lang_io_log_back%>>running.log
admin wback
:wopenplugin
echo [%date% %time%]%lang_io_log_runplugin%"%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:dlog
del running.log
exit
:exit
echo [%date% %time%]%lang_io_log_exit%>>running.log
exit
:nocd
cd
goto wback
:wver
echo %lang_io_show_wver_1%%wver%
echo %lang_io_show_wver_2%
echo %lang_io_show_wver_3%%wvdate%
echo %lang_io_show_wver_4%
echo %lang_io_show_wver_5%
echo [%date% %time%]%lang_io_log_wver%>>running.log
goto wback
:whelp
echo %lang_io_show_whelp_1%
echo %lang_io_show_whelp_2%
echo exit	%lang_io_show_whelp_exit%
echo wdellog	%lang_io_show_whelp_wdellog%
echo wver	%lang_io_show_whelp_wver%
echo whelp	%lang_io_show_whelp_whelp%
echo whelpmore	%lang_io_show_whelp_whelpmore%
echo whmlist	%lang_io_show_whelp_whmlist%
echo wplugins	%lang_io_show_whelp_wplugins%
echo *wsetupplugin	%lang_io_show_whelp_wsetupplugin%
echo.
echo [%date% %time%]%lang_io_log_whelp%>>running.log
goto wback
:whelpm
if exist helps\%2 echo -----START-----&&type helps\%2.txt&&goto whelpmok
if exist helps\%2.txt echo -----START-----&&type helps\%2.txt&&goto whelpmok
echo %lang_io_show_whelpmore_err_1%"%2"%lang_io_show_whelpmore_err_2%
goto wback
:whelpmok
echo.
echo ------END------
goto wback
:whmlist
echo.
echo %lang_io_show_whmlist_1%
dir /a:-d-h-s /b helps\
echo.
echo %lang_io_show_whmlist_2%
goto wback
:wsplugin
echo.
echo %lang_io_show_wplugins_1%
dir /a:-d-h-s /b plugins\
echo.
echo %lang_io_show_wplugins_2%
echo [%date% %time%]%lang_io_log_wplugins%>>running.log
echo.
goto wback
:wsetupp
if "%2"=="" io whelpmore wsetupplugin
if "%2"==" " io whelpmore wsetupplugin
if %2==-all goto wsetuppall
if %2==-onlyexe goto wsetupponlyexe
goto wback
:wsetuppall
copy %3 plugins\>nul
set setuppluginname=%~n3%~x3
plugins\%setuppluginname% /install
:wsetuppalldone
echo %lang_io_show_wsetupplugin_alldone_1_1%"%setuppluginname%"%lang_io_show_wsetupplugin_alldone_1_2%
echo %lang_io_show_wsetupplugin_alldone_2%
echo [%date% %time%]%lang_io_log_wsetupplugin_alldone_1%"%3"%lang_io_log_wsetupplugin_alldone_2%>>running.log
goto wback
:wsetupponlyexe
copy %3 plugins\>nul
set setuppluginname=%~n1%~x1
echo %lang_io_show_wsetupplugin_onlyexe_1_1%"%setuppluginname%"%lang_io_show_wsetupplugin_onlyexe_1_2%
echo %lang_io_show_wsetupplugin_onlyexe_2%
echo [%date% %time%]%lang_io_log_wsetupplugin_onlyexe_1%"%3"%lang_io_log_wsetupplugin_onlyexe_2%>>running.log
goto wback
:clang
if "%2"=="" goto clang2
if "%2"==" " goto clang2
if exist langs\%2 goto clanggo
io whelpmore changelang
exit
:clang2
echo 现在的语言配置: %lang_now%
echo 可用的语言配置:
dir /a:d /b langs\
echo 可用 "clang 语言配置" 来切换到某个语言配置 (需要重新启动程序)
goto wback
:clanggo
echo %2>data\lang_now.txt
echo 语言配置已改为: %2
echo 如果程序在启动时崩溃, 请执行修复程序 (repair.bat) 以修复语言文件.
echo [%date% %time%]切换语言配置为: "%2"
goto wback