@echo off
set pluginname=%0
title %lang__cmd% - CmdAdmin
if "%1"=="" io whelpmore wtest
if "%1"==" " io whelpmore wtest
if %1==/install goto install
:: ----------
if %1==1 echo test
if %1==2 echo test plugin
if %1==3 echo a test plugin
if %1==4 echo this is a test plugin
:: ----------
admin wback
:install
echo WARNING: 
if exist helps\wtest.txt del helps\wtest.txt>nul
echo ���Բ��:wtest v1.0>>helps\wtest.txt
echo by wyf9.2022.12.27>>helps\wtest.txt
echo.>>helps\wtest.txt
echo wtest {1/2/3/4}>>helps\wtest.txt
echo 1:��ʾ "test">>helps\wtest.txt
echo 2:��ʾ "test plugin">>helps\wtest.txt
echo 3:��ʾ "a test plugin">>helps\wtest.txt
echo 4:��ʾ "this is a test plugin">>helps\wtest.txt
io wsetuppluginalldone