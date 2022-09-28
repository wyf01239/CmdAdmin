@echo off
title wyfadmin
set wver=Beta 2.1.0
if %1==launch goto go
if %1==back goto goto
:go
echo Wyfadmin version %wver%
echo [%date% %time%]Version:%wver%>>running.log
echo Copyright wyf9. All rights reserved.
echo Now time:%date% %time%
echo [%date% %time%]Progran started>>running.log
:goto
echo [%date% %time%]Waiting command>>running.log
set /p com=^>^>
echo [%date% %time%]Command:%com%>>running.log
io %com%
exit
