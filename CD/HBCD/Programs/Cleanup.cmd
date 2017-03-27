@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Cleanup.7z
@start "" /D"%TEMP%\HBCD" "Cleanup.exe"