@pushd "%~dp0"
@7z.exe x -o"%TEMP%\HBCD" -y Files\BellaVista.7z
@start "" /D"%TEMP%\HBCD" "BellaVista.exe"