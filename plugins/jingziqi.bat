@echo off
:started
color
cls
:startnocls
echo ---�˵�---
echo s - ��ʼ
echo e - �˳�
echo v - �汾
:setting
set jzqcom=null
set /p jzqcom=^>
if %jzqcom%==s goto wnewgame
if %jzqcom%==e cls&&admin wback
if %jzqcom%==v goto version
goto started
:version
cls
echo ������ v1.0 by wyf9 and xhc861.2022.12.19
goto startnocls
:wnewgame
color
echo ������ʽ:
echo.
echo mode1:
echo ��ͬexcel,��Ҫ�����ڵڶ��е�����,����"c2"����(a/b/c���� 1/2/3����)
echo "��"��ʾû��
echo ��һ������Ĭ�ϰ���
echo.
echo mode2:
echo ��Ӧ��������:
echo �����ש��ש���
echo ��������������
echo �ǩ��贈�贈��  
echo ��������������
echo �ǩ��贈�贈��  
echo ��������������
echo �����ߩ��ߩ�
echo ��������ȷ������
echo.
echo ע��:��������ո�, ��ʹ�������!
echo.
echo ��ѡ��ģʽ:
echo 1.˫��(�����˲ٿ�ͬһ̨����) by wyf9
echo 2.�˻�(�͵�����)by xhc861
echo 0.����������
echo ����ѡ��
:wnewgamechoose
set jzqnc=none
set /p jzqnc=^>
if %jzqnc%==1 goto mode1start
if %jzqnc%==2 goto mode2start
if %jzqnc%==0 goto started
goto wnewgamechoose
:mode1start
echo Loading...
set jzqdown=none
set a1=��
set a2=��
set a3=��
set b1=��
set b2=��
set b3=��
set c1=��
set c2=��
set c3=��
set alltick=0
set whitetick=0
set blacktick=0
:mode1white
set jzqnow=w
cls
echo ģʽ:˫�� / �����ֵ�:���� 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
set jzqdown=null
set /p jzqdown=^>
:mode1whiteio
if %jzqdown%==null goto mode1white
if %jzqdown%==q goto started
if %jzqdown%==j goto mode1black
if %jzqdown%==a1 (if %a1%==�� set a1=��&&goto mode1whiteio2)
if %jzqdown%==a2 (if %a2%==�� set a2=��&&goto mode1whiteio2)
if %jzqdown%==a3 (if %a3%==�� set a3=��&&goto mode1whiteio2)
if %jzqdown%==b1 (if %b1%==�� set b1=��&&goto mode1whiteio2)
if %jzqdown%==b2 (if %b2%==�� set b2=��&&goto mode1whiteio2)
if %jzqdown%==b3 (if %b3%==�� set b3=��&&goto mode1whiteio2)
if %jzqdown%==c1 (if %c1%==�� set c1=��&&goto mode1whiteio2)
if %jzqdown%==c2 (if %c2%==�� set c2=��&&goto mode1whiteio2)
if %jzqdown%==c3 (if %c3%==�� set c3=��&&goto mode1whiteio2)
goto mode1white
:mode1whiteio2
set /a alltick=%alltick%+1
set /a whitetick=%whitetick%+1
if %a1%==�� if %a2%==�� if %a3%==�� goto mode1whitewin
if %b1%==�� if %b2%==�� if %b3%==�� goto mode1whitewin
if %c1%==�� if %c2%==�� if %c3%==�� goto mode1whitewin
if %a1%==�� if %b1%==�� if %c1%==�� goto mode1whitewin
if %a2%==�� if %b2%==�� if %c2%==�� goto mode1whitewin
if %a3%==�� if %b3%==�� if %c3%==�� goto mode1whitewin
if %a1%==�� if %b2%==�� if %c3%==�� goto mode1whitewin
if %a3%==�� if %b2%==�� if %c1%==�� goto mode1whitewin
rem if not %a1%==�� if not %a3%==�� if not %b2%==�� if not %c1%==�� if not %c3%==�� goto nowin
if %alltick%==8 goto nowin
goto mode1black
:mode1black
set jzqnow=b
cls
echo ģʽ:˫�� / �����ֵ�:���� 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
set jzqdown=null
set /p jzqdown=^>
:mode1blackio
if %jzqdown%==null goto mode1black
if %jzqdown%==q goto started
if %jzqdown%==j goto mode1white
if %jzqdown%==a1 if %a1%==�� set a1=��&&goto mode1blackio2
if %jzqdown%==a2 if %a2%==�� set a2=��&&goto mode1blackio2
if %jzqdown%==a3 if %a3%==�� set a3=��&&goto mode1blackio2
if %jzqdown%==b1 if %b1%==�� set b1=��&&goto mode1blackio2
if %jzqdown%==b2 if %b2%==�� set b2=��&&goto mode1blackio2
if %jzqdown%==b3 if %b3%==�� set b3=��&&goto mode1blackio2
if %jzqdown%==c1 if %c1%==�� set c1=��&&goto mode1blackio2
if %jzqdown%==c2 if %c2%==�� set c2=��&&goto mode1blackio2
if %jzqdown%==c3 if %c3%==�� set c3=��&&goto mode1blackio2
goto mode1black
:mode1blackio2
set /a alltick=%alltick%+1
set /a blacktick=%blacktick%+1
if %a1%==�� if %a2%==�� if %a3%==�� goto mode1blackwin
if %b1%==�� if %b2%==�� if %b3%==�� goto mode1blackwin
if %c1%==�� if %c2%==�� if %c3%==�� goto mode1blackwin
if %a1%==�� if %b1%==�� if %c1%==�� goto mode1blackwin
if %a2%==�� if %b2%==�� if %c2%==�� goto mode1blackwin
if %a3%==�� if %b3%==�� if %c3%==�� goto mode1blackwin
if %a1%==�� if %b2%==�� if %c3%==�� goto mode1blackwin
if %a3%==�� if %b2%==�� if %c1%==�� goto mode1blackwin
rem if not %a1%==�� if not %a3%==�� if not %b2%==�� if not %c1%==�� if not %c3%==�� goto nowin
if %alltick%==8 goto nowin
goto mode1white
:mode1whitewin
cls
echo ģʽ:˫�� / �����ֵ�:Null 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
echo.
echo �׷�Ӯ��!
echo r���¿�ʼ/q����������
:mode1whitewin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto wnewgame
if %wzqchoose%==q goto started
goto mode1whitewin2
:mode1blackwin
cls
echo ģʽ:˫�� / �����ֵ�:Null 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
echo.
echo �ڷ�Ӯ��!
echo r���¿�ʼ/q����������
:mode1blackwin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto wnewgame
if %wzqchoose%==q goto started
goto mode1blackwin2
:nowin
cls
echo ģʽ:˫�� / �����ֵ�:Null 
echo ��������:%alltick% / ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C
echo  ���������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%��
echo  ���������੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%��
echo  ���������੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%��
echo  ���������ة������ة�������
echo.
echo ƽ��!
echo r���¿�ʼ/q����������
:nowin2
set wzqchoose=none
set /p wzqchoose=^>
if %wzqchoose%==r goto wnewgame
if %wzqchoose%==q goto started
goto nowin2

