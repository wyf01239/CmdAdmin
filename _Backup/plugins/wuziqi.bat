@echo off
set showver=null
:started
cls
echo �˵�:
echo s / ��ʼ
echo l / ����
echo v / �汾��Ϣ
echo e / �˳�
if %showver%==true set showver=false&&echo ������ v0.114514 by wyf9. 2022.12.28
if not exist data\wuziqi_gaming.txt (
	echo none>data\wuziqi_gaming.txt
)
set /p started_gaming=<data\wuziqi_gaming.txt
:started2
set startedchoose=null
set /p startedchoose=^>
if "%startedchoose%"=="s" goto startgame
if "%startedchoose%"=="l" goto loadgame
if "%startedchoose%"=="v" goto showversion
if "%startedchoose%"=="e" admin wback
goto started
:showversion
set showver=true
goto started
:loadgame
if %started_gaming%==false (
	set status_gaming=���˳� - ���ݴ���
	echo ״̬: %status_gaming%
	echo �Ƿ��Իָ�? y/n
	echo ��ʾ: ��������쳣���ܵ��³������
	set /p recfromset=^>
	if "%recfromset%"=="y" (
		if "%now%"=="��" (
			goto gamingwhite
		) else if "%now%"=="��" (
			goto gamingblack
		) else (
		echo �ָ�ʧ�� - δ֪��״̬
		echo Ҳ�������Ѿ�ȷ��ʤ��. 
		pause>nul
		goto started
		)
	) else (
		goto started
	)
) else if %started_gaming%==true (
	set status_gaming=�쳣�˳� - ���ݴ���
	echo ״̬: %status_gaming%
	echo �Ƿ��Իָ�? y/n
	echo ��ʾ: ��������쳣���ܵ��³������
	set /p recfromset=^>
	if "%recfromset%"=="y" (
		if "%now%"=="��" (
			goto gamingwhite
		) else if "%now%"=="��" (
			goto gamingblack
		) else (
		echo �ָ�ʧ�� - δ֪��״̬
		echo Ҳ�������Ѿ�ȷ��ʤ��. 
		pause>nul
		goto started
		)
	) else (
		goto started
	)
) else if %started_gaming%==none (
	set status_gaming=δ�ҵ� - δ֪
	echo ״̬: %status_gaming%
	echo �޷��ָ�.
	pause>nul
	goto started
) else (
	set status_gaming=��Ч״̬ - δ֪
	echo ״̬: %status_gaming%
	echo �޷��ָ�.
	pause>nul
	goto started
)
:startgame
echo ������ʼ
echo ����:9x9
echo ��һ������Ĭ�ϰ���
echo ��������:��ͬexcel,��Ҫ�����ڵڶ��е�����,����"c2"����(a/b/c���� 1/2/3����)
echo "��"��ʾû��
echo ����1��ʼ,0����
echo -1: qqȺר��
:startgameyn
set startgameyn=none
set /p startgameyn=^>
if "%startgameyn%"=="0" goto started
if "%startgameyn%"=="1" (
	set wuziqi_qq=false
	goto startgamenext
	)
if "%startgameyn%"=="-1" (
	set wuziqi_qq=true
	goto startgamenext
	)
goto startgameyn
:startgamenext
cls
echo Loading......
echo true>data\wuziqi_gaming.txt
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
if %wuziqi_qq%==true (
	goto gamingwhiteqq
) else (
	goto gamingwhite
)
:gamingwhite
cls
set now=��
echo ���� "q" ����, "z" ����.
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
if "%choose%"=="null" goto gamingwhite
if "%choose%"=="q" echo false>data\wuziqi_gaming.txt&&goto started
if "%choose%"=="z" goto gamingblack

if "%choose%"=="a1" (if %a1%==�� (set a1=��&&goto gamingwhiteio2))
if "%choose%"=="a2" (if %a2%==�� (set a2=��&&goto gamingwhiteio2))
if "%choose%"=="a3" (if %a3%==�� (set a3=��&&goto gamingwhiteio2))
if "%choose%"=="a4" (if %a4%==�� (set a4=��&&goto gamingwhiteio2))
if "%choose%"=="a5" (if %a5%==�� (set a5=��&&goto gamingwhiteio2))
if "%choose%"=="a6" (if %a6%==�� (set a6=��&&goto gamingwhiteio2))
if "%choose%"=="a7" (if %a7%==�� (set a7=��&&goto gamingwhiteio2))
if "%choose%"=="a8" (if %a8%==�� (set a8=��&&goto gamingwhiteio2))
if "%choose%"=="a9" (if %a9%==�� (set a9=��&&goto gamingwhiteio2))

if "%choose%"=="b1" (if %b1%==�� (set b1=��&&goto gamingwhiteio2))
if "%choose%"=="b2" (if %b2%==�� (set b2=��&&goto gamingwhiteio2))
if "%choose%"=="b3" (if %b3%==�� (set b3=��&&goto gamingwhiteio2))
if "%choose%"=="b4" (if %b4%==�� (set b4=��&&goto gamingwhiteio2))
if "%choose%"=="b5" (if %b5%==�� (set b5=��&&goto gamingwhiteio2))
if "%choose%"=="b6" (if %b6%==�� (set b6=��&&goto gamingwhiteio2))
if "%choose%"=="b7" (if %b7%==�� (set b7=��&&goto gamingwhiteio2))
if "%choose%"=="b8" (if %b8%==�� (set b8=��&&goto gamingwhiteio2))
if "%choose%"=="b9" (if %b9%==�� (set b9=��&&goto gamingwhiteio2))

