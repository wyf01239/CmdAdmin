@echo off
set showver=null
:started
cls
echo 菜单:
echo s / 开始
echo l / 加载
echo v / 版本信息
echo e / 退出
if %showver%==true set showver=false&&echo 五子棋 v0.114514 by wyf9. 2022.12.28
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
	set status_gaming=已退出 - 数据存在
	echo 状态: %status_gaming%
	echo 是否尝试恢复? y/n
	echo 提示: 如果数据异常可能导致程序崩溃
	set /p recfromset=^>
	if "%recfromset%"=="y" (
		if "%now%"=="白" (
			goto gamingwhite
		) else if "%now%"=="黑" (
			goto gamingblack
		) else (
		echo 恢复失败 - 未知的状态
		echo 也可能是已经确定胜负. 
		pause>nul
		goto started
		)
	) else (
		goto started
	)
) else if %started_gaming%==true (
	set status_gaming=异常退出 - 数据存在
	echo 状态: %status_gaming%
	echo 是否尝试恢复? y/n
	echo 提示: 如果数据异常可能导致程序崩溃
	set /p recfromset=^>
	if "%recfromset%"=="y" (
		if "%now%"=="白" (
			goto gamingwhite
		) else if "%now%"=="黑" (
			goto gamingblack
		) else (
		echo 恢复失败 - 未知的状态
		echo 也可能是已经确定胜负. 
		pause>nul
		goto started
		)
	) else (
		goto started
	)
) else if %started_gaming%==none (
	set status_gaming=未找到 - 未知
	echo 状态: %status_gaming%
	echo 无法恢复.
	pause>nul
	goto started
) else (
	set status_gaming=无效状态 - 未知
	echo 状态: %status_gaming%
	echo 无法恢复.
	pause>nul
	goto started
)
:startgame
echo 即将开始
echo 棋盘:9x9
echo 第一次下子默认白子
echo 操作方法:如同excel,如要下子在第二行第三列,输入"c2"即可(a/b/c是列 1/2/3是行)
echo "无"表示没有
echo 输入1开始,0返回
echo -1: qq群专版
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
set a1=无
set a2=无
set a3=无
set a4=无
set a5=无
set a6=无
set a7=无
set a8=无
set a9=无
set b1=无
set b2=无
set b3=无
set b4=无
set b5=无
set b6=无
set b7=无
set b8=无
set b9=无
set c1=无
set c2=无
set c3=无
set c4=无
set c5=无
set c6=无
set c7=无
set c8=无
set c9=无
set d1=无
set d2=无
set d3=无
set d4=无
set d5=无
set d6=无
set d7=无
set d8=无
set d9=无
set e1=无
set e2=无
set e3=无
set e4=无
set e5=无
set e6=无
set e7=无
set e8=无
set e9=无
set f1=无
set f2=无
set f3=无
set f4=无
set f5=无
set f6=无
set f7=无
set f8=无
set f9=无
set g1=无
set g2=无
set g3=无
set g4=无
set g5=无
set g6=无
set g7=无
set g8=无
set g9=无
set h1=无
set h2=无
set h3=无
set h4=无
set h5=无
set h6=无
set h7=无
set h8=无
set h9=无
set i1=无
set i2=无
set i3=无
set i4=无
set i5=无
set i6=无
set i7=无
set i8=无
set i9=无
if %wuziqi_qq%==true (
	goto gamingwhiteqq
) else (
	goto gamingwhite
)
:gamingwhite
cls
set now=白
echo 输入 "q" 返回, "z" 弃棋.
echo 现在轮到:%now%子 / 已下棋子:%alltick%
echo 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C   D   E   F   G   H   I
echo  ┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│ %d1%│ %e1%│ %f1%│ %g1%│ %h1%│ %i1%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│ %d2%│ %e2%│ %f2%│ %g2%│ %h2%│ %i2%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│ %d3%│ %e3%│ %f3%│ %g3%│ %h3%│ %i3%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 4│ %a4%│ %b4%│ %c4%│ %d4%│ %e4%│ %f4%│ %g4%│ %h4%│ %i4%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 5│ %a5%│ %b5%│ %c5%│ %d5%│ %e5%│ %f5%│ %g5%│ %h5%│ %i5%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 6│ %a6%│ %b6%│ %c6%│ %d6%│ %e6%│ %f6%│ %g6%│ %h6%│ %i6%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 7│ %a7%│ %b7%│ %c7%│ %d7%│ %e7%│ %f7%│ %g7%│ %h7%│ %i7%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 8│ %a8%│ %b8%│ %c8%│ %d8%│ %e8%│ %f8%│ %g8%│ %h8%│ %i8%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 9│ %a9%│ %b9%│ %c9%│ %d9%│ %e9%│ %f9%│ %g9%│ %h9%│ %i9%│
echo  └───┴───┴───┴───┴───┴───┴───┴───┴───┘
goto gamingwhiteio
:gamingwhiteio
set choose=null
set /p choose=^>
if "%choose%"=="null" goto gamingwhite
if "%choose%"=="q" echo false>data\wuziqi_gaming.txt&&goto started
if "%choose%"=="z" goto gamingblack

