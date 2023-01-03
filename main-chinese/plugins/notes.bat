@echo off
title Wyfadin - %pluginname:plugins\=% - loading
mode con cols=73 lines=11
if not exist plugins\notes\ md plugins\notes
if "%1"=="" goto startup
if "%1"==" " goto startup
if %1==startup goto startup
if %1==help goto helps
if %1==exit mode con cols=120 lines=30&&admin wback
if %1==1 echo 1 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note1.txt&&goto go
if %1==2 echo 2 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note2.txt&&goto go
if %1==3 echo 3 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note3.txt&&goto go
if %1==4 echo 4 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note4.txt&&goto go
if %1==5 echo 5 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note5.txt&&goto go
if %1==6 echo 6 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note6.txt&&goto go
if %1==7 echo 7 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note7.txt&&goto go
if %1==8 echo 8 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note8.txt&&goto go
if %1==9 echo 9 %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note9.txt&&goto go
if %1==10 echo x %2 %3 %4 %5 %6 %7 %8 %9>plugins\notes\note10.txt&&goto go
if %1==delall del /q plugins\notes\&&goto startup
goto go
:helps
echo /1 abc
echo /delall
echo /help
echo /exit
goto goto
:startup
title Wyfadin - %pluginname:plugins\=% - startup
if not exist plugins\notes\note1.txt echo 1 >plugins\notes\note1.txt
if not exist plugins\notes\note2.txt echo 2 >plugins\notes\note2.txt
if not exist plugins\notes\note3.txt echo 3 >plugins\notes\note3.txt
if not exist plugins\notes\note4.txt echo 4 >plugins\notes\note4.txt
if not exist plugins\notes\note5.txt echo 5 >plugins\notes\note5.txt
if not exist plugins\notes\note6.txt echo 6 >plugins\notes\note6.txt
if not exist plugins\notes\note7.txt echo 7 >plugins\notes\note7.txt
if not exist plugins\notes\note8.txt echo 8 >plugins\notes\note8.txt
if not exist plugins\notes\note9.txt echo 9 >plugins\notes\note9.txt
if not exist plugins\notes\note10.txt echo x >plugins\notes\note10.txt
:go
title Wyfadin - %pluginname:plugins\=% - finish
cls
type plugins\notes\note1.txt
type plugins\notes\note2.txt
type plugins\notes\note3.txt
type plugins\notes\note4.txt
type plugins\notes\note5.txt
type plugins\notes\note6.txt
type plugins\notes\note7.txt
type plugins\notes\note8.txt
type plugins\notes\note9.txt
type plugins\notes\note10.txt
:goto
set /p command=^>^>
%0 %command%