if "%choose%"=="c1" (if %c1%==�� (set c1=��&&goto gamingwhiteio2))
if "%choose%"=="c2" (if %c2%==�� (set c2=��&&goto gamingwhiteio2))
if "%choose%"=="c3" (if %c3%==�� (set c3=��&&goto gamingwhiteio2))
if "%choose%"=="c4" (if %c4%==�� (set c4=��&&goto gamingwhiteio2))
if "%choose%"=="c5" (if %c5%==�� (set c5=��&&goto gamingwhiteio2))
if "%choose%"=="c6" (if %c6%==�� (set c6=��&&goto gamingwhiteio2))
if "%choose%"=="c7" (if %c7%==�� (set c7=��&&goto gamingwhiteio2))
if "%choose%"=="c8" (if %c8%==�� (set c8=��&&goto gamingwhiteio2))
if "%choose%"=="c9" (if %c9%==�� (set c9=��&&goto gamingwhiteio2))

if "%choose%"=="d1" (if %d1%==�� (set d1=��&&goto gamingwhiteio2))
if "%choose%"=="d2" (if %d2%==�� (set d2=��&&goto gamingwhiteio2))
if "%choose%"=="d3" (if %d3%==�� (set d3=��&&goto gamingwhiteio2))
if "%choose%"=="d4" (if %d4%==�� (set d4=��&&goto gamingwhiteio2))
if "%choose%"=="d5" (if %d5%==�� (set d5=��&&goto gamingwhiteio2))
if "%choose%"=="d6" (if %d6%==�� (set d6=��&&goto gamingwhiteio2))
if "%choose%"=="d7" (if %d7%==�� (set d7=��&&goto gamingwhiteio2))
if "%choose%"=="d8" (if %d8%==�� (set d8=��&&goto gamingwhiteio2))
if "%choose%"=="d9" (if %d9%==�� (set d9=��&&goto gamingwhiteio2))

if "%choose%"=="e1" (if %e1%==�� (set e1=��&&goto gamingwhiteio2))
if "%choose%"=="e2" (if %e2%==�� (set e2=��&&goto gamingwhiteio2))
if "%choose%"=="e3" (if %e3%==�� (set e3=��&&goto gamingwhiteio2))
if "%choose%"=="e4" (if %e4%==�� (set e4=��&&goto gamingwhiteio2))
if "%choose%"=="e5" (if %e5%==�� (set e5=��&&goto gamingwhiteio2))
if "%choose%"=="e6" (if %e6%==�� (set e6=��&&goto gamingwhiteio2))
if "%choose%"=="e7" (if %e7%==�� (set e7=��&&goto gamingwhiteio2))
if "%choose%"=="e8" (if %e8%==�� (set e8=��&&goto gamingwhiteio2))
if "%choose%"=="e9" (if %e9%==�� (set e9=��&&goto gamingwhiteio2))

if "%choose%"=="f1" (if %f1%==�� (set f1=��&&goto gamingwhiteio2))
if "%choose%"=="f2" (if %f2%==�� (set f2=��&&goto gamingwhiteio2))
if "%choose%"=="f3" (if %f3%==�� (set f3=��&&goto gamingwhiteio2))
if "%choose%"=="f4" (if %f4%==�� (set f4=��&&goto gamingwhiteio2))
if "%choose%"=="f5" (if %f5%==�� (set f5=��&&goto gamingwhiteio2))
if "%choose%"=="f6" (if %f6%==�� (set f6=��&&goto gamingwhiteio2))
if "%choose%"=="f7" (if %f7%==�� (set f7=��&&goto gamingwhiteio2))
if "%choose%"=="f8" (if %f8%==�� (set f8=��&&goto gamingwhiteio2))
if "%choose%"=="f9" (if %f9%==�� (set f9=��&&goto gamingwhiteio2))

if "%choose%"=="g1" (if %g1%==�� (set g1=��&&goto gamingwhiteio2))
if "%choose%"=="g2" (if %g2%==�� (set g2=��&&goto gamingwhiteio2))
if "%choose%"=="g3" (if %g3%==�� (set g3=��&&goto gamingwhiteio2))
if "%choose%"=="g4" (if %g4%==�� (set g4=��&&goto gamingwhiteio2))
if "%choose%"=="g5" (if %g5%==�� (set g5=��&&goto gamingwhiteio2))
if "%choose%"=="g6" (if %g6%==�� (set g6=��&&goto gamingwhiteio2))
if "%choose%"=="g7" (if %g7%==�� (set g7=��&&goto gamingwhiteio2))
if "%choose%"=="g8" (if %g8%==�� (set g8=��&&goto gamingwhiteio2))
if "%choose%"=="g9" (if %g9%==�� (set g9=��&&goto gamingwhiteio2))

