rem 该插件可独立运行
rem 作者:wyf9 2022.10.3
@echo off
set pluginname=%0
title Wyfadin - Plugin "%pluginname:plugins\=%"
rem ----------
cls
echo 哼
timeout /t 1 /nobreak>nul
cls
echo 哼哼
timeout /t 1 /nobreak>nul
cls
echo 哼哼哼
timeout /t 1 /nobreak>nul
set test=哼哼哼
:test
cls
echo %test%
set test=%test%啊
goto test
rem ----------
admin back