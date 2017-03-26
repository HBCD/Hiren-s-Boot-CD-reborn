@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Piriform.7z r*
@REG ADD HKCU\Software\Piriform\Recuva /v UpdateCheck /t REG_DWORD /d 0 /f
@start "" /D"%TEMP%\HBCD" "recuva.exe"