if "%choose%"=="h1" (if %h1%==�� (set g1=��&&goto gamingwhiteio2))
if "%choose%"=="h2" (if %h2%==�� (set g2=��&&goto gamingwhiteio2))
if "%choose%"=="h3" (if %h3%==�� (set g3=��&&goto gamingwhiteio2))
if "%choose%"=="h4" (if %h4%==�� (set g4=��&&goto gamingwhiteio2))
if "%choose%"=="h5" (if %h5%==�� (set g5=��&&goto gamingwhiteio2))
if "%choose%"=="h6" (if %h6%==�� (set g6=��&&goto gamingwhiteio2))
if "%choose%"=="h7" (if %h7%==�� (set g7=��&&goto gamingwhiteio2))
if "%choose%"=="h8" (if %h8%==�� (set g8=��&&goto gamingwhiteio2))
if "%choose%"=="h9" (if %h9%==�� (set g9=��&&goto gamingwhiteio2))

if "%choose%"=="i1" (if %i1%==�� (set i1=��&&goto gamingwhiteio2))
if "%choose%"=="i2" (if %i2%==�� (set i2=��&&goto gamingwhiteio2))
if "%choose%"=="i3" (if %i3%==�� (set i3=��&&goto gamingwhiteio2))
if "%choose%"=="i4" (if %i4%==�� (set i4=��&&goto gamingwhiteio2))
if "%choose%"=="i5" (if %i5%==�� (set i5=��&&goto gamingwhiteio2))
if "%choose%"=="i6" (if %i6%==�� (set i6=��&&goto gamingwhiteio2))
if "%choose%"=="i7" (if %i7%==�� (set i7=��&&goto gamingwhiteio2))
if "%choose%"=="i8" (if %i8%==�� (set i8=��&&goto gamingwhiteio2))
if "%choose%"=="i9" (if %i9%==�� (set i9=��&&goto gamingwhiteio2))
goto gamingwhite
:gamingwhiteio2
set /a alltick=%alltick%+1
set /a whitetick=%whitetick%+1
goto gamingblack
:gamingblack
cls
set now=��
echo ���� "q" ����, "z" ����.
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
goto gamingblackio
:gamingblackio
set choose=null
set /p choose=^>
if "%choose%"=="null" goto gamingblack
if "%choose%"=="q" echo false>data\wuziqi_gaming.txt&&goto started
if "%choose%"=="z" goto gamingblack

if "%choose%"=="a1" (if %a1%==�� (set a1=��&&goto gamingblackio2))
if "%choose%"=="a2" (if %a2%==�� (set a2=��&&goto gamingblackio2))
if "%choose%"=="a3" (if %a3%==�� (set a3=��&&goto gamingblackio2))
if "%choose%"=="a4" (if %a4%==�� (set a4=��&&goto gamingblackio2))
if "%choose%"=="a5" (if %a5%==�� (set a5=��&&goto gamingblackio2))
if "%choose%"=="a6" (if %a6%==�� (set a6=��&&goto gamingblackio2))
if "%choose%"=="a7" (if %a7%==�� (set a7=��&&goto gamingblackio2))
if "%choose%"=="a8" (if %a8%==�� (set a8=��&&goto gamingblackio2))
if "%choose%"=="a9" (if %a9%==�� (set a9=��&&goto gamingblackio2))

if "%choose%"=="b1" (if %b1%==�� (set b1=��&&goto gamingblackio2))
if "%choose%"=="b2" (if %b2%==�� (set b2=��&&goto gamingblackio2))
if "%choose%"=="b3" (if %b3%==�� (set b3=��&&goto gamingblackio2))
if "%choose%"=="b4" (if %b4%==�� (set b4=��&&goto gamingblackio2))
if "%choose%"=="b5" (if %b5%==�� (set b5=��&&goto gamingblackio2))
if "%choose%"=="b6" (if %b6%==�� (set b6=��&&goto gamingblackio2))
if "%choose%"=="b7" (if %b7%==�� (set b7=��&&goto gamingblackio2))
if "%choose%"=="b8" (if %b8%==�� (set b8=��&&goto gamingblackio2))
if "%choose%"=="b9" (if %b9%==�� (set b9=��&&goto gamingblackio2))

if "%choose%"=="c1" (if %c1%==�� (set c1=��&&goto gamingblackio2))
if "%choose%"=="c2" (if %c2%==�� (set c2=��&&goto gamingblackio2))
if "%choose%"=="c3" (if %c3%==�� (set c3=��&&goto gamingblackio2))
if "%choose%"=="c4" (if %c4%==�� (set c4=��&&goto gamingblackio2))
if "%choose%"=="c5" (if %c5%==�� (set c5=��&&goto gamingblackio2))
if "%choose%"=="c6" (if %c6%==�� (set c6=��&&goto gamingblackio2))
if "%choose%"=="c7" (if %c7%==�� (set c7=��&&goto gamingblackio2))
if "%choose%"=="c8" (if %c8%==�� (set c8=��&&goto gamingblackio2))
if "%choose%"=="c9" (if %c9%==�� (set c9=��&&goto gamingblackio2))

