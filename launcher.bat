@echo off
set wver=Beta 0.4
set wverdev=202302201
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
if not exist data\tunnel.txt (
	echo normal>data\tunnel.txt
)
set /p update_tunnel=<data\tunnel.txt
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
ping -n 2 127.0.0.1>nul
echo [%date% %time%]Downloading Notice...>>running.log
curl -o "data\notice.txt" "https://wyf01239.github.io/webget/wyfadmin/notice.txt">>running.log
echo [%date% %time%]Updata Tunnel: %update_tunnel%>>running.log
echo [%date% %time%]Getting version info...>>running.log
if exist data\ver.txt del data\ver.txt
if "%update_tunnel%"=="normal" (
	curl -o "data\ver.txt" "https://wyf01239.github.io/webget/wyfadmin/ver.txt">>running.log
) else if "%update_tunnel%"=="dev" (
	curl -o "data\ver.txt" "https://wyf01239.github.io/webget/wyfadmin/ver_dev.txt">>running.log
) else (
	echo WARNING: Unknown Update Tunnel. Change Tunnel to "normal".
	echo normal>data\tunnel.txt
	set update_tunnel=normal
	curl -o "data\ver.txt" "https://wyf01239.github.io/webget/wyfadmin/ver.txt">>running.log
)
set /p new_ver=<data\ver.txt
if not exist data\notice.txt (
	echo [%date% %time%]Download Notice Failed.>>running.log
	goto wgo1
)
echo ================================
echo [%date% %time%]Download notice Successful.>>running.log
echo ¹«¸æÀ¸ / Notice:
type data\notice.txt
echo.
:wgo1
if not exist data\notice.txt (
	echo [%date% %time%]Download version info Failed.>>running.log
	goto wgo2
)
echo ================================
echo [%date% %time%]Download version info Successful.>>running.log
echo Now Tunnel: %update_tunnel%
if "%update_tunnel%"=="normal" (
	echo Version: %wver%
	if "%wver%"=="%new_ver%" (
		echo No New Version.
		echo If You like newest version, you can edit "data\tunnel.txt":
		echo dev
		echo.
rem		set have_new_ver=false
	) else (
		echo Have New Version.
		echo Type "wupdate" to Update Program. But Now unavailable.
		echo If You like newest version, you can edit "data\tunnel.txt":
		echo dev
		echo.
rem		set have_new_ver=true
	)
) else if "%update_tunnel%"=="dev" (
	echo Version: %wverdev% (%wver%)
	if "%wverdev%"=="%new_ver%" (
		echo No new version.
rem		set have_new_ver=false
	) else (
		echo Have New Version.
		goto update_dev
	)
)
echo ================================
:wgo2
admin launch
exit
rem set /p lang_=<langs\%lang_now%\.txt
:update_dev
echo Downloading update ver %wverdev% (%wver%)...
if exist data\updatedev.tar del data\updatedev.tar 
curl -o "data\updatedev.tar" "https://wyf01239.github.io/webget/wyfadmin/updatedev.tar">>running.log
if not exist data\updatedev.tar (
	echo Download Update Failed.
	goto wgo2
)
echo Creating Temp File...
echo ^@echo off>temp\updatedev.bat
echo echo Extracting tar File...>>temp\updatedev.bat
echo tar -x -o data\updatedev.tar>>temp\updatedev.bat
echo Update Successful.>>temp\updatedev.bat
echo admin updateddev>>temp\updatedev.bat
echo exit>>temp\updatedev.bat
start temp\updatedev.bat
exit