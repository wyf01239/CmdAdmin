@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
if %1==/install goto install
rem ----------
if %1==1 echo test
if %1==2 echo test plugin
if %1==3 echo a test plugin
if %1==4 echo this is a test plugin
rem ----------
admin wback
:install
if exist helps\wtest.txt del helps\wtest.txt>nul
echo 测试插件:wtest v1.0>>helps\wtest.txt
echo by wyf9.2022.12.27>>helps\wtest.txt
echo.>>helps\wtest.txt
echo wtest {1/2/3/4}>>helps\wtest.txt
echo 1:显示 "test">>helps\wtest.txt
echo 2:显示 "test plugin">>helps\wtest.txt
echo 3:显示 "a test plugin">>helps\wtest.txt
echo 4:显示 "this is a test plugin">>helps\wtest.txt
io wsetuppluginalldone