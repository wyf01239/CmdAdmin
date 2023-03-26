@echo off
if "%1"=="" io whelpmore twinkletray
if "%1"==" " io whelpmore twinkletray
if %1==/install goto install
goto started
:install
echo >helps\%lang_now%\twinkletray.bat.txt
echo >>helps\%lang_now%\twinkletray.bat.txt
echo >>helps\%lang_now%\twinkletray.bat.txt
io wsetuppluginalldone
:started
rem --------
if %1==set set wpgoto=tset&&goto over
if %1==list set wpgoto=list&&goto over
set wpgoto=run
goto over
:notwinkle
echo Twinkle Tray Not Found!
set wpgoto=null&&admin wback
exit
:over
if exist "%USERPROFILE%\AppData\Local\Programs\twinkle-tray\Twinkle Tray.exe" (
	goto %wpgoto%
	) else (
		goto notwinkle
		)
:run
"%USERPROFILE%\AppData\Local\Programs\twinkle-tray\Twinkle Tray.exe" %1 %2 %3 %4 %5 %6 %7 %8 %9
set wpgoto=null&&admin wback
:tset
"%USERPROFILE%\AppData\Local\Programs\twinkle-tray\Twinkle Tray.exe" --all --set=%2
set wpgoto=null&&admin wback
exit
:list
"%USERPROFILE%\AppData\Local\Programs\twinkle-tray\Twinkle Tray.exe" --list
set wpgoto=null&&admin wback
exit