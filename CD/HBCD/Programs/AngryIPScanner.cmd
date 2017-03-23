@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\IPScanner" -y -phbcd Files\AngryIPScanner.7z
@start "" /D"%TEMP%\HBCD\IPScanner" "ipscan.exe"