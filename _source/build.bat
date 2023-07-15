@if "%1" == "" (
    set spec=caAPI
) else (
    set spec=%1
)

@echo -^> pyinstaller %spec%.spec
@pyinstaller %spec%.spec

@echo -^> copy dist\%spec%.exe ..\sources\
@copy dist\%spec%.exe ..\sources\

:: build command:
:: pyinstaller -F xxx.py -n xxx