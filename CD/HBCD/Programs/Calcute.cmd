@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Calcute.7z
@start "" /D"%TEMP%\HBCD" "Calcute.exe"