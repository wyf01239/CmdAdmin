@echo off
set wver=Beta 0.4
set wvdate=2023.1.7
:go
if "%1"==" " admin ioopen
if "%1"=="" admin ioopen
if %1==exit goto exit
if %1==null goto wback
if %1==wsetuppluginalldone goto wsetuppalldone
if %1==cd goto nocd
if %1==cd.. goto nocd
if %1==wdellog goto dlog
if %1==wver goto wver
if %1==whelp goto whelp
if %1==whelpmore goto whelpm
if %1==wplugins goto wsplugin
if %1==whmlist goto whmlist
if %1==wsetupplugin goto wsetupp
echo [%date% %time%]ִ�з��ڲ�����>>running.log
if exist plugins\%1 goto wopenplugin
if exist plugins\%1.bat goto wopenplugin
%1 %2 %3 %4 %5 %6 %7 %8 %9
:wback
echo [%date% %time%]����>>running.log
admin wback
:wopenplugin
echo [%date% %time%]���в��: "%1">>running.log
plugins\%1 %2 %3 %4 %5 %6 %7 %8 %9
goto wback
:dlog
del running.log
exit
:exit
echo [%date% %time%]�����˳�>>running.log
exit
:nocd
cd
goto wback
:wver
echo Wyfadmin �汾: %wver%
echo ����: Chinese
echo ������ڣ�%wvdate%
echo ��Ȩ���� wyf9. ��������Ȩ.
echo ��Ŀ��ҳ: https://github.com/wyf01239/wyfadmin
echo [%date% %time%]��ʾ�汾��Ϣ>>running.log
goto wback
:whelp
echo ��*�����������"whelpmore ����"�鿴��ϸ��Ϣ
echo �ڲ�����:
echo exit	�˳�����
echo wdellog       ɾ����־�ļ�(running.log)���˳�
echo wver          ��ʾ�汾��Ϣ
echo whelp         ��ʾ�˰�����Ϣ
echo whelpmore     �鿴���/������ϸ��Ϣ
echo whmlist       ��ʾ�а�����Ϣ������/���
echo wplugins      ��ʾ����б�
echo *wsetupplugin  ��װ���(����)
echo.
echo [%date% %time%]��ʾ���ð���>>running.log
goto wback
:whelpm
if exist helps\%2 echo -----START-----&&type helps\%2.txt&&goto whelpmok
if exist helps\%2.txt echo -----START-----&&type helps\%2.txt&&goto whelpmok
echo ���/������� "%2" ������!
goto wback
:whelpmok
echo.
echo ------END------
goto wback
:whmlist
echo.
echo ������ʾ����������/���:
dir /a:-d-h-s /b helps\
echo.
echo ����"whelpmore ����"��ȡ���/������ϸ��Ϣ.
goto wback
:wsplugin
echo.
echo �Ѱ�װ�Ĳ���б�:
dir /a:-d-h-s /b plugins\
echo.
echo ����(None)��ȡ���.
echo [%date% %time%]��ʾ����б�>>running.log
echo.
goto wback
:wsetupp
if "%2"=="" io whelpmore wsetupplugin
if "%2"==" " io whelpmore wsetupplugin
if %2==-all goto wsetuppall
if %2==-onlyexe goto wsetupponlyexe
goto wback
:wsetuppall
copy %3 plugins\>nul
set setuppluginname=%~n3%~x3
plugins\%setuppluginname% /install
:wsetuppalldone
echo �Ѱ�װ "%setuppluginname%" �� plugins\
echo �����������,ִ��"whelpmore %setuppluginname%"
echo [%date% %time%]��װ���: "%3",������װ>>running.log
goto wback
:wsetupponlyexe
copy %3 plugins\>nul
set setuppluginname=%~n1%~x1
echo �Ѱ�װ "%setuppluginname%" �� plugins\
echo δ�������������Ϣ
echo [%date% %time%]��װ���: "%3",����װ������>>running.log
goto wback