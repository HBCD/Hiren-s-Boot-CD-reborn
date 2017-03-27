@setlocal enableextensions
@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD\ClamWin" -y Files\ClamWin.7z
@copy /y 7z.* "%TEMP%\HBCD\ClamWin">nul
@start "" /B /D"%TEMP%\HBCD\ClamWin" "StartCW.cmd" %~dp0