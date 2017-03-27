@echo off
echo list vol|diskpart|find /i /v "diskpart"|find /v "Corporation"|find /v "On computer"
echo.
:a
For %%I IN (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) DO for /f "tokens=4,6*" %%k in ('vol %%I: 2^>nul^|find "drive"') do echo   %%k - %%l %%m
set drv=C
set /p drv=Enter a Drive Letter Only ( Example. C ): 
chkdsk.exe %drv%: /f /x
goto a
