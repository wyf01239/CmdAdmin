@echo off
set cd=
set now_cd=%cd%
cd /d %~dp0
set RetCode=0

if "%1" == "set" (
    goto wset
) else if "%1" == "unset" (
    goto wunset
) else if "%1" == "help" (
    goto whelp
)
goto werr

:wset
    if "%2" == "" (goto werr)
    if "%3" == "" (goto werr)
    echo %3>data\config\%2.wcfg
    echo [CA/Setting] Set %2.wcfg to "%3" Successfully.
    goto :END

:wunset
    if exist data\config\%2.wcfg (
        del data\config\%2.wcfg
        echo [CA/Setting] Deleted %2.wcfg.
    )
    goto :END

:werr
echo [CA/Setting] Error: Invaild Argument!
set RetCode=1
goto :whelp

:whelp
    echo [CA/Setting] Arguments:
    echo CASetting -^>
    echo    - set ^<id^> ^<content^>
    echo    - unset ^<id^>
    echo    - help
    goto :END

:END
    cd /d %now_cd%
    exit /b %RetCode%