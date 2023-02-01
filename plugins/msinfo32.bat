@echo off
if "%1"=="" io whelpmore msinfo32
if "%1"=="" io whelpmore msinfo32
if %1==/install goto installing
if %1==get goto getting
if %1==get-txt goto gettingtxt
admin wback
:installing
echo 插件:msinfo32 v1.0>helps\msinfo32.txt
echo by wyf9.2023.1.7>>helps\msinfo32.txt
echo 引用:msinfo32.exe>>helps\msinfo32.txt
echo.>>helps\msinfo32.txt
echo msinfo32 {get/get-txt} [file]>>helps\msinfo32.txt
echo get:输出系统信息(.nfo), 能使用msinfo32.exe打开>>helps\msinfo32.txt
echo get-txt:输出系统信息(.txt), 能直接使用记事本打开>>helps\msinfo32.txt
echo file:要输出到的文件(不带后缀)>>helps\msinfo32.txt
echo.>>helps\msinfo32.txt
echo 示例:>>helps\msinfo32.txt
echo msinfo32 get testfile>>helps\msinfo32.txt
echo msinfo32 get-txt e:\wyf9Desktop\testtxt>>helps\msinfo32.txt
io wsetuppluginalldone
:getting
if "%2"=="" msinfo32 /nfo files\msinfo32.nfo&&echo flie dir:%cd%\files\msinfo32.nfo&&admin wback
if "%2"==" " msinfo32 /nfo files\msinfo32.nfo&&echo flie dir:%cd%\files\msinfo32.nfo&&admin wback
msinfo32 /nfo files\%2.txt
echo file dir:%cd%\files\%2.txt - files\%2.txt
admin wback
:gettingtxt
if "%2"=="" msinfo32 /report files\msinfo32.txt&&echo flie dir:%cd%\files\msinfo32.txt&&admin wback
if "%2"==" " msinfo32 /report files\msinfo32.txt&&echo flie dir:%cd%\files\msinfo32.txt&&admin wback
msinfo32 /report files\%2.txt
echo file dir:%cd%\files\%2.txt - files\%2.txt
admin wback