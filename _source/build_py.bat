@echo -^> pyinstaller %1.spec
@pyinstaller %1.spec

@echo -^> copy dist\%1.exe ..\sources\
@copy dist\%1.exe ..\sources\

:: build command:
:: pyinstaller -F xxx.py -n xxx