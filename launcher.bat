@echo off
title Wyfadmin
set /p lang_now=<data\lang_now.txt
set /p lang_launcher_log_programstarted=<langs\%lang_now%\launcher_log_programstarted.txt
set /p lang_launcher_log_lang=<langs\%lang_now%\launcher_log_lang.txt
echo ==========>>running.log
echo [%date% %time%]%lang_launcher_log_programstarted%>>running.log
echo [%date% %time%]%lang_launcher_log_lang%>>running.log
admin launch
exit