if "%choose%"=="a1" (if %a1%==无 (set a1=白&&goto gamingwhiteio2))
if "%choose%"=="a2" (if %a2%==无 (set a2=白&&goto gamingwhiteio2))
if "%choose%"=="a3" (if %a3%==无 (set a3=白&&goto gamingwhiteio2))
if "%choose%"=="a4" (if %a4%==无 (set a4=白&&goto gamingwhiteio2))
if "%choose%"=="a5" (if %a5%==无 (set a5=白&&goto gamingwhiteio2))
if "%choose%"=="a6" (if %a6%==无 (set a6=白&&goto gamingwhiteio2))
if "%choose%"=="a7" (if %a7%==无 (set a7=白&&goto gamingwhiteio2))
if "%choose%"=="a8" (if %a8%==无 (set a8=白&&goto gamingwhiteio2))
if "%choose%"=="a9" (if %a9%==无 (set a9=白&&goto gamingwhiteio2))

if "%choose%"=="b1" (if %b1%==无 (set b1=白&&goto gamingwhiteio2))
if "%choose%"=="b2" (if %b2%==无 (set b2=白&&goto gamingwhiteio2))
if "%choose%"=="b3" (if %b3%==无 (set b3=白&&goto gamingwhiteio2))
if "%choose%"=="b4" (if %b4%==无 (set b4=白&&goto gamingwhiteio2))
if "%choose%"=="b5" (if %b5%==无 (set b5=白&&goto gamingwhiteio2))
if "%choose%"=="b6" (if %b6%==无 (set b6=白&&goto gamingwhiteio2))
if "%choose%"=="b7" (if %b7%==无 (set b7=白&&goto gamingwhiteio2))
if "%choose%"=="b8" (if %b8%==无 (set b8=白&&goto gamingwhiteio2))
if "%choose%"=="b9" (if %b9%==无 (set b9=白&&goto gamingwhiteio2))

if "%choose%"=="c1" (if %c1%==无 (set c1=白&&goto gamingwhiteio2))
if "%choose%"=="c2" (if %c2%==无 (set c2=白&&goto gamingwhiteio2))
if "%choose%"=="c3" (if %c3%==无 (set c3=白&&goto gamingwhiteio2))
if "%choose%"=="c4" (if %c4%==无 (set c4=白&&goto gamingwhiteio2))
if "%choose%"=="c5" (if %c5%==无 (set c5=白&&goto gamingwhiteio2))
if "%choose%"=="c6" (if %c6%==无 (set c6=白&&goto gamingwhiteio2))
if "%choose%"=="c7" (if %c7%==无 (set c7=白&&goto gamingwhiteio2))
if "%choose%"=="c8" (if %c8%==无 (set c8=白&&goto gamingwhiteio2))
if "%choose%"=="c9" (if %c9%==无 (set c9=白&&goto gamingwhiteio2))

if "%choose%"=="d1" (if %d1%==无 (set d1=白&&goto gamingwhiteio2))
if "%choose%"=="d2" (if %d2%==无 (set d2=白&&goto gamingwhiteio2))
if "%choose%"=="d3" (if %d3%==无 (set d3=白&&goto gamingwhiteio2))
if "%choose%"=="d4" (if %d4%==无 (set d4=白&&goto gamingwhiteio2))
if "%choose%"=="d5" (if %d5%==无 (set d5=白&&goto gamingwhiteio2))
if "%choose%"=="d6" (if %d6%==无 (set d6=白&&goto gamingwhiteio2))
if "%choose%"=="d7" (if %d7%==无 (set d7=白&&goto gamingwhiteio2))
if "%choose%"=="d8" (if %d8%==无 (set d8=白&&goto gamingwhiteio2))
if "%choose%"=="d9" (if %d9%==无 (set d9=白&&goto gamingwhiteio2))

if "%choose%"=="e1" (if %e1%==无 (set e1=白&&goto gamingwhiteio2))
if "%choose%"=="e2" (if %e2%==无 (set e2=白&&goto gamingwhiteio2))
if "%choose%"=="e3" (if %e3%==无 (set e3=白&&goto gamingwhiteio2))
if "%choose%"=="e4" (if %e4%==无 (set e4=白&&goto gamingwhiteio2))
if "%choose%"=="e5" (if %e5%==无 (set e5=白&&goto gamingwhiteio2))
if "%choose%"=="e6" (if %e6%==无 (set e6=白&&goto gamingwhiteio2))
if "%choose%"=="e7" (if %e7%==无 (set e7=白&&goto gamingwhiteio2))
if "%choose%"=="e8" (if %e8%==无 (set e8=白&&goto gamingwhiteio2))
if "%choose%"=="e9" (if %e9%==无 (set e9=白&&goto gamingwhiteio2))

if "%choose%"=="f1" (if %f1%==无 (set f1=白&&goto gamingwhiteio2))
if "%choose%"=="f2" (if %f2%==无 (set f2=白&&goto gamingwhiteio2))
if "%choose%"=="f3" (if %f3%==无 (set f3=白&&goto gamingwhiteio2))
if "%choose%"=="f4" (if %f4%==无 (set f4=白&&goto gamingwhiteio2))
if "%choose%"=="f5" (if %f5%==无 (set f5=白&&goto gamingwhiteio2))
if "%choose%"=="f6" (if %f6%==无 (set f6=白&&goto gamingwhiteio2))
if "%choose%"=="f7" (if %f7%==无 (set f7=白&&goto gamingwhiteio2))
if "%choose%"=="f8" (if %f8%==无 (set f8=白&&goto gamingwhiteio2))
if "%choose%"=="f9" (if %f9%==无 (set f9=白&&goto gamingwhiteio2))

