@echo off
set pluginname=%0
title Wyfadin - %pluginname:plugins\=%
rem ----------
echo ������ʹ�þɰ汾����ʾ��� �°汾:notes  by wyf9
if not exist data\notes\ md data\notes\
echo.
if "%1"=="" goto help
if "%1"==" " goto help
if %1==help goto help
if %1==read goto read
if %1==new goto new
if %1==del goto delnote
if %1==all goto all
if %1==exit admin wback
goto end
:help
echo ����:
echo help   ��ʾ����ʾ
echo new    ����һ����ʾ (note new ���� ����).
echo read   ��ȡ��ʾ (note read ����).
echo del    ɾ����ʾ (note del ����).
echo all    ��ʾ������ʾ(dir).
echo.
goto end
echo.
:new
echo %3>data\notes\note_%2.txt
echo �Ѵ���һ����ʾ: "%2" ,����: "%3" ,λ�� "%cd%\data\notes\note_%2.txt".
echo.
goto end
:delnote
echo ����:
type data\notes\note_%2.txt
echo.
del data\notes\note_%2.txt
echo ��ɾ����ʾ "%2".
echo.
goto end
:read
echo "%2" ������:
type data\notes\note_%2.txt
echo.
goto end
:all
echo ��ʾ�б�:
dir /a:-d-h-s /b data\notes
echo.
goto end
:end
rem ----------
admin wback