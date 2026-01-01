@echo off
chcp 65001 >nul
title Developed by Sam - File Detector Tool
color 0b

:: --- بخش اطلاعات شخصی ---
set "authorName=SAM North Dev"
set "githubID=Sam-NorthDev"
set "email=sam.azami.tech@gmail.com"
set "linkedin=www.linkedin.com/in/samazami"
:: ---------------------------------------

echo ==================================================
echo    DEVELOPED BY: %authorName%
echo    GitHub: %githubID%
echo    Email : %email%
echo ==================================================
echo.

:GetPath
set /p targetDir="Please paste the folder path: "
:: حذف کوتیشن‌ها برای جلوگیری از تداخل
set "targetDir=%targetDir:"=%"

:: ایراد 1: چک کردن خالی نبودن مسیر
if "%targetDir%"=="" (
    echo [ERROR] Path cannot be empty!
    goto :GetPath
)

if not exist "%targetDir%" (
    echo [ERROR] Path does not exist. Try again.
    goto :GetPath
)

set "reportFile=%userprofile%\Desktop\Sam_Hidden_Report.txt"

echo ================================================== > "%reportFile%"
echo           HIDDEN FILE INVESTIGATION REPORT         >> "%reportFile%"
echo ================================================== >> "%reportFile%"
echo AUTHOR       : %authorName% >> "%reportFile%"
echo GITHUB       : %githubID% >> "%reportFile%"
echo CONTACT      : %email% >> "%reportFile%"
echo TARGET PATH  : %targetDir% >> "%reportFile%"
echo GENERATED ON : %date% %time% >> "%reportFile%"
echo -------------------------------------------------- >> "%reportFile%"
echo. >> "%reportFile%"

setlocal enabledelayedexpansion
set /a count=0
set /a totalKB=0

echo.
echo Processing... Sam is analyzing your files.
echo -------------------------------------------

for /f "tokens=*" %%f in ('dir /s /ah /b "%targetDir%" 2^>nul') do (
    set /a count+=1
    
    :: گرفتن حجم فایل (بایت)
    set "fSize=%%~zf"
    
    :: تبدیل امن به کیلوبایت برای جلوگیری از Overflow
    set /a ksize=%%~zf / 1024
    set /a totalKB+=!ksize!
    
    echo [!count!] %%f -- Size: !ksize! KB >> "%reportFile%"
)

:: تبدیل مجموع به مگابایت
set /a totalMB=!totalKB! / 1024

echo. >> "%reportFile%"
echo -------------------------------------------------- >> "%reportFile%"
echo SUMMARY BY SAM'S TOOL: >> "%reportFile%"
echo Total Hidden Files Found: !count! >> "%reportFile%"
echo Estimated Total Volume   : !totalMB! MB >> "%reportFile%"
echo -------------------------------------------------- >> "%reportFile%"
echo        *** END OF REPORT - BY %authorName% *** >> "%reportFile%"

echo.
echo [DONE] Sam, your report is ready on the Desktop!
start notepad "%reportFile%"
pause