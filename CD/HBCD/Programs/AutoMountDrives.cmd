@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\AutoMountDrives.7z
@if %showdh%!==! start "" /D"%TEMP%\HBCD" "AutoMountDrives.exe"