if "%choose%"=="g1" (if %g1%==无 (set g1=白&&goto gamingwhiteio2))
if "%choose%"=="g2" (if %g2%==无 (set g2=白&&goto gamingwhiteio2))
if "%choose%"=="g3" (if %g3%==无 (set g3=白&&goto gamingwhiteio2))
if "%choose%"=="g4" (if %g4%==无 (set g4=白&&goto gamingwhiteio2))
if "%choose%"=="g5" (if %g5%==无 (set g5=白&&goto gamingwhiteio2))
if "%choose%"=="g6" (if %g6%==无 (set g6=白&&goto gamingwhiteio2))
if "%choose%"=="g7" (if %g7%==无 (set g7=白&&goto gamingwhiteio2))
if "%choose%"=="g8" (if %g8%==无 (set g8=白&&goto gamingwhiteio2))
if "%choose%"=="g9" (if %g9%==无 (set g9=白&&goto gamingwhiteio2))

if "%choose%"=="h1" (if %h1%==无 (set g1=白&&goto gamingwhiteio2))
if "%choose%"=="h2" (if %h2%==无 (set g2=白&&goto gamingwhiteio2))
if "%choose%"=="h3" (if %h3%==无 (set g3=白&&goto gamingwhiteio2))
if "%choose%"=="h4" (if %h4%==无 (set g4=白&&goto gamingwhiteio2))
if "%choose%"=="h5" (if %h5%==无 (set g5=白&&goto gamingwhiteio2))
if "%choose%"=="h6" (if %h6%==无 (set g6=白&&goto gamingwhiteio2))
if "%choose%"=="h7" (if %h7%==无 (set g7=白&&goto gamingwhiteio2))
if "%choose%"=="h8" (if %h8%==无 (set g8=白&&goto gamingwhiteio2))
if "%choose%"=="h9" (if %h9%==无 (set g9=白&&goto gamingwhiteio2))

if "%choose%"=="i1" (if %i1%==无 (set i1=白&&goto gamingwhiteio2))
if "%choose%"=="i2" (if %i2%==无 (set i2=白&&goto gamingwhiteio2))
if "%choose%"=="i3" (if %i3%==无 (set i3=白&&goto gamingwhiteio2))
if "%choose%"=="i4" (if %i4%==无 (set i4=白&&goto gamingwhiteio2))
if "%choose%"=="i5" (if %i5%==无 (set i5=白&&goto gamingwhiteio2))
if "%choose%"=="i6" (if %i6%==无 (set i6=白&&goto gamingwhiteio2))
if "%choose%"=="i7" (if %i7%==无 (set i7=白&&goto gamingwhiteio2))
if "%choose%"=="i8" (if %i8%==无 (set i8=白&&goto gamingwhiteio2))
if "%choose%"=="i9" (if %i9%==无 (set i9=白&&goto gamingwhiteio2))
goto gamingwhite
:gamingwhiteio2
set /a alltick=%alltick%+1
set /a whitetick=%whitetick%+1
goto gamingblack
:gamingblack
cls
set now=黑
echo 输入 "q" 返回, "z" 弃棋.
echo 现在轮到:%now%子 / 已下棋子:%alltick%
echo 已下白子:%whitetick% / 已下黑子:%blacktick%
echo    A   B   C   D   E   F   G   H   I
echo  ┌───┬───┬───┬───┬───┬───┬───┬───┬───┐
echo 1│ %a1%│ %b1%│ %c1%│ %d1%│ %e1%│ %f1%│ %g1%│ %h1%│ %i1%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 2│ %a2%│ %b2%│ %c2%│ %d2%│ %e2%│ %f2%│ %g2%│ %h2%│ %i2%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 3│ %a3%│ %b3%│ %c3%│ %d3%│ %e3%│ %f3%│ %g3%│ %h3%│ %i3%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 4│ %a4%│ %b4%│ %c4%│ %d4%│ %e4%│ %f4%│ %g4%│ %h4%│ %i4%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 5│ %a5%│ %b5%│ %c5%│ %d5%│ %e5%│ %f5%│ %g5%│ %h5%│ %i5%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 6│ %a6%│ %b6%│ %c6%│ %d6%│ %e6%│ %f6%│ %g6%│ %h6%│ %i6%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 7│ %a7%│ %b7%│ %c7%│ %d7%│ %e7%│ %f7%│ %g7%│ %h7%│ %i7%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 8│ %a8%│ %b8%│ %c8%│ %d8%│ %e8%│ %f8%│ %g8%│ %h8%│ %i8%│
echo  ├───┼───┼───┼───┼───┼───┼───┼───┼───┤
echo 9│ %a9%│ %b9%│ %c9%│ %d9%│ %e9%│ %f9%│ %g9%│ %h9%│ %i9%│
echo  └───┴───┴───┴───┴───┴───┴───┴───┴───┘
goto gamingblackio
:gamingblackio
set choose=null
set /p choose=^>
if "%choose%"=="null" goto gamingblack
if "%choose%"=="q" echo false>data\wuziqi_gaming.txt&&goto started
if "%choose%"=="z" goto gamingblack

