@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
echo ȷ����������?(y(yes)/n(no))
set /p yn=^>^>
if %yn%==y goto yes
if %yn%==Y goto yes
if %yn%==yes goto yes
goto end
:yes
cls
echo ��
timeout /t 1 /nobreak>nul
cls
echo �ߺ�
timeout /t 1 /nobreak>nul
cls
echo �ߺߺ�
timeout /t 1 /nobreak>nul
set test=�ߺߺ�
:test
cls
echo %test%
set test=%test%��
goto test
:end
rem ----------
admin wback