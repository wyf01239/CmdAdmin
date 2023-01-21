@echo off
title Wyfadmin
set wver=Beta 0.4
set /p lang_now=<data\lang_now.txt
set /p lang_admin_log_ioopen=<langs\%lang_now%\admin_log_ioopen.txt
set /p lang_admin_log_nowrun=<langs\%lang_now%\admin_log_nowrun.txt
set /p lang_admin_log_started=<langs\%lang_now%\admin_log_started.txt
set /p lang_admin_log_ver=<langs\%lang_now%\admin_log_ver.txt
set /p lang_admin_log_waiting=<langs\%lang_now%\admin_log_waiting.txt
set /p lang_admin_show_by=<langs\%lang_now%\admin_show_by.txt
lang_admin_show_time=<langs\%lang_now%\admin_show_time.txt
lang_admin_show_ver=<langs\%lang_now%\admin_show_ver.txt
if "%1"=="" launcher
if "%1"==" " launcher
if %1==launch goto go
if %1==wback goto goto
if %1==ioopen goto ioopen
:go
echo [%date% %time%]%lang_admin_log_ver%%wver%>>running.log
echo %lang_admin_show_ver%%wver%.
echo %lang_admin_show_by%
echo %lang_admin_show_time%%date% %time%
echo [%date% %time%]%lang_admin_log_started%>>running.log
:goto
echo [%date% %time%]=%lang_admin_log_waiting%>>running.log
set com=null
set /p com=^>^>
echo [%date% %time%]%lang_admin_log_nowrun%"%com%">>running.log
io %com%
exit
:ioopen
echo [%date% %time%]%lang_admin_log_ioopen%>>running.log
goto goto