if "%choose%"=="a1" (if %a1%==无 (set a1=黑&&goto gamingblackio2))
if "%choose%"=="a2" (if %a2%==无 (set a2=黑&&goto gamingblackio2))
if "%choose%"=="a3" (if %a3%==无 (set a3=黑&&goto gamingblackio2))
if "%choose%"=="a4" (if %a4%==无 (set a4=黑&&goto gamingblackio2))
if "%choose%"=="a5" (if %a5%==无 (set a5=黑&&goto gamingblackio2))
if "%choose%"=="a6" (if %a6%==无 (set a6=黑&&goto gamingblackio2))
if "%choose%"=="a7" (if %a7%==无 (set a7=黑&&goto gamingblackio2))
if "%choose%"=="a8" (if %a8%==无 (set a8=黑&&goto gamingblackio2))
if "%choose%"=="a9" (if %a9%==无 (set a9=黑&&goto gamingblackio2))

if "%choose%"=="b1" (if %b1%==无 (set b1=黑&&goto gamingblackio2))
if "%choose%"=="b2" (if %b2%==无 (set b2=黑&&goto gamingblackio2))
if "%choose%"=="b3" (if %b3%==无 (set b3=黑&&goto gamingblackio2))
if "%choose%"=="b4" (if %b4%==无 (set b4=黑&&goto gamingblackio2))
if "%choose%"=="b5" (if %b5%==无 (set b5=黑&&goto gamingblackio2))
if "%choose%"=="b6" (if %b6%==无 (set b6=黑&&goto gamingblackio2))
if "%choose%"=="b7" (if %b7%==无 (set b7=黑&&goto gamingblackio2))
if "%choose%"=="b8" (if %b8%==无 (set b8=黑&&goto gamingblackio2))
if "%choose%"=="b9" (if %b9%==无 (set b9=黑&&goto gamingblackio2))

if "%choose%"=="c1" (if %c1%==无 (set c1=黑&&goto gamingblackio2))
if "%choose%"=="c2" (if %c2%==无 (set c2=黑&&goto gamingblackio2))
if "%choose%"=="c3" (if %c3%==无 (set c3=黑&&goto gamingblackio2))
if "%choose%"=="c4" (if %c4%==无 (set c4=黑&&goto gamingblackio2))
if "%choose%"=="c5" (if %c5%==无 (set c5=黑&&goto gamingblackio2))
if "%choose%"=="c6" (if %c6%==无 (set c6=黑&&goto gamingblackio2))
if "%choose%"=="c7" (if %c7%==无 (set c7=黑&&goto gamingblackio2))
if "%choose%"=="c8" (if %c8%==无 (set c8=黑&&goto gamingblackio2))
if "%choose%"=="c9" (if %c9%==无 (set c9=黑&&goto gamingblackio2))

if "%choose%"=="d1" (if %d1%==无 (set d1=黑&&goto gamingblackio2))
if "%choose%"=="d2" (if %d2%==无 (set d2=黑&&goto gamingblackio2))
if "%choose%"=="d3" (if %d3%==无 (set d3=黑&&goto gamingblackio2))
if "%choose%"=="d4" (if %d4%==无 (set d4=黑&&goto gamingblackio2))
if "%choose%"=="d5" (if %d5%==无 (set d5=黑&&goto gamingblackio2))
if "%choose%"=="d6" (if %d6%==无 (set d6=黑&&goto gamingblackio2))
if "%choose%"=="d7" (if %d7%==无 (set d7=黑&&goto gamingblackio2))
if "%choose%"=="d8" (if %d8%==无 (set d8=黑&&goto gamingblackio2))
if "%choose%"=="d9" (if %d9%==无 (set d9=黑&&goto gamingblackio2))

if "%choose%"=="e1" (if %e1%==无 (set e1=黑&&goto gamingblackio2))
if "%choose%"=="e2" (if %e2%==无 (set e2=黑&&goto gamingblackio2))
if "%choose%"=="e3" (if %e3%==无 (set e3=黑&&goto gamingblackio2))
if "%choose%"=="e4" (if %e4%==无 (set e4=黑&&goto gamingblackio2))
if "%choose%"=="e5" (if %e5%==无 (set e5=黑&&goto gamingblackio2))
if "%choose%"=="e6" (if %e6%==无 (set e6=黑&&goto gamingblackio2))
if "%choose%"=="e7" (if %e7%==无 (set e7=黑&&goto gamingblackio2))
if "%choose%"=="e8" (if %e8%==无 (set e8=黑&&goto gamingblackio2))
if "%choose%"=="e9" (if %e9%==无 (set e9=黑&&goto gamingblackio2))

if "%choose%"=="f1" (if %f1%==无 (set f1=黑&&goto gamingblackio2))
if "%choose%"=="f2" (if %f2%==无 (set f2=黑&&goto gamingblackio2))
if "%choose%"=="f3" (if %f3%==无 (set f3=黑&&goto gamingblackio2))
if "%choose%"=="f4" (if %f4%==无 (set f4=黑&&goto gamingblackio2))
if "%choose%"=="f5" (if %f5%==无 (set f5=黑&&goto gamingblackio2))
if "%choose%"=="f6" (if %f6%==无 (set f6=黑&&goto gamingblackio2))
if "%choose%"=="f7" (if %f7%==无 (set f7=黑&&goto gamingblackio2))
if "%choose%"=="f8" (if %f8%==无 (set f8=黑&&goto gamingblackio2))
if "%choose%"=="f9" (if %f9%==无 (set f9=黑&&goto gamingblackio2))

