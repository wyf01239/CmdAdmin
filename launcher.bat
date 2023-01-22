@echo off
echo ==========>>running.log
echo [%date% %time%]Start load>>running.log
title Wyfadmin
echo Loading...
set /p lang_now=<data\lang_now.txt
echo Now lang: %lang_now%
echo Loading language files...
@echo on
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
set /p lang_io_log_changelang=<langs\%lang_now%\io_log_changelang.txt
set /p lang_io_show_changelang_1=<langs\%lang_now%\io_log_changelang_1.txt
set /p lang_io_show_changelang_2=<langs\%lang_now%\io_log_changelang_2.txt
set /p lang_io_show_changelang_3=<langs\%lang_now%\io_log_changelang_3.txt
set /p lang_io_show_changelang_4=<langs\%lang_now%\io_log_changelang_4.txt
set /p lang_io_show_changelang_5=<langs\%lang_now%\io_log_changelang_5.txt
set /p lang_io_show_changelang_6=<langs\%lang_now%\io_log_changelang_6.txt
@echo off
echo Load language files done.
echo ==========>>running.log
echo [%date% %time%]%lang_launcher_log_programstarted%>>running.log
echo [%date% %time%]%lang_launcher_log_lang%>>running.log
echo Wait a minute...
ping -n 1 127.0.0.1
cls
admin launch
exit