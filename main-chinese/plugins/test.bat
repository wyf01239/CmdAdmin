@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
if %1==1 echo test
if %1==2 echo test plugin
if %1==3 echo a test plugin
if %1==4 echo this is a test plugin
rem ----------
admin wback