if "%choose%"=="d1" (if %d1%==�� (set d1=��&&goto gamingblackio2))
if "%choose%"=="d2" (if %d2%==�� (set d2=��&&goto gamingblackio2))
if "%choose%"=="d3" (if %d3%==�� (set d3=��&&goto gamingblackio2))
if "%choose%"=="d4" (if %d4%==�� (set d4=��&&goto gamingblackio2))
if "%choose%"=="d5" (if %d5%==�� (set d5=��&&goto gamingblackio2))
if "%choose%"=="d6" (if %d6%==�� (set d6=��&&goto gamingblackio2))
if "%choose%"=="d7" (if %d7%==�� (set d7=��&&goto gamingblackio2))
if "%choose%"=="d8" (if %d8%==�� (set d8=��&&goto gamingblackio2))
if "%choose%"=="d9" (if %d9%==�� (set d9=��&&goto gamingblackio2))

if "%choose%"=="e1" (if %e1%==�� (set e1=��&&goto gamingblackio2))
if "%choose%"=="e2" (if %e2%==�� (set e2=��&&goto gamingblackio2))
if "%choose%"=="e3" (if %e3%==�� (set e3=��&&goto gamingblackio2))
if "%choose%"=="e4" (if %e4%==�� (set e4=��&&goto gamingblackio2))
if "%choose%"=="e5" (if %e5%==�� (set e5=��&&goto gamingblackio2))
if "%choose%"=="e6" (if %e6%==�� (set e6=��&&goto gamingblackio2))
if "%choose%"=="e7" (if %e7%==�� (set e7=��&&goto gamingblackio2))
if "%choose%"=="e8" (if %e8%==�� (set e8=��&&goto gamingblackio2))
if "%choose%"=="e9" (if %e9%==�� (set e9=��&&goto gamingblackio2))

if "%choose%"=="f1" (if %f1%==�� (set f1=��&&goto gamingblackio2))
if "%choose%"=="f2" (if %f2%==�� (set f2=��&&goto gamingblackio2))
if "%choose%"=="f3" (if %f3%==�� (set f3=��&&goto gamingblackio2))
if "%choose%"=="f4" (if %f4%==�� (set f4=��&&goto gamingblackio2))
if "%choose%"=="f5" (if %f5%==�� (set f5=��&&goto gamingblackio2))
if "%choose%"=="f6" (if %f6%==�� (set f6=��&&goto gamingblackio2))
if "%choose%"=="f7" (if %f7%==�� (set f7=��&&goto gamingblackio2))
if "%choose%"=="f8" (if %f8%==�� (set f8=��&&goto gamingblackio2))
if "%choose%"=="f9" (if %f9%==�� (set f9=��&&goto gamingblackio2))

if "%choose%"=="g1" (if %g1%==�� (set g1=��&&goto gamingblackio2))
if "%choose%"=="g2" (if %g2%==�� (set g2=��&&goto gamingblackio2))
if "%choose%"=="g3" (if %g3%==�� (set g3=��&&goto gamingblackio2))
if "%choose%"=="g4" (if %g4%==�� (set g4=��&&goto gamingblackio2))
if "%choose%"=="g5" (if %g5%==�� (set g5=��&&goto gamingblackio2))
if "%choose%"=="g6" (if %g6%==�� (set g6=��&&goto gamingblackio2))
if "%choose%"=="g7" (if %g7%==�� (set g7=��&&goto gamingblackio2))
if "%choose%"=="g8" (if %g8%==�� (set g8=��&&goto gamingblackio2))
if "%choose%"=="g9" (if %g9%==�� (set g9=��&&goto gamingblackio2))

if "%choose%"=="h1" (if %h1%==�� (set g1=��&&goto gamingblackio2))
if "%choose%"=="h2" (if %h2%==�� (set g2=��&&goto gamingblackio2))
if "%choose%"=="h3" (if %h3%==�� (set g3=��&&goto gamingblackio2))
if "%choose%"=="h4" (if %h4%==�� (set g4=��&&goto gamingblackio2))
if "%choose%"=="h5" (if %h5%==�� (set g5=��&&goto gamingblackio2))
if "%choose%"=="h6" (if %h6%==�� (set g6=��&&goto gamingblackio2))
if "%choose%"=="h7" (if %h7%==�� (set g7=��&&goto gamingblackio2))
if "%choose%"=="h8" (if %h8%==�� (set g8=��&&goto gamingblackio2))
if "%choose%"=="h9" (if %h9%==�� (set g9=��&&goto gamingblackio2))

if "%choose%"=="i1" (if %i1%==�� (set i1=��&&goto gamingblackio2))
if "%choose%"=="i2" (if %i2%==�� (set i2=��&&goto gamingblackio2))
if "%choose%"=="i3" (if %i3%==�� (set i3=��&&goto gamingblackio2))
if "%choose%"=="i4" (if %i4%==�� (set i4=��&&goto gamingblackio2))
if "%choose%"=="i5" (if %i5%==�� (set i5=��&&goto gamingblackio2))
if "%choose%"=="i6" (if %i6%==�� (set i6=��&&goto gamingblackio2))
if "%choose%"=="i7" (if %i7%==�� (set i7=��&&goto gamingblackio2))
if "%choose%"=="i8" (if %i8%==�� (set i8=��&&goto gamingblackio2))
if "%choose%"=="i9" (if %i9%==�� (set i9=��&&goto gamingblackio2))
goto gamingblack
:gamingblackio2
set /a alltick=%alltick%+1
set /a blacktick=%blacktick%+1
goto gamingwhite