:mode2start
@echo off
rem mode con lines=12 cols=37
setlocal enabledelayedexpansion
for /l %%s in (1,1,7) do set SP=��!sp!

goto :start
argument�Ƿ���ʾΪ��ʾ���̵�ָ��
fate�����ܼ���
special�Ƿ�����ܼ���
Turn����ѡ��ָ��
sub_flagѡ��ָ��
input����
record���Ӽ�¼
remainʣ�µ�λ��
winflagʤ�����

::��ǩ˵��
start����
newGame����Ϸ
beginѭ����ʼ
Machine��������
T_flash�������̸���

:start
::������������
set chs1=��
set chs0=��
set L7=�����ש��ש���
set L6=��������������
set L5=�ǩ��贈�贈��  
set L4=��������������
set L3=�ǩ��贈�贈��  
set L2=��������������
set L1=�����ߩ��ߩ�

::============================================================
::��ʼ
:newGame
color 72
setlocal
set argument=1
set/a whoFirst=%random%%%2
set "remain= 1 2 3 4 5 6 7 8 9"
::----------------------------------------
:begin
cls
call :show
::����ʤ���ж�
if "%fate%" geq "5" call :judgeVic
if defined winflag goto :end
if "%fate%" geq "9" goto :end
::�������������ж����ӷ�
if not defined special (
��set/a fate+=1,Turn="(whoFirst+fate+1)%%2"
) else set special=
if %Turn% equ 0 goto :Machine

