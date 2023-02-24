@echo off
set wver=Beta 0.4
set notice_site=https://wyf01239.github.io/webget/wyfadmin/notice.txt
cls
echo ==========>>running.log
echo [%date% %time%]Wyfadmin %wver% Loading...>>running.log
echo.>>running.log
echo ^>  __      __             ___            __                             >>running.log
echo ^> /\ \  __/\ \          /'___\          /\ \              __            >>running.log
echo ^> \ \ \/\ \ \ \  __  __/\ \__/   __     \_\ \    ___ ___ /\_\    ___    >>running.log
echo ^>  \ \ \ \ \ \ \/\ \/\ \ \ ,__\/'__`\   /'_` \ /' __` __`\/\ \ /' _ `\  >>running.log
echo ^>   \ \ \_/ \_\ \ \ \_\ \ \ \_/\ \L\.\_/\ \L\ \/\ \/\ \/\ \ \ \/\ \/\ \ >>running.log
echo ^>    \ `\___x___/\/`____ \ \_\\ \__/.\_\ \___,_\ \_\ \_\ \_\ \_\ \_\ \_\>>running.log
echo ^>     '\/__//__/  `/___/^> \/_/ \/__/\/_/\/__,_ /\/_/\/_/\/_/\/_/\/_/\/_/>>running.log
echo ^>                    /\___/                                             >>running.log
echo ^>                    \/__/                                              >>running.log
echo.>>running.log
echo [%date% %time%]Loading...>>running.log
title Wyfadmin
echo Loading...
set lang_file_err=0
if not exist data\lang_now.txt (
	echo en-us>data\lang_now.txt
	set lang_file_err=1
)
set /p lang_now=<data\lang_now.txt
echo Now language: %lang_now%
if %lang_file_err%==1 echo WARNING: Lang config lost. Change language to "en-us".
echo Loading language files...
set /p lang_launcher_log_programstarted=<langs\%lang_now%\launcher_log_programstarted.txt
set /p lang_launcher_log_lang=<langs\%lang_now%\launcher_log_lang.txt
set /p lang_admin_log_ioopen=<langs\%lang_now%\admin_log_ioopen.txt
set /p lang_admin_log_nowrun=<langs\%lang_now%\admin_log_nowrun.txt
set /p lang_admin_log_started=<langs\%lang_now%\admin_log_started.txt
set /p lang_admin_log_ver=<langs\%lang_now%\admin_log_ver.txt
set /p lang_admin_log_waiting=<langs\%lang_now%\admin_log_waiting.txt
set /p lang_admin_show_by=<langs\%lang_now%\admin_show_by.txt
set /p lang_admin_show_time=<langs\%lang_now%\admin_show_time.txt
set /p lang_admin_show_ver=<langs\%lang_now%\admin_show_ver.txt
set /p lang_io_log_back=<langs\%lang_now%\io_log_back.txt
set /p lang_io_log_exit=<langs\%lang_now%\io_log_exit.txt
set /p lang_io_log_runother=<langs\%lang_now%\io_log_runother.txt
set /p lang_io_log_runplugin=<langs\%lang_now%\io_log_runplugin.txt
set /p lang_io_log_whelp=<langs\%lang_now%\io_log_whelp.txt
set /p lang_io_log_wplugins=<langs\%lang_now%\io_log_wplugins.txt
set /p lang_io_log_wsetupplugin_alldone_1=<langs\%lang_now%\io_log_wsetupplugin_alldone_1.txt
set /p lang_io_log_wsetupplugin_alldone_2=<langs\%lang_now%\io_log_wsetupplugin_alldone_2.txt
set /p lang_io_log_wsetupplugin_onlyexe_1=<langs\%lang_now%\io_log_wsetupplugin_onlyexe_1.txt
set /p lang_io_log_wsetupplugin_onlyexe_2=<langs\%lang_now%\io_log_wsetupplugin_onlyexe_2.txt
set /p lang_io_log_wver=<langs\%lang_now%\io_log_wver.txt
set /p lang_io_show_whelp_1=<langs\%lang_now%\io_show_whelp_1.txt
set /p lang_io_show_whelp_2=<langs\%lang_now%\io_show_whelp_2.txt
set /p lang_io_show_whelp_exit=<langs\%lang_now%\io_show_whelp_exit.txt
set /p lang_io_show_whelp_wdellog=<langs\%lang_now%\io_show_whelp_wdellog.txt
set /p lang_io_show_whelp_whelp=<langs\%lang_now%\io_show_whelp_whelp.txt
set /p lang_io_show_whelp_whelpmore=<langs\%lang_now%\io_show_whelp_whelpmore.txt
set /p lang_io_show_whelp_whmlist=<langs\%lang_now%\io_show_whelp_whmlist.txt
set /p lang_io_show_whelp_wplugins=<langs\%lang_now%\io_show_whelp_wplugins.txt
set /p lang_io_show_whelp_wsetupplugin=<langs\%lang_now%\io_show_whelp_wsetupplugin.txt
set /p lang_io_show_whelp_wver=<langs\%lang_now%\io_show_whelp_wver.txt
set /p lang_io_show_whelpmore_err_1=<langs\%lang_now%\io_show_whelpmore_err_1.txt
set /p lang_io_show_whelpmore_err_2=<langs\%lang_now%\io_show_whelpmore_err_2.txt
set /p lang_io_show_whmlist_1=<langs\%lang_now%\io_show_whmlist_1.txt
set /p lang_io_show_whmlist_2=<langs\%lang_now%\io_show_whmlist_2.txt
set /p lang_io_show_wplugins_1=<langs\%lang_now%\io_show_wplugins_1.txt
set /p lang_io_show_wplugins_2=<langs\%lang_now%\io_show_wplugins_2.txt
set /p lang_io_show_wsetupplugin_alldone_1_1=<langs\%lang_now%\io_show_wsetupplugin_alldone_1_1.txt
set /p lang_io_show_wsetupplugin_alldone_1_2=<langs\%lang_now%\io_show_wsetupplugin_alldone_1_2.txt
set /p lang_io_show_wsetupplugin_alldone_2=<langs\%lang_now%\io_show_wsetupplugin_alldone_2.txt
set /p lang_io_show_wsetupplugin_onlyexe_1_1=<langs\%lang_now%\io_show_wsetupplugin_onlyexe_1_1.txt
set /p lang_io_show_wsetupplugin_onlyexe_1_2=<langs\%lang_now%\io_show_wsetupplugin_onlyexe_1_2.txt
set /p lang_io_show_wsetupplugin_onlyexe_2=<langs\%lang_now%\io_show_wsetupplugin_onlyexe_2.txt
set /p lang_io_show_wver_1=<langs\%lang_now%\io_show_wver_1.txt
set /p lang_io_show_wver_2=<langs\%lang_now%\io_show_wver_2.txt
set /p lang_io_show_wver_3=<langs\%lang_now%\io_show_wver_3.txt
set /p lang_io_show_wver_4=<langs\%lang_now%\io_show_wver_4.txt
set /p lang_io_show_wver_5=<langs\%lang_now%\io_show_wver_5.txt
set /p lang_io_log_wchangelang=<langs\%lang_now%\io_log_wchangelang.txt
set /p lang_io_show_wchangelang_1=<langs\%lang_now%\io_show_wchangelang_1.txt
set /p lang_io_show_wchangelang_2=<langs\%lang_now%\io_show_wchangelang_2.txt
set /p lang_io_show_wchangelang_3=<langs\%lang_now%\io_show_wchangelang_3.txt
set /p lang_io_show_wchangelang_4=<langs\%lang_now%\io_show_wchangelang_4.txt
set /p lang_io_show_wchangelang_5=<langs\%lang_now%\io_show_wchangelang_5.txt
set /p lang_io_show_wchangelang_6=<langs\%lang_now%\io_show_wchangelang_6.txt
set /p lang_io_show_whelp_wchangelang=<langs\%lang_now%\io_show_whelp_wchangelang.txt
set /p lang_io_show_whelp_wexit=<langs\%lang_now%\io_show_whelp_wexit.txt
set /p lang_io_show_whelp_wreload=<langs\%lang_now%\io_show_whelp_wreload.txt
set /p lang_io_show_wreload=<langs\%lang_now%\io_show_wreload.txt
set /p lang_io_show_wchangelang_0=<langs\%lang_now%\io_show_wchangelang_0.txt
echo [%date% %time%]Load language files done.>>running.log
echo Load language files done.
echo [%date% %time%]%lang_launcher_log_programstarted%>>running.log
echo [%date% %time%]%lang_launcher_log_lang%>>running.log
ping -n 1 127.0.0.1>nul
del data\notice.txt>nul
curl -o "data\notice.txt" "%notice_site%">nul
if not exist data\notice.txt (
	goto wgo
)
echo ================================
echo ¹«¸æÀ¸ / Notice:
type data\notice.txt
echo.
:wgo
echo ================================
admin launch
exit
rem set /p lang_=<langs\%lang_now%\.txt