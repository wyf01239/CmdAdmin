@echo off
set showver=null
set nogame=null
:started
cls
echo �˵�:
echo s / ��ʼ
echo v / �汾��Ϣ
echo e / �˳�
if %showver%==true set showver=false&&echo ������ v0.114514 by wyf9.2022.12.28
if %nogame%==true echo û�м�⵽�ļ�!
:started2
set startedchoose=null
set /p startedchoose=^>
if %startedchoose%==s goto startgame
if %startedchoose%==v goto showversion
if %startedchoose%==e admin wback
goto started
:showversion
set showver=true
goto started
:startgame
echo ������ʼ
echo ����:9x9
echo ��һ������Ĭ�ϰ���
echo ��������:��ͬexcel,��Ҫ�����ڵڶ��е�����,����"c2"����(a/b/c���� 1/2/3����)
echo "��"��ʾû��
echo ����1��ʼ,0����
:startgameyn
set startgameyn=none
set /p startgameyn=^>
if %startgameyn%==0 goto started
if %startgameyn%==1 goto startgamenext
goto startgameyn
:startgamenext
cls
echo Loading......
set now=Null
set alltick=0
set whitetick=0
set blacktick=0
set a1=��
set a2=��
set a3=��
set a4=��
set a5=��
set a6=��
set a7=��
set a8=��
set a9=��
set b1=��
set b2=��
set b3=��
set b4=��
set b5=��
set b6=��
set b7=��
set b8=��
set b9=��
set c1=��
set c2=��
set c3=��
set c4=��
set c5=��
set c6=��
set c7=��
set c8=��
set c9=��
set d1=��
set d2=��
set d3=��
set d4=��
set d5=��
set d6=��
set d7=��
set d8=��
set d9=��
set e1=��
set e2=��
set e3=��
set e4=��
set e5=��
set e6=��
set e7=��
set e8=��
set e9=��
set f1=��
set f2=��
set f3=��
set f4=��
set f5=��
set f6=��
set f7=��
set f8=��
set f9=��
set g1=��
set g2=��
set g3=��
set g4=��
set g5=��
set g6=��
set g7=��
set g8=��
set g9=��
set h1=��
set h2=��
set h3=��
set h4=��
set h5=��
set h6=��
set h7=��
set h8=��
set h9=��
set i1=��
set i2=��
set i3=��
set i4=��
set i5=��
set i6=��
set i7=��
set i8=��
set i9=��
:gamingwhite
set now=��
echo �����ֵ�:%now%�� / ��������:%alltick%
echo ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C   D   E   F   G   H   I
echo  ���������Щ������Щ������Щ������Щ������Щ������Щ������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%�� %d1%�� %e1%�� %f1%�� %g1%�� %h1%�� %i1%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%�� %d2%�� %e2%�� %f2%�� %g2%�� %h2%�� %i2%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%�� %d3%�� %e3%�� %f3%�� %g3%�� %h3%�� %i3%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 4�� %a4%�� %b4%�� %c4%�� %d4%�� %e4%�� %f4%�� %g4%�� %h4%�� %i4%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 5�� %a5%�� %b5%�� %c5%�� %d5%�� %e5%�� %f5%�� %g5%�� %h5%�� %i5%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 6�� %a6%�� %b6%�� %c6%�� %d6%�� %e6%�� %f6%�� %g6%�� %h6%�� %i6%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 7�� %a7%�� %b7%�� %c7%�� %d7%�� %e7%�� %f7%�� %g7%�� %h7%�� %i7%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 8�� %a8%�� %b8%�� %c8%�� %d8%�� %e8%�� %f8%�� %g8%�� %h8%�� %i8%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 9�� %a9%�� %b9%�� %c9%�� %d9%�� %e9%�� %f9%�� %g9%�� %h9%�� %i9%��
echo  ���������ة������ة������ة������ة������ة������ة������ة������ة�������
goto gamingwhiteio
:gamingwhiteio
set choose=null
set /p choose=^>
if %choose%==null goto gamingwhiteio
if %choose%==a1 set a1=��&&set /a alltick=%alltick%+1set /a whitetick=%whitetick%+1&&goto gamingwhiteio2
goto gamingwhite
:gamingblack
set now=��
echo �����ֵ�:%now%�� / ��������:%alltick%
echo ���°���:%whitetick% / ���º���:%blacktick%
echo    A   B   C   D   E   F   G   H   I
echo  ���������Щ������Щ������Щ������Щ������Щ������Щ������Щ������Щ�������
echo 1�� %a1%�� %b1%�� %c1%�� %d1%�� %e1%�� %f1%�� %g1%�� %h1%�� %i1%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 2�� %a2%�� %b2%�� %c2%�� %d2%�� %e2%�� %f2%�� %g2%�� %h2%�� %i2%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 3�� %a3%�� %b3%�� %c3%�� %d3%�� %e3%�� %f3%�� %g3%�� %h3%�� %i3%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 4�� %a4%�� %b4%�� %c4%�� %d4%�� %e4%�� %f4%�� %g4%�� %h4%�� %i4%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 5�� %a5%�� %b5%�� %c5%�� %d5%�� %e5%�� %f5%�� %g5%�� %h5%�� %i5%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 6�� %a6%�� %b6%�� %c6%�� %d6%�� %e6%�� %f6%�� %g6%�� %h6%�� %i6%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 7�� %a7%�� %b7%�� %c7%�� %d7%�� %e7%�� %f7%�� %g7%�� %h7%�� %i7%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 8�� %a8%�� %b8%�� %c8%�� %d8%�� %e8%�� %f8%�� %g8%�� %h8%�� %i8%��
echo  ���������੤�����੤�����੤�����੤�����੤�����੤�����੤�����੤������
echo 9�� %a9%�� %b9%�� %c9%�� %d9%�� %e9%�� %f9%�� %g9%�� %h9%�� %i9%��
echo  ���������ة������ة������ة������ة������ة������ة������ة������ة�������
goto gamingwhite