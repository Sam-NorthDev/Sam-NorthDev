@echo off
title Advanced System Health Report Creator
color 0b

:: --- بخش اطلاعات شخصی ---
set "githubID=Sam-NorthDev"
set "email=sam.azami.tech@gmail.com"
set "linkedin=www.linkedin.com/in/samazami"
:: ---------------------------------------

set "reportFile=%userprofile%\Desktop\System_Report.txt"

echo ===========================================
echo    SYSTEM HEALTH AND HARDWARE REPORT
echo    Developed by: %githubID%
echo ===========================================
echo.
echo Please wait... Running diagnostics...

:: شروع نوشتن در فایل گزارش
echo =========================================== > "%reportFile%"
echo    SYSTEM HEALTH AND HARDWARE REPORT        >> "%reportFile%"
echo    Date: %date% - Time: %time%              >> "%reportFile%"
echo =========================================== >> "%reportFile%"
echo. >> "%reportFile%"
echo [ CONTACT INFORMATION ]                     >> "%reportFile%"
echo GitHub:   github.com/%githubID%             >> "%reportFile%"
echo Email:    %email%                           >> "%reportFile%"
echo LinkedIn: %linkedin%                        >> "%reportFile%"
echo ------------------------------------------- >> "%reportFile%"
echo. >> "%reportFile%"

echo [1/5] HARDWARE SPECIFICATIONS >> "%reportFile%"
echo ------------------------------------------- >> "%reportFile%"
powershell -command "echo 'CPU:'; (Get-CimInstance Win32_Processor).Name; echo ''; echo 'RAM (Total GB):'; [Math]::Round((Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property Capacity -Sum).Sum / 1GB); echo ''; echo 'GPU:'; (Get-CimInstance Win32_VideoController).Name" >> "%reportFile%"
echo. >> "%reportFile%"

echo [2/5] SYSTEM FILE CHECK (SFC) >> "%reportFile%"
echo ------------------------------------------- >> "%reportFile%"
echo Running SFC Scan... 
sfc /scannow | findstr /V /R "^$" >> "%reportFile%"
echo. >> "%reportFile%"

echo [3/5] DISK HEALTH STATUS >> "%reportFile%"
echo ------------------------------------------- >> "%reportFile%"
powershell -command "Get-PhysicalDisk | Select-Object FriendlyName, HealthStatus, OperationalStatus | Out-String" >> "%reportFile%"
echo. >> "%reportFile%"

echo [4/5] CLEANUP STATUS >> "%reportFile%"
echo ------------------------------------------- >> "%reportFile%"
del /q /f /s %temp%\* >nul 2>&1
echo Temporary files have been cleaned. >> "%reportFile%"
echo. >> "%reportFile%"

echo [5/5] ACTIVATION STATUS >> "%reportFile%"
echo ------------------------------------------- >> "%reportFile%"
cscript //nologo c:\windows\system32\slmgr.vbs /xpr >> "%reportFile%"

echo. >> "%reportFile%"
echo =========================================== >> "%reportFile%"
echo    END OF REPORT - Created by %githubID%    >> "%reportFile%"
echo    GitHub: github.com/%githubID%            >> "%reportFile%"
echo =========================================== >> "%reportFile%"

echo.
echo Done! Report saved on Desktop.
echo Opening the report...
start notepad "%reportFile%"
exit