if "%choose%"=="g1" (if %g1%==无 (set g1=黑&&goto gamingblackio2))
if "%choose%"=="g2" (if %g2%==无 (set g2=黑&&goto gamingblackio2))
if "%choose%"=="g3" (if %g3%==无 (set g3=黑&&goto gamingblackio2))
if "%choose%"=="g4" (if %g4%==无 (set g4=黑&&goto gamingblackio2))
if "%choose%"=="g5" (if %g5%==无 (set g5=黑&&goto gamingblackio2))
if "%choose%"=="g6" (if %g6%==无 (set g6=黑&&goto gamingblackio2))
if "%choose%"=="g7" (if %g7%==无 (set g7=黑&&goto gamingblackio2))
if "%choose%"=="g8" (if %g8%==无 (set g8=黑&&goto gamingblackio2))
if "%choose%"=="g9" (if %g9%==无 (set g9=黑&&goto gamingblackio2))

if "%choose%"=="h1" (if %h1%==无 (set g1=黑&&goto gamingblackio2))
if "%choose%"=="h2" (if %h2%==无 (set g2=黑&&goto gamingblackio2))
if "%choose%"=="h3" (if %h3%==无 (set g3=黑&&goto gamingblackio2))
if "%choose%"=="h4" (if %h4%==无 (set g4=黑&&goto gamingblackio2))
if "%choose%"=="h5" (if %h5%==无 (set g5=黑&&goto gamingblackio2))
if "%choose%"=="h6" (if %h6%==无 (set g6=黑&&goto gamingblackio2))
if "%choose%"=="h7" (if %h7%==无 (set g7=黑&&goto gamingblackio2))
if "%choose%"=="h8" (if %h8%==无 (set g8=黑&&goto gamingblackio2))
if "%choose%"=="h9" (if %h9%==无 (set g9=黑&&goto gamingblackio2))

if "%choose%"=="i1" (if %i1%==无 (set i1=黑&&goto gamingblackio2))
if "%choose%"=="i2" (if %i2%==无 (set i2=黑&&goto gamingblackio2))
if "%choose%"=="i3" (if %i3%==无 (set i3=黑&&goto gamingblackio2))
if "%choose%"=="i4" (if %i4%==无 (set i4=黑&&goto gamingblackio2))
if "%choose%"=="i5" (if %i5%==无 (set i5=黑&&goto gamingblackio2))
if "%choose%"=="i6" (if %i6%==无 (set i6=黑&&goto gamingblackio2))
if "%choose%"=="i7" (if %i7%==无 (set i7=黑&&goto gamingblackio2))
if "%choose%"=="i8" (if %i8%==无 (set i8=黑&&goto gamingblackio2))
if "%choose%"=="i9" (if %i9%==无 (set i9=黑&&goto gamingblackio2))
goto gamingblack
:gamingblackio2
set /a alltick=%alltick%+1
set /a blacktick=%blacktick%+1
goto gamingwhite

:gamingwhiteqq
cls
set now=白
echo 输入 "q" 返回, "z" 弃棋.
echo 现在轮到:%now%子 / 已下棋子:%alltick%
echo 已下白子:%whitetick% / 已下黑子:%blacktick%
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

if "%choose%"=="a1" (if %a1%==无 (set a1=白&&goto gamingwhiteqqio2))
if "%choose%"=="a2" (if %a2%==无 (set a2=白&&goto gamingwhiteqqio2))
if "%choose%"=="a3" (if %a3%==无 (set a3=白&&goto gamingwhiteqqio2))
if "%choose%"=="a4" (if %a4%==无 (set a4=白&&goto gamingwhiteqqio2))
if "%choose%"=="a5" (if %a5%==无 (set a5=白&&goto gamingwhiteqqio2))
if "%choose%"=="a6" (if %a6%==无 (set a6=白&&goto gamingwhiteqqio2))
if "%choose%"=="a7" (if %a7%==无 (set a7=白&&goto gamingwhiteqqio2))
if "%choose%"=="a8" (if %a8%==无 (set a8=白&&goto gamingwhiteqqio2))
if "%choose%"=="a9" (if %a9%==无 (set a9=白&&goto gamingwhiteqqio2))

if "%choose%"=="b1" (if %b1%==无 (set b1=白&&goto gamingwhiteqqio2))
if "%choose%"=="b2" (if %b2%==无 (set b2=白&&goto gamingwhiteqqio2))
if "%choose%"=="b3" (if %b3%==无 (set b3=白&&goto gamingwhiteqqio2))
if "%choose%"=="b4" (if %b4%==无 (set b4=白&&goto gamingwhiteqqio2))
if "%choose%"=="b5" (if %b5%==无 (set b5=白&&goto gamingwhiteqqio2))
if "%choose%"=="b6" (if %b6%==无 (set b6=白&&goto gamingwhiteqqio2))
if "%choose%"=="b7" (if %b7%==无 (set b7=白&&goto gamingwhiteqqio2))
if "%choose%"=="b8" (if %b8%==无 (set b8=白&&goto gamingwhiteqqio2))
if "%choose%"=="b9" (if %b9%==无 (set b9=白&&goto gamingwhiteqqio2))

