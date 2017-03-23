@echo off
pushd "%~dp0"
if exist "%TEMP%\HBCD\DiskDirector.exe" goto c
if exist ..\Dos\ADDS.7z goto a
if exist ..\Boot\dos.img 7z.exe x -o"%TEMP%\HBCD" -y ..\Boot\dos.img ADDS.7z
if exist "%TEMP%\HBCD\ADDS.7z" 7z.exe x -o"%TEMP%\HBCD" -y "%TEMP%\HBCD\ADDS.7z"&goto d
title Acronis DiskDirector
echo This commercial application is not included in the package
echo Use HBCDCustomizer.exe and add HBCD\Dos\ADDS.7z
pause>nul
exit
:a
7z.exe x -o"%TEMP%\HBCD" -y ..\Dos\ADDS.7z
:d
if not exist "%TEMP%\HBCD\snapapi.dll" 7z.exe e -o"%TEMP%\HBCD" -y Files\SeagateDiscWizard.7z snapapi.dll
if "%COMPUTERNAME:~0,6%"=="MiniXP" goto z
echo Sorry but this only works from Mini Windows Xp
pause>nul
exit
:b
echo ADDS.7z does not contain DiskDirector.exe, Register.reg
pause>nul
exit
:z
rem 7zip xp.wim\i386\system32\drivers\snapman.sys 
rem sc create snapman type= kernel start= boot binpath= "system32\drivers\snapman.sys"
rem sc start snapman
if not exist "%TEMP%\HBCD\diskdirector.exe" goto b
if not exist "%TEMP%\HBCD\parter.exe" ren "%TEMP%\HBCD\adds.exe" parter.exe
REG IMPORT "%TEMP%\HBCD\Register.reg"
:c
start "" /D"%TEMP%\HBCD" "DiskDirector.exe"