@echo off
if "%1"=="" io whelpmore msinfo32
if "%1"=="" io whelpmore msinfo32
if %1==/install goto installing
if %1==get goto getting
if %1==get-txt goto gettingtxt
admin wback
:installing
if exist helps\msinfo32.txt del helps\msinfo32.txt
插件:msinfo32 v1.0
by wyf9.2023.1.7
引用:msinfo32.exe

msinfo32 {get/get-txt} [file]
get:输出系统信息(.nfo), 能使用msinfo32.exe打开
get-txt:输出系统信息(.txt), 能直接使用记事本打开
file:要输出到的文件(不带后缀)

示例:
msinfo32 get testfile
msinfo32 get-txt e:\wyf9Desktop\testtxt


:getting
if "%2"=="" msinfo32 /nfo files\msinfo32.nfo&&echo flie dir:%cd%\files\msinfo32.nfo&&admin wback
if "%2"==" " msinfo32 /nfo files\msinfo32.nfo&&echo flie dir:%cd%\files\msinfo32.nfo&&admin wback
msinfo32 /nfo %2.nfo
echo file dir:%2
admin wback
:gettingtxt
if "%2"=="" msinfo32 /report files\msinfo32.txt&&echo flie dir:%cd%\files\msinfo32.txt&&admin wback
if "%2"==" " msinfo32 /report files\msinfo32.txt&&echo flie dir:%cd%\files\msinfo32.txt&&admin wback
msinfo32 /report %2.txt
echo file dir:%2
admin wback