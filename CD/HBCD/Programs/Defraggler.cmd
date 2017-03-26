@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Piriform.7z d*
@REG ADD HKCU\Software\Piriform\Defraggler /v UpdateCheck /t REG_DWORD /d 0 /f
@start "" /D"%TEMP%\HBCD" "Defraggler.exe"