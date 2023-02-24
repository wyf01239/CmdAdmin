@echo off
set wver=Beta 0.4
set wvdate=2023.1.7
:go
if "%1"==" " admin ioopen
if "%1"=="" admin ioopen
if "%1"=="exit" goto exit
if "%1"=="wexit" goto wexit
if "%1"=="null" goto wback
if "%1"=="wsetuppluginalldone" goto wsetuppalldone
if "%1"=="cd" goto nocd
if "%1"=="cd.." goto nocd
if "%1"=="con" goto nonul
if "%1"=="nul" goto nonul
if "%1"=="aux" goto nonul
if "%1"=="wdellog" goto dlog
if "%1"=="wver" goto wver
if "%1"=="whelp" goto whelp
if "%1"=="whelpmore" goto whelpm
if "%1"=="wplugins" goto wsplugin
if "%1"=="whmlist" goto whmlist
if "%1"=="wsetupplugin" goto wsetupp
if "%1"=="wchangelang" goto clang
if "%1"=="wreload" goto reload
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
:wexit
echo [%date% %time%]%lang_io_log_exit%>>running.log
cmd
exit
:nocd
cd
goto wback
:nonul
goto wback
:wver
echo %lang_io_show_wver_1%%wver%
echo %lang_io_show_wver_2%
echo %lang_io_show_wver_3%%wvdate%
echo %lang_io_show_wver_4%
echo %lang_io_show_wver_5%https://github.com/wyf01239/wyfadmin
echo [%date% %time%]%lang_io_log_wver%>>running.log
goto wback
:whelp
echo %lang_io_show_whelp_1%
echo %lang_io_show_whelp_2%
rem 命令名称和语言文件中间相隔8空格.
echo exit        %lang_io_show_whelp_exit%
echo wexit        %lang_io_show_whelp_wexit%
echo wreload        %lang_io_show_whelp_wreload%
echo wdellog        %lang_io_show_whelp_wdellog%
echo wver        %lang_io_show_whelp_wver%
echo whelp        %lang_io_show_whelp_whelp%
echo whelpmore        %lang_io_show_whelp_whelpmore%
echo whmlist        %lang_io_show_whelp_whmlist%
echo wplugins        %lang_io_show_whelp_wplugins%
echo wchangelang        %lang_io_show_whelp_wchangelang%
echo *wsetupplugin        %lang_io_show_whelp_wsetupplugin%
echo.
echo [%date% %time%]%lang_io_log_whelp%>>running.log
goto wback
:whelpm
if "%2"=="" goto wback
if "%2"==" " goto wback
if exist helps\%lang_now%\%2.txt (
	echo helps\%lang_now%\%2.txt
	echo -----START-----
	type helps\%lang_now%\%2.txt
	goto whelpmok
) else if exist helps\%lang_now%\%2.bat.txt (
	echo helps\%lang_now%\%2.bat.txt
	echo -----START-----
	type helps\%lang_now%\%2.bat.txt
	goto whelpmok
) else if exist helps\%lang_now%\%2 (
	echo helps\%lang_now%\%2
	echo -----START-----
	type helps\%lang_now%\%2
	goto whelpmok
) else (
	echo %lang_io_show_whelpmore_err_1%"%2"%lang_io_show_whelpmore_err_2%.
	goto wback
)
:whelpmok
echo.
echo ------END------
goto wback
:whmlist
echo.
echo %lang_io_show_whmlist_1%
dir /a:-d-h-s /b helps\%lang_now%\
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
echo %lang_io_show_wchangelang_0%
exit
:clang2
echo %lang_io_show_wchangelang_1%%lang_now%
echo %lang_io_show_wchangelang_2%
dir /a:d /b langs\
echo %lang_io_show_wchangelang_3%
goto wback
:clanggo
echo %2>data\lang_now.txt
echo %lang_io_show_wchangelang_4%%2
echo %lang_io_show_wchangelang_5%
echo %lang_io_show_wchangelang_6%
echo [%date% %time%]%lang_io_log_wchangelang%"%2".>>running.log
goto wback
:reload
echo %lang_io_show_reload%
launcher
exit