::����
set sub_flag=%Turn%
set input=
set/p input=%SP:~3%�ȴ�����ѡ��
if not defined input goto :judgeIn
if %input% lss 1 goto :judgeIn
if %input% gtr 9 goto :judgeIn
if defined _%input% (
:judgeIn
��call :err
��set special=1
��goto :begin
)
goto :T_flash

::��������
:Machine
set sub_flag=%Turn%
if %fate% gtr 1 call :PCI
::�����������
:PCR
set Rc=
if defined bN (set/a Rc=%random%%%bN) else set/a Rc="%random%%%(9-fate)"
if not defined Best set Best=%remain: =%
set input=!Best:~%Rc%,1!
set/p=%SP:~3%��������˼�� <nul
set "cir=/-\|"
set CN=&set cirN=
:lp
if "%cirN%" geq "4" set/a cirN=0,CN+=1
set/p=!cir:~%cirN%,1!<nul
set/a cirN+=1
ping -n 1 127.1>nul
if "%CN%" leq "3" goto :lp

::���Ӻ����̸���
:T_flash
set _%input%=%sub_flag%
set record=%record%%input%
set remain=!remain:%input%=!
set/a m=(input-1)/3+1,n=(input-1)%%3+1
set/a m2=m*2,n2=n*2,ln=n2-1
set LL=!L%m2%!
set/a pie="(sub_flag+whoFirst)%%2"
set L%m2%=!LL:~,%ln%!!chs%pie%!!LL:~%n2%!
goto :begin
::----------------------------------------

::�����ʾ
:end
set player1=��&set color1=color 3a
set player0=����&set color0=color 7e
if defined winflag (echo.%SP:~1%!player%sub_flag%!Ӯ�ˡ�&!color%sub_flag%!) else echo.%SP%ƽ�֡�
echo %SP%����n����,�������뷵��������.
endlocal
set none=0
set /p none=
if %none%==0 goto started
if %none%==n goto wnewgame
goto started
rem goto :newGame
::============================================================

::���ñ�ǩ
::��ʾ����
:show
echo+
for /l %%i in (7 -1 1) do echo %SP:~2%!L%%i!
if defined argument (
��set argument=
��set L=%L2:~,1%
��set L2=!L!��!L!��!L!��!L!
��set L4=!L2!
��set L6=!L2!
)
goto :eof

::����
:err
echo ������󣬻��λ�����������ӡ����������롭��
ping -n 2 127.1>nul
goto :eof

::�����жϣ�ʤ��ƽ
::����оٷ�
:judgeVic
for %%i in (123 456 789 147 258 369 159 357) do (
��set had=%%i
��set had=!had:~,1! !had:~1,1! !had:~-1!
��for /f "tokens=1-3" %%j in ("!had!") do (
����if "!_%%j!!_%%k!!_%%l!"=="%sub_flag%%sub_flag%%sub_flag%" set winflag=%sub_flag%
��)
)
goto :eof

::������������
:PCI
::echo Remain%remain%
set/a _subFlag=(sub_flag+1)%%2
set bN=
set ept=&set Epx=
set Best=
set input=
set d_3flag=
for %%c in (%remain%) do (
��set d1=&set d2=&set d3=
��set d_1=&set d_2=&set d_3=
��for %%i in ("1 2 3" "4 5 6" "7 8 9" "1 4 7" "2 5 8" "3 6 9" "1 5 9" "3 5 7") do (
����set isFlag=
����set noFlag=&set _noFlag=
����set/a baseN=1,_baseN=1
����for %%j in (%%~i) do (
������if "%%j"=="%%c" set isFlag=1
������if "!_%%j!"=="%_subFlag%" set/a noFlag=1,_baseN+=1
������if "!_%%j!"=="%sub_flag%" set/a baseN+=1,_noFlag=1
����)
����if defined isFlag (
������if not defined noFlag set/a d!baseN!+=1
������if not defined _noFlag set/a d_!_baseN!+=1
����)
����if defined d3 set Best=%%c&set bN=1&goto :eof
����if defined d_3 set d_3flag=%%c
��)
��set/a ept=baseN+d!baseN!+_baseN+d_!_baseN!
��if "!Epx!" equ "!ept!" set Best=%%c!Best!&set/a bN+=1
��if "!Epx!" lss "!ept!" set Epx=!ept!&set Best=%%c&set bN=1
)
if defined d_3flag set Best=%d_3flag%&set bN=1
goto :eof