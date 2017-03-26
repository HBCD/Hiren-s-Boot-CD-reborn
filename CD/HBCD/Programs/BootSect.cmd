@pushd "%~dp0"
@7z.exe e -o"%TEMP%\HBCD" -y Files\WinNTSetup.7z BootSect.exe
@cd /d "%TEMP%\HBCD"
@BootSect.exe /help>BootSect.txt
@start "" "%TEMP%\HBCD\BootSect.txt"
@cmd /k "%TEMP%\HBCD\BootSect.exe"