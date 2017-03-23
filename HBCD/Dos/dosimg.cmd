@echo off
title Create dos image
if exist "%SYSTEMROOT%\System32\imdisk.exe" goto a
echo First You need to install ImDisk from HBCDMenu - FileSystem - ImDisk Virtual Disk
goto b
:a
if "%COMPUTERNAME:~0,6%"=="MiniXP" goto s
reg query "HKEY_USERS\S-1-5-19\Environment" /v TEMP 2>&1 | findstr /I /C:"REG_EXPAND_SZ" 2>&1 >nul
If %ERRORLEVEL%==0 goto s
echo Right click and Run as Administrator
goto b
:s
pushd "%~dp0"
cls
echo This will create a new HBCD\Boot\dos.img that will have Dos and all the 7z filesfrom HBCD\Dos folder
echo Press ENTER to continue
pause>nul
if not exist dosimg.7z echo HBCD\Dos\dosimg.7z missing&goto b
if not exist ..\Programs\7z.exe echo HBCD\Programs\7z.exe missing&goto b
setlocal enabledelayedexpansion
set img=20
set dir="%cd%"
set size=0
for /R %dir% %%X in (*.7z) do ( set /a size=!size!+%%~zX )
if %size% GEQ 19399472 set img=44
if %size% GEQ 44515424 set img=64
if %size% GEQ 65484800 echo this will not fit on a 64Mb image&goto b
if exist "%TEMP%\HBCD\dos.img" del "%TEMP%\HBCD\dos.img"
..\Programs\7z.exe x -o"%TEMP%\HBCD" -y dosimg.7z %img%*
ren "%TEMP%\HBCD\%img%.img" dos.img
endlocal
set mountp=#
set oldd=%cd%
for %%x in (F G H I J K L M N O P Q R S T U V W X Y Z) do cd %%x: 1>> nul 2>&1 & if errorlevel 1 set mountp=%%x
if %mountp%==# echo drive letter error&goto b
cd /d "%oldd%"
set runsix=cmd.exe /C
if exist %SYSTEMROOT%\sysnative\cmd.exe set runsix="%SYSTEMROOT%\sysnative\cmd.exe" /C
start "" /WAIT %runsix% imdisk -a -m %mountp%: -f "%TEMP%\HBCD\dos.img"
echo.
echo Image Mounted, Now we will copy dos files to %mountp%:
echo.
echo Press ENTER to continue
pause>nul
..\Programs\7z.exe x -o"%TEMP%\HBCD\dosf" -y dos.gz
..\Programs\7z.exe x -o"%mountp%:\" -y "%TEMP%\HBCD\dosf\dos.img"
copy /y *.7z %mountp%:\
echo.
echo Image Created, please close any explorer windows to unmount the image safely.
echo You can also add any custom files in %mountp%:\
echo.
echo Press ENTER to continue
pause>nul
start "" /WAIT %runsix% imdisk -D -m %mountp%:
echo.>..\Boot\tmp.wri
if not exist ..\Boot\tmp.wri echo Please copy "%TEMP%\HBCD\dos.img" to HBCD\Boot folder&start explorer /select,"%TEMP%\HBCD\dos.img"&goto b
del ..\Boot\tmp.wri
echo.
echo Now we will copy "%TEMP%\HBCD\dos.img" to HBCD\Boot folder
echo Press ENTER to continue
pause>nul
echo Copying...
copy /y "%TEMP%\HBCD\dos.img" ..\Boot
echo All Done.
if exist ..\Boot\dos.img echo Now you can delete HBCD\Dos folder.
:b
pause>nul
