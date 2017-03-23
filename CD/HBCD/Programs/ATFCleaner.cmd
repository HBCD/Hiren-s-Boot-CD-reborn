@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\ATFCleaner.7z
@start "" /D"%TEMP%\HBCD" "ATF-Cleaner.exe"