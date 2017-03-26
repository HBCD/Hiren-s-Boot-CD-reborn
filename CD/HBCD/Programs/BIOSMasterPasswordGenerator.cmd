@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\BIOSMasterPasswordGenerator.7z
@start "" /D"%TEMP%\HBCD" "hero.html"
@start "" /D"%TEMP%\HBCD" "biosmasterpw.cmd"