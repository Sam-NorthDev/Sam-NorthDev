@echo off
title Sam-NorthDev IT Scanner
echo ========================================
echo   SYSTEM SCANNER BY SAM-NORTHDEV
echo ========================================
echo.
echo Scanning... Please wait a few seconds...

:: 1. System Information
echo [SYSTEM INFO] > "%userprofile%\Desktop\Report.txt"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Model" /C:"Total Physical Memory" >> "%userprofile%\Desktop\Report.txt"

:: 2. BIOS Serial Number
echo. >> "%userprofile%\Desktop\Report.txt"
echo [BIOS SERIAL] >> "%userprofile%\Desktop\Report.txt"
wmic bios get serialnumber >> "%userprofile%\Desktop\Report.txt"

:: 3. Network Configuration
echo. >> "%userprofile%\Desktop\Report.txt"
echo [NETWORK INFO] >> "%userprofile%\Desktop\Report.txt"
ipconfig /all >> "%userprofile%\Desktop\Report.txt"

echo.
echo ========================================
echo DONE! Check 'Report.txt' on your Desktop.
echo ========================================
pause
