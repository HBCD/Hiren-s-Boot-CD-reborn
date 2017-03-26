@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Piriform.7z c* w*
@start "" /D"%TEMP%\HBCD" "CCleaner.exe"