if "%choose%"=="c1" (if %c1%==无 (set c1=白&&goto gamingwhiteqqio2))
if "%choose%"=="c2" (if %c2%==无 (set c2=白&&goto gamingwhiteqqio2))
if "%choose%"=="c3" (if %c3%==无 (set c3=白&&goto gamingwhiteqqio2))
if "%choose%"=="c4" (if %c4%==无 (set c4=白&&goto gamingwhiteqqio2))
if "%choose%"=="c5" (if %c5%==无 (set c5=白&&goto gamingwhiteqqio2))
if "%choose%"=="c6" (if %c6%==无 (set c6=白&&goto gamingwhiteqqio2))
if "%choose%"=="c7" (if %c7%==无 (set c7=白&&goto gamingwhiteqqio2))
if "%choose%"=="c8" (if %c8%==无 (set c8=白&&goto gamingwhiteqqio2))
if "%choose%"=="c9" (if %c9%==无 (set c9=白&&goto gamingwhiteqqio2))

if "%choose%"=="d1" (if %d1%==无 (set d1=白&&goto gamingwhiteqqio2))
if "%choose%"=="d2" (if %d2%==无 (set d2=白&&goto gamingwhiteqqio2))
if "%choose%"=="d3" (if %d3%==无 (set d3=白&&goto gamingwhiteqqio2))
if "%choose%"=="d4" (if %d4%==无 (set d4=白&&goto gamingwhiteqqio2))
if "%choose%"=="d5" (if %d5%==无 (set d5=白&&goto gamingwhiteqqio2))
if "%choose%"=="d6" (if %d6%==无 (set d6=白&&goto gamingwhiteqqio2))
if "%choose%"=="d7" (if %d7%==无 (set d7=白&&goto gamingwhiteqqio2))
if "%choose%"=="d8" (if %d8%==无 (set d8=白&&goto gamingwhiteqqio2))
if "%choose%"=="d9" (if %d9%==无 (set d9=白&&goto gamingwhiteqqio2))

if "%choose%"=="e1" (if %e1%==无 (set e1=白&&goto gamingwhiteqqio2))
if "%choose%"=="e2" (if %e2%==无 (set e2=白&&goto gamingwhiteqqio2))
if "%choose%"=="e3" (if %e3%==无 (set e3=白&&goto gamingwhiteqqio2))
if "%choose%"=="e4" (if %e4%==无 (set e4=白&&goto gamingwhiteqqio2))
if "%choose%"=="e5" (if %e5%==无 (set e5=白&&goto gamingwhiteqqio2))
if "%choose%"=="e6" (if %e6%==无 (set e6=白&&goto gamingwhiteqqio2))
if "%choose%"=="e7" (if %e7%==无 (set e7=白&&goto gamingwhiteqqio2))
if "%choose%"=="e8" (if %e8%==无 (set e8=白&&goto gamingwhiteqqio2))
if "%choose%"=="e9" (if %e9%==无 (set e9=白&&goto gamingwhiteqqio2))

if "%choose%"=="f1" (if %f1%==无 (set f1=白&&goto gamingwhiteqqio2))
if "%choose%"=="f2" (if %f2%==无 (set f2=白&&goto gamingwhiteqqio2))
if "%choose%"=="f3" (if %f3%==无 (set f3=白&&goto gamingwhiteqqio2))
if "%choose%"=="f4" (if %f4%==无 (set f4=白&&goto gamingwhiteqqio2))
if "%choose%"=="f5" (if %f5%==无 (set f5=白&&goto gamingwhiteqqio2))
if "%choose%"=="f6" (if %f6%==无 (set f6=白&&goto gamingwhiteqqio2))
if "%choose%"=="f7" (if %f7%==无 (set f7=白&&goto gamingwhiteqqio2))
if "%choose%"=="f8" (if %f8%==无 (set f8=白&&goto gamingwhiteqqio2))
if "%choose%"=="f9" (if %f9%==无 (set f9=白&&goto gamingwhiteqqio2))

if "%choose%"=="g1" (if %g1%==无 (set g1=白&&goto gamingwhiteqqio2))
if "%choose%"=="g2" (if %g2%==无 (set g2=白&&goto gamingwhiteqqio2))
if "%choose%"=="g3" (if %g3%==无 (set g3=白&&goto gamingwhiteqqio2))
if "%choose%"=="g4" (if %g4%==无 (set g4=白&&goto gamingwhiteqqio2))
if "%choose%"=="g5" (if %g5%==无 (set g5=白&&goto gamingwhiteqqio2))
if "%choose%"=="g6" (if %g6%==无 (set g6=白&&goto gamingwhiteqqio2))
if "%choose%"=="g7" (if %g7%==无 (set g7=白&&goto gamingwhiteqqio2))
if "%choose%"=="g8" (if %g8%==无 (set g8=白&&goto gamingwhiteqqio2))
if "%choose%"=="g9" (if %g9%==无 (set g9=白&&goto gamingwhiteqqio2))

if "%choose%"=="h1" (if %h1%==无 (set g1=白&&goto gamingwhiteqqio2))
if "%choose%"=="h2" (if %h2%==无 (set g2=白&&goto gamingwhiteqqio2))
if "%choose%"=="h3" (if %h3%==无 (set g3=白&&goto gamingwhiteqqio2))
if "%choose%"=="h4" (if %h4%==无 (set g4=白&&goto gamingwhiteqqio2))
if "%choose%"=="h5" (if %h5%==无 (set g5=白&&goto gamingwhiteqqio2))
if "%choose%"=="h6" (if %h6%==无 (set g6=白&&goto gamingwhiteqqio2))
if "%choose%"=="h7" (if %h7%==无 (set g7=白&&goto gamingwhiteqqio2))
if "%choose%"=="h8" (if %h8%==无 (set g8=白&&goto gamingwhiteqqio2))
if "%choose%"=="h9" (if %h9%==无 (set g9=白&&goto gamingwhiteqqio2))

