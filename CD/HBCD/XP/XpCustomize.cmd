REM You can edit this file to customize Mini Xp. Remove REM from the line to make it functional.

@echo off&IF %1i==i start notepad.exe XpCustomize.cmd&exit

REM CHANGE KEYBOARD LAYOUT
REM You can edit HBCD\Boot\Keyboard.bat file to make changes

REM RAM DISK SIZE
REM imdisk.exe -D -m B:&imdisk -a -t vm -m B: -s 200M -p "/fs:NTFS /q /y /v:RamDrive /c"&md %temp%

REM DISPLAY RESOLUTION
REM nircmd setdisplay 1024 768 32

REM SHORTCUT
REM nircmd shortcut "%HBCD%\HBCD\HBCDMenu.exe" "~$folder.desktop$" "HBCD Menu"

REM WALLPAPER
REM copy your file as HBCD\XP\Wallpaper.bmp

REM DRIVERS (Ethernet/Wireless only)
REM Create a new folder HBCD\XP\Drivers and place your your driver files in that folder. It will search "Drivers" (including subfolders) and added automatically.

REM NETWORK SUPPORT
REM start /min /wait cmd /c Wireless
REM start PENetwork

REM AUTO LAUNCH
CD ..\Programs
CALL AutoMountDrives.cmd
REM CALL DriveImageXML.cmd
