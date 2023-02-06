@echo off
if "%1"=="" io whelpmore msinfo32
if "%1"=="" io whelpmore msinfo32
if %1==/install goto installing
if %1==get goto getting
if %1==get-txt goto gettingtxt
admin wback
:installing
echo Disabled
io wsetuppluginalldone
:getting
if "%2"=="" whelpmore msinfo32
if "%2"==" " whelpmore msinfo32
msinfo32 /nfo files\%2.txt
echo file dir:%cd%\files\%2.txt - files\%2.txt
admin wback
:gettingtxt
if "%2"=="" whelpmore msinfo32
if "%2"==" " whelpmore msinfo32
msinfo32 /report files\%2.txt
echo file dir:%cd%\files\%2.txt - files\%2.txt
admin wback