if "%choose%"=="i1" (if %i1%==无 (set i1=白&&goto gamingwhiteqqio2))
if "%choose%"=="i2" (if %i2%==无 (set i2=白&&goto gamingwhiteqqio2))
if "%choose%"=="i3" (if %i3%==无 (set i3=白&&goto gamingwhiteqqio2))
if "%choose%"=="i4" (if %i4%==无 (set i4=白&&goto gamingwhiteqqio2))
if "%choose%"=="i5" (if %i5%==无 (set i5=白&&goto gamingwhiteqqio2))
if "%choose%"=="i6" (if %i6%==无 (set i6=白&&goto gamingwhiteqqio2))
if "%choose%"=="i7" (if %i7%==无 (set i7=白&&goto gamingwhiteqqio2))
if "%choose%"=="i8" (if %i8%==无 (set i8=白&&goto gamingwhiteqqio2))
if "%choose%"=="i9" (if %i9%==无 (set i9=白&&goto gamingwhiteqqio2))
goto gamingwhiteqq
:gamingwhiteqqio2
set /a alltick=%alltick%+1
set /a whitetick=%whitetick%+1
goto gamingblackqq
:gamingblackqq
cls
set now=黑
echo 输入 "q" 返回, "z" 弃棋.
echo 现在轮到:%now%子 / 已下棋子:%alltick%
echo 已下白子:%whitetick% / 已下黑子:%blacktick%
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

if "%choose%"=="a1" (if %a1%==无 (set a1=黑&&goto gamingblackqqio2))
if "%choose%"=="a2" (if %a2%==无 (set a2=黑&&goto gamingblackqqio2))
if "%choose%"=="a3" (if %a3%==无 (set a3=黑&&goto gamingblackqqio2))
if "%choose%"=="a4" (if %a4%==无 (set a4=黑&&goto gamingblackqqio2))
if "%choose%"=="a5" (if %a5%==无 (set a5=黑&&goto gamingblackqqio2))
if "%choose%"=="a6" (if %a6%==无 (set a6=黑&&goto gamingblackqqio2))
if "%choose%"=="a7" (if %a7%==无 (set a7=黑&&goto gamingblackqqio2))
if "%choose%"=="a8" (if %a8%==无 (set a8=黑&&goto gamingblackqqio2))
if "%choose%"=="a9" (if %a9%==无 (set a9=黑&&goto gamingblackqqio2))

if "%choose%"=="b1" (if %b1%==无 (set b1=黑&&goto gamingblackqqio2))
if "%choose%"=="b2" (if %b2%==无 (set b2=黑&&goto gamingblackqqio2))
if "%choose%"=="b3" (if %b3%==无 (set b3=黑&&goto gamingblackqqio2))
if "%choose%"=="b4" (if %b4%==无 (set b4=黑&&goto gamingblackqqio2))
if "%choose%"=="b5" (if %b5%==无 (set b5=黑&&goto gamingblackqqio2))
if "%choose%"=="b6" (if %b6%==无 (set b6=黑&&goto gamingblackqqio2))
if "%choose%"=="b7" (if %b7%==无 (set b7=黑&&goto gamingblackqqio2))
if "%choose%"=="b8" (if %b8%==无 (set b8=黑&&goto gamingblackqqio2))
if "%choose%"=="b9" (if %b9%==无 (set b9=黑&&goto gamingblackqqio2))

if "%choose%"=="c1" (if %c1%==无 (set c1=黑&&goto gamingblackqqio2))
if "%choose%"=="c2" (if %c2%==无 (set c2=黑&&goto gamingblackqqio2))
if "%choose%"=="c3" (if %c3%==无 (set c3=黑&&goto gamingblackqqio2))
if "%choose%"=="c4" (if %c4%==无 (set c4=黑&&goto gamingblackqqio2))
if "%choose%"=="c5" (if %c5%==无 (set c5=黑&&goto gamingblackqqio2))
if "%choose%"=="c6" (if %c6%==无 (set c6=黑&&goto gamingblackqqio2))
if "%choose%"=="c7" (if %c7%==无 (set c7=黑&&goto gamingblackqqio2))
if "%choose%"=="c8" (if %c8%==无 (set c8=黑&&goto gamingblackqqio2))
if "%choose%"=="c9" (if %c9%==无 (set c9=黑&&goto gamingblackqqio2))

if "%choose%"=="d1" (if %d1%==无 (set d1=黑&&goto gamingblackqqio2))
if "%choose%"=="d2" (if %d2%==无 (set d2=黑&&goto gamingblackqqio2))
if "%choose%"=="d3" (if %d3%==无 (set d3=黑&&goto gamingblackqqio2))
if "%choose%"=="d4" (if %d4%==无 (set d4=黑&&goto gamingblackqqio2))
if "%choose%"=="d5" (if %d5%==无 (set d5=黑&&goto gamingblackqqio2))
if "%choose%"=="d6" (if %d6%==无 (set d6=黑&&goto gamingblackqqio2))
if "%choose%"=="d7" (if %d7%==无 (set d7=黑&&goto gamingblackqqio2))
if "%choose%"=="d8" (if %d8%==无 (set d8=黑&&goto gamingblackqqio2))
if "%choose%"=="d9" (if %d9%==无 (set d9=黑&&goto gamingblackqqio2))

