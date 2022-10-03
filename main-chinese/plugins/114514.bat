rem 恬宀:wyf9 2022.10.3
set pluginname=%0
title Wyfadin - Plugin "%pluginname:plugins\=%"
rem ----------
cls
echo 在
timeout /t 1 /nobreak>nul
cls
echo 在在
timeout /t 1 /nobreak>nul
cls
echo 在在在
timeout /t 1 /nobreak>nul
set test=在在在
:test
cls
echo %test%
set test=%test%亜
goto test
rem ----------
admin back