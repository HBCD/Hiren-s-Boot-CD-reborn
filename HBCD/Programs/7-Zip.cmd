@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\7zFM.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\7Zip.7z&copy /y 7z.* "%TEMP%\HBCD">nul
@start "" /D"%TEMP%\HBCD" "7zFM.exe"