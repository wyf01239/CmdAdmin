@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
echo È·¶¨¼ÌÐøÔËÐÐ?(y(yes)/n(no))
set /p yn=^>^>
if %yn%==y goto yes
if %yn%==Y goto yes
if %yn%==yes goto yes
goto end
:yes
cls
echo ºß
timeout /t 1 /nobreak>nul
cls
echo ºßºß
timeout /t 1 /nobreak>nul
cls
echo ºßºßºß
timeout /t 1 /nobreak>nul
set test=ºßºßºß
:test
cls
echo %test%
set test=%test%°¡
goto test
:end
rem ----------
admin wback