:gamingwhiteqq
cls
set now=��
echo ���� "q" ����, "z" ����.
echo �����ֵ�:%now%�� / ��������:%alltick%
echo ���°���:%whitetick% / ���º���:%blacktick%
echo 0 A B C D E F G H I
echo 1 %a1%%b1%%c1%%d1%%e1%%f1%%g1%%h1%%i1%
echo 2 %a2%%b2%%c2%%d2%%e2%%f2%%g2%%h2%%i2%
echo 3 %a3%%b3%%c3%%d3%%e3%%f3%%g3%%h3%%i3%
echo 4 %a4%%b4%%c4%%d4%%e4%%f4%%g4%%h4%%i4%
echo 5 %a5%%b5%%c5%%d5%%e5%%f5%%g5%%h5%%i5%
echo 6 %a6%%b6%%c6%%d6%%e6%%f6%%g6%%h6%%i6%
echo 7 %a7%%b7%%c7%%d7%%e7%%f7%%g7%%h7%%i7%
echo 8 %a8%%b8%%c8%%d8%%e8%%f8%%g8%%h8%%i8%
echo 9 %a9%%b9%%c9%%d9%%e9%%f9%%g9%%h9%%i9%
echo.
goto gamingwhiteqqio
:gamingwhiteqqio
set choose=null
set /p choose=^>
if "%choose%"=="null" goto gamingwhiteqq
if "%choose%"=="q" echo false>data\wuziqi_gaming.txt&&goto started
if "%choose%"=="z" goto gamingblackqq

if "%choose%"=="a1" (if %a1%==�� (set a1=��&&goto gamingwhiteqqio2))
if "%choose%"=="a2" (if %a2%==�� (set a2=��&&goto gamingwhiteqqio2))
if "%choose%"=="a3" (if %a3%==�� (set a3=��&&goto gamingwhiteqqio2))
if "%choose%"=="a4" (if %a4%==�� (set a4=��&&goto gamingwhiteqqio2))
if "%choose%"=="a5" (if %a5%==�� (set a5=��&&goto gamingwhiteqqio2))
if "%choose%"=="a6" (if %a6%==�� (set a6=��&&goto gamingwhiteqqio2))
if "%choose%"=="a7" (if %a7%==�� (set a7=��&&goto gamingwhiteqqio2))
if "%choose%"=="a8" (if %a8%==�� (set a8=��&&goto gamingwhiteqqio2))
if "%choose%"=="a9" (if %a9%==�� (set a9=��&&goto gamingwhiteqqio2))

if "%choose%"=="b1" (if %b1%==�� (set b1=��&&goto gamingwhiteqqio2))
if "%choose%"=="b2" (if %b2%==�� (set b2=��&&goto gamingwhiteqqio2))
if "%choose%"=="b3" (if %b3%==�� (set b3=��&&goto gamingwhiteqqio2))
if "%choose%"=="b4" (if %b4%==�� (set b4=��&&goto gamingwhiteqqio2))
if "%choose%"=="b5" (if %b5%==�� (set b5=��&&goto gamingwhiteqqio2))
if "%choose%"=="b6" (if %b6%==�� (set b6=��&&goto gamingwhiteqqio2))
if "%choose%"=="b7" (if %b7%==�� (set b7=��&&goto gamingwhiteqqio2))
if "%choose%"=="b8" (if %b8%==�� (set b8=��&&goto gamingwhiteqqio2))
if "%choose%"=="b9" (if %b9%==�� (set b9=��&&goto gamingwhiteqqio2))

if "%choose%"=="c1" (if %c1%==�� (set c1=��&&goto gamingwhiteqqio2))
if "%choose%"=="c2" (if %c2%==�� (set c2=��&&goto gamingwhiteqqio2))
if "%choose%"=="c3" (if %c3%==�� (set c3=��&&goto gamingwhiteqqio2))
if "%choose%"=="c4" (if %c4%==�� (set c4=��&&goto gamingwhiteqqio2))
if "%choose%"=="c5" (if %c5%==�� (set c5=��&&goto gamingwhiteqqio2))
if "%choose%"=="c6" (if %c6%==�� (set c6=��&&goto gamingwhiteqqio2))
if "%choose%"=="c7" (if %c7%==�� (set c7=��&&goto gamingwhiteqqio2))
if "%choose%"=="c8" (if %c8%==�� (set c8=��&&goto gamingwhiteqqio2))
if "%choose%"=="c9" (if %c9%==�� (set c9=��&&goto gamingwhiteqqio2))

if "%choose%"=="d1" (if %d1%==�� (set d1=��&&goto gamingwhiteqqio2))
if "%choose%"=="d2" (if %d2%==�� (set d2=��&&goto gamingwhiteqqio2))
if "%choose%"=="d3" (if %d3%==�� (set d3=��&&goto gamingwhiteqqio2))
if "%choose%"=="d4" (if %d4%==�� (set d4=��&&goto gamingwhiteqqio2))
if "%choose%"=="d5" (if %d5%==�� (set d5=��&&goto gamingwhiteqqio2))
if "%choose%"=="d6" (if %d6%==�� (set d6=��&&goto gamingwhiteqqio2))
if "%choose%"=="d7" (if %d7%==�� (set d7=��&&goto gamingwhiteqqio2))
if "%choose%"=="d8" (if %d8%==�� (set d8=��&&goto gamingwhiteqqio2))
if "%choose%"=="d9" (if %d9%==�� (set d9=��&&goto gamingwhiteqqio2))

