@pushd "%~dp0"
@if not exist "%TEMP%\HBCD\BrowsingHistoryView.exe" 7z.exe x -o"%TEMP%\HBCD" -y Files\NirSoft.7z -phbcd BrowsingHistoryView.*
@start "" /D"%TEMP%\HBCD" "BrowsingHistoryView.exe"