if "%choose%"=="e1" (if %e1%==无 (set e1=黑&&goto gamingblackqqio2))
if "%choose%"=="e2" (if %e2%==无 (set e2=黑&&goto gamingblackqqio2))
if "%choose%"=="e3" (if %e3%==无 (set e3=黑&&goto gamingblackqqio2))
if "%choose%"=="e4" (if %e4%==无 (set e4=黑&&goto gamingblackqqio2))
if "%choose%"=="e5" (if %e5%==无 (set e5=黑&&goto gamingblackqqio2))
if "%choose%"=="e6" (if %e6%==无 (set e6=黑&&goto gamingblackqqio2))
if "%choose%"=="e7" (if %e7%==无 (set e7=黑&&goto gamingblackqqio2))
if "%choose%"=="e8" (if %e8%==无 (set e8=黑&&goto gamingblackqqio2))
if "%choose%"=="e9" (if %e9%==无 (set e9=黑&&goto gamingblackqqio2))

if "%choose%"=="f1" (if %f1%==无 (set f1=黑&&goto gamingblackqqio2))
if "%choose%"=="f2" (if %f2%==无 (set f2=黑&&goto gamingblackqqio2))
if "%choose%"=="f3" (if %f3%==无 (set f3=黑&&goto gamingblackqqio2))
if "%choose%"=="f4" (if %f4%==无 (set f4=黑&&goto gamingblackqqio2))
if "%choose%"=="f5" (if %f5%==无 (set f5=黑&&goto gamingblackqqio2))
if "%choose%"=="f6" (if %f6%==无 (set f6=黑&&goto gamingblackqqio2))
if "%choose%"=="f7" (if %f7%==无 (set f7=黑&&goto gamingblackqqio2))
if "%choose%"=="f8" (if %f8%==无 (set f8=黑&&goto gamingblackqqio2))
if "%choose%"=="f9" (if %f9%==无 (set f9=黑&&goto gamingblackqqio2))

if "%choose%"=="g1" (if %g1%==无 (set g1=黑&&goto gamingblackqqio2))
if "%choose%"=="g2" (if %g2%==无 (set g2=黑&&goto gamingblackqqio2))
if "%choose%"=="g3" (if %g3%==无 (set g3=黑&&goto gamingblackqqio2))
if "%choose%"=="g4" (if %g4%==无 (set g4=黑&&goto gamingblackqqio2))
if "%choose%"=="g5" (if %g5%==无 (set g5=黑&&goto gamingblackqqio2))
if "%choose%"=="g6" (if %g6%==无 (set g6=黑&&goto gamingblackqqio2))
if "%choose%"=="g7" (if %g7%==无 (set g7=黑&&goto gamingblackqqio2))
if "%choose%"=="g8" (if %g8%==无 (set g8=黑&&goto gamingblackqqio2))
if "%choose%"=="g9" (if %g9%==无 (set g9=黑&&goto gamingblackqqio2))

if "%choose%"=="h1" (if %h1%==无 (set g1=黑&&goto gamingblackqqio2))
if "%choose%"=="h2" (if %h2%==无 (set g2=黑&&goto gamingblackqqio2))
if "%choose%"=="h3" (if %h3%==无 (set g3=黑&&goto gamingblackqqio2))
if "%choose%"=="h4" (if %h4%==无 (set g4=黑&&goto gamingblackqqio2))
if "%choose%"=="h5" (if %h5%==无 (set g5=黑&&goto gamingblackqqio2))
if "%choose%"=="h6" (if %h6%==无 (set g6=黑&&goto gamingblackqqio2))
if "%choose%"=="h7" (if %h7%==无 (set g7=黑&&goto gamingblackqqio2))
if "%choose%"=="h8" (if %h8%==无 (set g8=黑&&goto gamingblackqqio2))
if "%choose%"=="h9" (if %h9%==无 (set g9=黑&&goto gamingblackqqio2))

if "%choose%"=="i1" (if %i1%==无 (set i1=黑&&goto gamingblackqqio2))
if "%choose%"=="i2" (if %i2%==无 (set i2=黑&&goto gamingblackqqio2))
if "%choose%"=="i3" (if %i3%==无 (set i3=黑&&goto gamingblackqqio2))
if "%choose%"=="i4" (if %i4%==无 (set i4=黑&&goto gamingblackqqio2))
if "%choose%"=="i5" (if %i5%==无 (set i5=黑&&goto gamingblackqqio2))
if "%choose%"=="i6" (if %i6%==无 (set i6=黑&&goto gamingblackqqio2))
if "%choose%"=="i7" (if %i7%==无 (set i7=黑&&goto gamingblackqqio2))
if "%choose%"=="i8" (if %i8%==无 (set i8=黑&&goto gamingblackqqio2))
if "%choose%"=="i9" (if %i9%==无 (set i9=黑&&goto gamingblackqqio2))
goto gamingblackqq
:gamingblackqqio2
set /a alltick=%alltick%+1
set /a blacktick=%blacktick%+1
goto gamingwhiteqq