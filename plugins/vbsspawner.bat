@echo off
title vbsspawner
:home
echo vbs������
echo ѡ��:
echo 1.����һ���µ��ļ�
echo 2.��ȡδ�༭����ļ�(δ����)
echo 3.�汾��Ϣ
echo 0.�˳�
echo ʹ������ѡ��
:go
set choose=null
set /p choose=^>
if %choose%==1 goto newfile
if %choose%==2 goto readfile
if %choose%==3 goto version
if %choose%==0 admin wback
goto go
:version
echo vbs������ v1 by wyf9.2022.12.21.
goto go
:readfile

:newfile
echo �������������vbs
echo ÿһ��������ѡ��:ִ������(cmd)/����,�Ժ���и߼�����,Ҳ��������
echo һ����һ��
echo ÿ����Ӻ�ֱ��д���ļ� ��Ӻ󲻿ɳ���
echo enjoy it!
echo.
echo 1.����
echo 0.�������˵�
:newfilec
set choose=none
set /p choose=^>
if %choose%==1 goto newfile0
if %choose%==0 goto home
goto newfilec
:newfile0
set addcommandtick=0
echo ������vbs�ļ�������(����.vbs):
:newfile0next
set vbsname=null
set /p vbsname=^>
if %vbsname%==null goto newfile0next
set line=1
:newfileing
echo File "%vbsname%.vbs" / Line %line%
echo ��ѡ��Ҫ��ӵ���Ŀ:
echo 1.ִ������
echo 2.����
echo 0.�˳��༭
:newfileing2
set choosenew=none
set /p choosenew=^>
if %choosenew%==1 goto newfileingcommand
if %choosenew%==2 goto newfileingwindow
if %choosenew%==0 goto newfileingexit
goto newfileing2
:newfileingexit
echo ȷ��Ҫ�˳��༭?(y/n)
set exityn=n
set /p exityn=^>
if %exityn%==y if %line%==1 (goto nodone) else goto done
if %exityn%==n goto newfileing
goto newfileingexit
:nodone
echo �ļ� %vbsname%.vbs ���˳��༭.
echo �����ļ�:
echo ��Ϊû������κι���,�����ļ�������
echo ����b����������,���������˳�
set nodonenone=0
set /p nodonenone=^>
if %nodonenone%==b goto home
admin wback
exit
:done
echo �ļ� %vbsname%.vbs ���˳��༭.
echo �� %line% ��,�����ļ�:
echo -----
type %vbsname%.vbs
echo -----
echo q�˳�, �������뷵��������
set none=null
if %none%==q admin wback
goto home
:newfileingcommand
echo File "%vbsname%.vbs" / Line %line%
echo ����cȡ�����
echo ������Ҫִ�е�cmd����:
:newfileingcommandback
set addcommand=null
set /p addcommand=^>
if %addcommand%==null goto newfileingcommandback
if %addcommand%==c goto newfileing
if %addcommandtick%==0 echo set ws=createobject("wscript.shell")>>%vbsname%.vbs
set addcommandtick=1
echo ws.run"cmd.exe /c %addcommand%">>%vbsname.vbs%
set /a line=%line%+1
goto newfileing
:newfileingwindow
echo File "%vbsname%.vbs" / Line %line%
echo ����cȡ�����
echo ������Ҫ�����Ĵ�������:
:newfileingwindowback
set addwindow=null
set /p addwindow=^>ine%
echo ����cȡ�����
if %addwindow%==null goto newfileingwindowback
if %addwindow%==c goto newfileing
echo msgbox("%addwindow%")>>%vbsname%.vbs
set /a line=%line%+1
goto newfileing

