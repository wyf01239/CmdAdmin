@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
:go
if "%1"=="" goto helps
if "%1"==" " goto helps
if %1==help goto helps
set /a ok=%1
echo %1=%ok%
goto end
:helps
echo /calc 1+1
echo /calc help
goto end
:end
rem ----------
admin wback
