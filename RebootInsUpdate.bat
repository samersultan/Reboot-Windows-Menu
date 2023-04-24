@echo off
title Reboot and Install Updates
color 0A

echo Welcome to the Reboot and Install Updates script!
echo -------------------------------------------------
echo.

:menu
echo Choose an option:
echo 1. Check for updates
echo 2. Reboot and install updates
echo 3. Exit
echo.

set /p choice="Enter the option number: "

if %choice%==1 goto check_updates
if %choice%==2 goto reboot_install
if %choice%==3 goto exit
goto menu

:check_updates
echo.
echo Checking for updates...
wuauclt.exe /detectnow /updatenow
echo Updates checked.
echo.
pause
goto menu

:reboot_install
echo.
echo Rebooting and installing updates...
shutdown.exe /r /t 60 /c "Rebooting to install updates" /f /d p:2:17
echo.
pause
goto menu

:exit
exit
