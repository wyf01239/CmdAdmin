@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
echo ȷ����������?(y(yes)/n(no)) q: qqȺģʽ
set /p yn=^>^>
if %yn%==y goto yes
if %yn%==Y goto yes
if %yn%==yes goto yes
if %yn%==q goto q
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
:q
echo ��
timeout /t 1 /nobreak>nul
echo �ߺ�
timeout /t 1 /nobreak>nul
echo �ߺߺ�
timeout /t 1 /nobreak>nul
set test=�ߺߺ�
:test
echo ����
goto test
:end
rem ----------
admin wback