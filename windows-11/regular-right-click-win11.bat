:: Fuck Microsoft
@echo off

:: Add 2 new reg keys
REG ADD HKEY_CURRENT_USER\SOFTWARE\CLASSES\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32

:: Restart explorer.exe
taskkill /im explorer.exe /f
start explorer.exe
exit