if "%choose%"=="e1" (if %e1%==�� (set e1=��&&goto gamingwhiteqqio2))
if "%choose%"=="e2" (if %e2%==�� (set e2=��&&goto gamingwhiteqqio2))
if "%choose%"=="e3" (if %e3%==�� (set e3=��&&goto gamingwhiteqqio2))
if "%choose%"=="e4" (if %e4%==�� (set e4=��&&goto gamingwhiteqqio2))
if "%choose%"=="e5" (if %e5%==�� (set e5=��&&goto gamingwhiteqqio2))
if "%choose%"=="e6" (if %e6%==�� (set e6=��&&goto gamingwhiteqqio2))
if "%choose%"=="e7" (if %e7%==�� (set e7=��&&goto gamingwhiteqqio2))
if "%choose%"=="e8" (if %e8%==�� (set e8=��&&goto gamingwhiteqqio2))
if "%choose%"=="e9" (if %e9%==�� (set e9=��&&goto gamingwhiteqqio2))

if "%choose%"=="f1" (if %f1%==�� (set f1=��&&goto gamingwhiteqqio2))
if "%choose%"=="f2" (if %f2%==�� (set f2=��&&goto gamingwhiteqqio2))
if "%choose%"=="f3" (if %f3%==�� (set f3=��&&goto gamingwhiteqqio2))
if "%choose%"=="f4" (if %f4%==�� (set f4=��&&goto gamingwhiteqqio2))
if "%choose%"=="f5" (if %f5%==�� (set f5=��&&goto gamingwhiteqqio2))
if "%choose%"=="f6" (if %f6%==�� (set f6=��&&goto gamingwhiteqqio2))
if "%choose%"=="f7" (if %f7%==�� (set f7=��&&goto gamingwhiteqqio2))
if "%choose%"=="f8" (if %f8%==�� (set f8=��&&goto gamingwhiteqqio2))
if "%choose%"=="f9" (if %f9%==�� (set f9=��&&goto gamingwhiteqqio2))

if "%choose%"=="g1" (if %g1%==�� (set g1=��&&goto gamingwhiteqqio2))
if "%choose%"=="g2" (if %g2%==�� (set g2=��&&goto gamingwhiteqqio2))
if "%choose%"=="g3" (if %g3%==�� (set g3=��&&goto gamingwhiteqqio2))
if "%choose%"=="g4" (if %g4%==�� (set g4=��&&goto gamingwhiteqqio2))
if "%choose%"=="g5" (if %g5%==�� (set g5=��&&goto gamingwhiteqqio2))
if "%choose%"=="g6" (if %g6%==�� (set g6=��&&goto gamingwhiteqqio2))
if "%choose%"=="g7" (if %g7%==�� (set g7=��&&goto gamingwhiteqqio2))
if "%choose%"=="g8" (if %g8%==�� (set g8=��&&goto gamingwhiteqqio2))
if "%choose%"=="g9" (if %g9%==�� (set g9=��&&goto gamingwhiteqqio2))

if "%choose%"=="h1" (if %h1%==�� (set g1=��&&goto gamingwhiteqqio2))
if "%choose%"=="h2" (if %h2%==�� (set g2=��&&goto gamingwhiteqqio2))
if "%choose%"=="h3" (if %h3%==�� (set g3=��&&goto gamingwhiteqqio2))
if "%choose%"=="h4" (if %h4%==�� (set g4=��&&goto gamingwhiteqqio2))
if "%choose%"=="h5" (if %h5%==�� (set g5=��&&goto gamingwhiteqqio2))
if "%choose%"=="h6" (if %h6%==�� (set g6=��&&goto gamingwhiteqqio2))
if "%choose%"=="h7" (if %h7%==�� (set g7=��&&goto gamingwhiteqqio2))
if "%choose%"=="h8" (if %h8%==�� (set g8=��&&goto gamingwhiteqqio2))
if "%choose%"=="h9" (if %h9%==�� (set g9=��&&goto gamingwhiteqqio2))

