@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\Tools.7z bst*
@start "" /D"%TEMP%\HBCD" "bst5.exe"