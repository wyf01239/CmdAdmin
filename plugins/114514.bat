@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
echo È·¶¨¼ÌÐøÔËÐÐ?(y(yes)/n(no)) q: qqÈºÄ£Ê½
set /p yn=^>^>
if %yn%==y goto yes
if %yn%==Y goto yes
if %yn%==yes goto yes
if %yn%==q goto q
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
:q
echo ºß
timeout /t 1 /nobreak>nul
echo ºßºß
timeout /t 1 /nobreak>nul
echo ºßºßºß
timeout /t 1 /nobreak>nul
set test=ºßºßºß
:test
echo °¡°¡
goto test
:end
rem ----------
admin wback