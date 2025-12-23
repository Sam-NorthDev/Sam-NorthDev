@echo off
title Sam-NorthDev IT Scanner
echo [STATUS] Scanning ROG System...

set "rep=%userprofile%\Desktop\System_Audit.txt"

echo ======================================== > "%rep%"
echo         SYSTEM AUDIT REPORT            >> "%rep%"
echo ======================================== >> "%rep%"
echo. >> "%rep%"

:: Gathering OS and Model info using systeminfo and find
echo [OS AND MODEL INFO] >> "%rep%"
systeminfo | findstr /C:"OS Name" /C:"System Model" >> "%rep%"

:: Adding Network info
echo. >> "%rep%"
echo [NETWORK INFO] >> "%rep%"
ipconfig | findstr "IPv4" >> "%rep%"

echo.
echo ========================================
echo [SUCCESS] Report saved to Desktop!
echo ========================================
pause