if "%choose%"=="i1" (if %i1%==�� (set i1=��&&goto gamingwhiteqqio2))
if "%choose%"=="i2" (if %i2%==�� (set i2=��&&goto gamingwhiteqqio2))
if "%choose%"=="i3" (if %i3%==�� (set i3=��&&goto gamingwhiteqqio2))
if "%choose%"=="i4" (if %i4%==�� (set i4=��&&goto gamingwhiteqqio2))
if "%choose%"=="i5" (if %i5%==�� (set i5=��&&goto gamingwhiteqqio2))
if "%choose%"=="i6" (if %i6%==�� (set i6=��&&goto gamingwhiteqqio2))
if "%choose%"=="i7" (if %i7%==�� (set i7=��&&goto gamingwhiteqqio2))
if "%choose%"=="i8" (if %i8%==�� (set i8=��&&goto gamingwhiteqqio2))
if "%choose%"=="i9" (if %i9%==�� (set i9=��&&goto gamingwhiteqqio2))
goto gamingwhiteqq
:gamingwhiteqqio2
set /a alltick=%alltick%+1
set /a whitetick=%whitetick%+1
goto gamingblackqq
:gamingblackqq
cls
set now=��
echo ���� "q" ����, "z" ����.
echo �����ֵ�:%now%�� / ��������:%alltick%
echo ���°���:%whitetick% / ���º���:%blacktick%
echo 0 A B C D E F G H I
echo 1 %a1%%b1%%c1%%d1%%e1%%f1%%g1%%h1%%i1%
echo 2 %a2%%b2%%c2%%d2%%e2%%f2%%g2%%h2%%i2%
echo 3 %a3%%b3%%c3%%d3%%e3%%f3%%g3%%h3%%i3%
echo 4 %a4%%b4%%c4%%d4%%e4%%f4%%g4%%h4%%i4%
echo 5 %a5%%b5%%c5%%d5%%e5%%f5%%g5%%h5%%i5%
echo 6 %a6%%b6%%c6%%d6%%e6%%f6%%g6%%h6%%i6%
echo 7 %a7%%b7%%c7%%d7%%e7%%f7%%g7%%h7%%i7%
echo 8 %a8%%b8%%c8%%d8%%e8%%f8%%g8%%h8%%i8%
echo 9 %a9%%b9%%c9%%d9%%e9%%f9%%g9%%h9%%i9%
echo.
goto gamingblackqqio
:gamingblackqqio
set choose=null
set /p choose=^>
if "%choose%"=="null" goto gamingblackqq
if "%choose%"=="q" echo false>data\wuziqi_gaming.txt&&goto started
if "%choose%"=="z" goto gamingblackqq

if "%choose%"=="a1" (if %a1%==�� (set a1=��&&goto gamingblackqqio2))
if "%choose%"=="a2" (if %a2%==�� (set a2=��&&goto gamingblackqqio2))
if "%choose%"=="a3" (if %a3%==�� (set a3=��&&goto gamingblackqqio2))
if "%choose%"=="a4" (if %a4%==�� (set a4=��&&goto gamingblackqqio2))
if "%choose%"=="a5" (if %a5%==�� (set a5=��&&goto gamingblackqqio2))
if "%choose%"=="a6" (if %a6%==�� (set a6=��&&goto gamingblackqqio2))
if "%choose%"=="a7" (if %a7%==�� (set a7=��&&goto gamingblackqqio2))
if "%choose%"=="a8" (if %a8%==�� (set a8=��&&goto gamingblackqqio2))
if "%choose%"=="a9" (if %a9%==�� (set a9=��&&goto gamingblackqqio2))

if "%choose%"=="b1" (if %b1%==�� (set b1=��&&goto gamingblackqqio2))
if "%choose%"=="b2" (if %b2%==�� (set b2=��&&goto gamingblackqqio2))
if "%choose%"=="b3" (if %b3%==�� (set b3=��&&goto gamingblackqqio2))
if "%choose%"=="b4" (if %b4%==�� (set b4=��&&goto gamingblackqqio2))
if "%choose%"=="b5" (if %b5%==�� (set b5=��&&goto gamingblackqqio2))
if "%choose%"=="b6" (if %b6%==�� (set b6=��&&goto gamingblackqqio2))
if "%choose%"=="b7" (if %b7%==�� (set b7=��&&goto gamingblackqqio2))
if "%choose%"=="b8" (if %b8%==�� (set b8=��&&goto gamingblackqqio2))
if "%choose%"=="b9" (if %b9%==�� (set b9=��&&goto gamingblackqqio2))

if "%choose%"=="c1" (if %c1%==�� (set c1=��&&goto gamingblackqqio2))
if "%choose%"=="c2" (if %c2%==�� (set c2=��&&goto gamingblackqqio2))
if "%choose%"=="c3" (if %c3%==�� (set c3=��&&goto gamingblackqqio2))
if "%choose%"=="c4" (if %c4%==�� (set c4=��&&goto gamingblackqqio2))
if "%choose%"=="c5" (if %c5%==�� (set c5=��&&goto gamingblackqqio2))
if "%choose%"=="c6" (if %c6%==�� (set c6=��&&goto gamingblackqqio2))
if "%choose%"=="c7" (if %c7%==�� (set c7=��&&goto gamingblackqqio2))
if "%choose%"=="c8" (if %c8%==�� (set c8=��&&goto gamingblackqqio2))
if "%choose%"=="c9" (if %c9%==�� (set c9=��&&goto gamingblackqqio2))

if "%choose%"=="d1" (if %d1%==�� (set d1=��&&goto gamingblackqqio2))
if "%choose%"=="d2" (if %d2%==�� (set d2=��&&goto gamingblackqqio2))
if "%choose%"=="d3" (if %d3%==�� (set d3=��&&goto gamingblackqqio2))
if "%choose%"=="d4" (if %d4%==�� (set d4=��&&goto gamingblackqqio2))
if "%choose%"=="d5" (if %d5%==�� (set d5=��&&goto gamingblackqqio2))
if "%choose%"=="d6" (if %d6%==�� (set d6=��&&goto gamingblackqqio2))
if "%choose%"=="d7" (if %d7%==�� (set d7=��&&goto gamingblackqqio2))
if "%choose%"=="d8" (if %d8%==�� (set d8=��&&goto gamingblackqqio2))
if "%choose%"=="d9" (if %d9%==�� (set d9=��&&goto gamingblackqqio2))

