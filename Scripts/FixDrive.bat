@echo off
title Sam-NorthDev Drive Repair Tool
color 0A

echo ----------------------------------------
echo    DRIVE RECOVERY & CLEANING TOOL
echo ----------------------------------------
echo.

:GET_DRIVE
set /p drive="Enter Drive Letter (e.g., F, G, H): "

if not exist %drive%:\ (
    echo [ERROR] Drive %drive%: not found.
    goto GET_DRIVE
)

echo.
echo [1/3] Resetting File Attributes...
attrib -s -h -r /s /d %drive%:\*.*

echo [2/3] Deleting Malicious Shortcuts...
del /s /q /f %drive%:\*.lnk

echo [3/3] Deleting Suspicious Executables...
echo Note: Manually delete any unknown .exe files.

echo ----------------------------------------
echo [DONE] Recovery complete for Drive %drive%:
echo ----------------------------------------
pause