if "%choose%"=="e1" (if %e1%==�� (set e1=��&&goto gamingblackqqio2))
if "%choose%"=="e2" (if %e2%==�� (set e2=��&&goto gamingblackqqio2))
if "%choose%"=="e3" (if %e3%==�� (set e3=��&&goto gamingblackqqio2))
if "%choose%"=="e4" (if %e4%==�� (set e4=��&&goto gamingblackqqio2))
if "%choose%"=="e5" (if %e5%==�� (set e5=��&&goto gamingblackqqio2))
if "%choose%"=="e6" (if %e6%==�� (set e6=��&&goto gamingblackqqio2))
if "%choose%"=="e7" (if %e7%==�� (set e7=��&&goto gamingblackqqio2))
if "%choose%"=="e8" (if %e8%==�� (set e8=��&&goto gamingblackqqio2))
if "%choose%"=="e9" (if %e9%==�� (set e9=��&&goto gamingblackqqio2))

if "%choose%"=="f1" (if %f1%==�� (set f1=��&&goto gamingblackqqio2))
if "%choose%"=="f2" (if %f2%==�� (set f2=��&&goto gamingblackqqio2))
if "%choose%"=="f3" (if %f3%==�� (set f3=��&&goto gamingblackqqio2))
if "%choose%"=="f4" (if %f4%==�� (set f4=��&&goto gamingblackqqio2))
if "%choose%"=="f5" (if %f5%==�� (set f5=��&&goto gamingblackqqio2))
if "%choose%"=="f6" (if %f6%==�� (set f6=��&&goto gamingblackqqio2))
if "%choose%"=="f7" (if %f7%==�� (set f7=��&&goto gamingblackqqio2))
if "%choose%"=="f8" (if %f8%==�� (set f8=��&&goto gamingblackqqio2))
if "%choose%"=="f9" (if %f9%==�� (set f9=��&&goto gamingblackqqio2))

if "%choose%"=="g1" (if %g1%==�� (set g1=��&&goto gamingblackqqio2))
if "%choose%"=="g2" (if %g2%==�� (set g2=��&&goto gamingblackqqio2))
if "%choose%"=="g3" (if %g3%==�� (set g3=��&&goto gamingblackqqio2))
if "%choose%"=="g4" (if %g4%==�� (set g4=��&&goto gamingblackqqio2))
if "%choose%"=="g5" (if %g5%==�� (set g5=��&&goto gamingblackqqio2))
if "%choose%"=="g6" (if %g6%==�� (set g6=��&&goto gamingblackqqio2))
if "%choose%"=="g7" (if %g7%==�� (set g7=��&&goto gamingblackqqio2))
if "%choose%"=="g8" (if %g8%==�� (set g8=��&&goto gamingblackqqio2))
if "%choose%"=="g9" (if %g9%==�� (set g9=��&&goto gamingblackqqio2))

if "%choose%"=="h1" (if %h1%==�� (set g1=��&&goto gamingblackqqio2))
if "%choose%"=="h2" (if %h2%==�� (set g2=��&&goto gamingblackqqio2))
if "%choose%"=="h3" (if %h3%==�� (set g3=��&&goto gamingblackqqio2))
if "%choose%"=="h4" (if %h4%==�� (set g4=��&&goto gamingblackqqio2))
if "%choose%"=="h5" (if %h5%==�� (set g5=��&&goto gamingblackqqio2))
if "%choose%"=="h6" (if %h6%==�� (set g6=��&&goto gamingblackqqio2))
if "%choose%"=="h7" (if %h7%==�� (set g7=��&&goto gamingblackqqio2))
if "%choose%"=="h8" (if %h8%==�� (set g8=��&&goto gamingblackqqio2))
if "%choose%"=="h9" (if %h9%==�� (set g9=��&&goto gamingblackqqio2))

if "%choose%"=="i1" (if %i1%==�� (set i1=��&&goto gamingblackqqio2))
if "%choose%"=="i2" (if %i2%==�� (set i2=��&&goto gamingblackqqio2))
if "%choose%"=="i3" (if %i3%==�� (set i3=��&&goto gamingblackqqio2))
if "%choose%"=="i4" (if %i4%==�� (set i4=��&&goto gamingblackqqio2))
if "%choose%"=="i5" (if %i5%==�� (set i5=��&&goto gamingblackqqio2))
if "%choose%"=="i6" (if %i6%==�� (set i6=��&&goto gamingblackqqio2))
if "%choose%"=="i7" (if %i7%==�� (set i7=��&&goto gamingblackqqio2))
if "%choose%"=="i8" (if %i8%==�� (set i8=��&&goto gamingblackqqio2))
if "%choose%"=="i9" (if %i9%==�� (set i9=��&&goto gamingblackqqio2))
goto gamingblackqq
:gamingblackqqio2
set /a alltick=%alltick%+1
set /a blacktick=%blacktick%+1
goto gamingwhiteqq