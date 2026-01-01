@echo off
title NorthDev ULTIMATE Encyclopedia V1.012
color 0b

:: --- AUTHOR INFORMATION ---
set "author=Sam (NorthDev)"
set "github=github.com/Sam-NorthDev"
set "linkedin=linkedin.com/in/samazami"
set "email=sam.azami.tech@gmail.com"
set "labPath=C:\NorthDevLab"

:LabAsk
cls
echo ==========================================================
echo        WELCOME TO NORTHDEV ULTIMATE ENCYCLOPEDIA
echo ==========================================================
echo  Developed By: %author%
echo  GitHub:   %github%
echo  LinkedIn: %linkedin%
echo  Email:    %email%
echo ==========================================================
echo.
echo [Y] Setup Practice Lab Environment (%labPath%)
echo [N] Skip directly to Encyclopedia
echo.
set /p lchoice="Selection: "
if /i "%lchoice%"=="Y" goto SetupLab
if /i "%lchoice%"=="N" goto MainMenu
goto LabAsk

:SetupLab
cls
mkdir %labPath% 2>nul
echo NorthDev Test File Content > %labPath%\practice.txt
echo NorthDev Log Data > %labPath%\info.log
echo [OK] Laboratory folder created at %labPath%
pause
goto MainMenu

:MainMenu
cls
echo ==========================================================
echo           NorthDev ULTIMATE Encyclopedia V1.012
echo ==========================================================
echo  Developed By: %author%
echo  GitHub:   %github%
echo  LinkedIn: %linkedin%
echo  Contact:  %email%
echo ==========================================================
echo  [A] File Management (1-10)     [B] System Info (11-20)
echo  [C] Network Tools (21-30)      [D] Power User (31-40)
echo  [Q] Exit and Cleanup System
echo ==========================================================
set /p main="Select Category (A/B/C/D/Q): "
if /i "%main%"=="A" goto FileMenu
if /i "%main%"=="B" goto SysMenu
if /i "%main%"=="C" goto NetMenu
if /i "%main%"=="D" goto AdvMenu
if /i "%main%"=="Q" goto Cleanup
goto MainMenu

:: --- CATEGORY A: 1-10 ---
:FileMenu
cls
echo [ CATEGORY A: FILE MANAGEMENT ]
echo 1.DIR 2.COPY 3.DEL 4.REN 5.MOVE 6.MKDIR 7.RMDIR 8.ATTRIB 9.TREE 10.TYPE
echo [M] Back to Main Menu
echo ----------------------------------------------------------
set /p f="Select command (1-10): "
if /i "%f%"=="M" goto MainMenu
if "%f%"=="1" (cls & dir %labPath% & pause & goto FileMenu)
if "%f%"=="2" (cls & echo [COPY] Example: copy source.txt destination & pause & goto FileMenu)
if "%f%"=="3" (cls & echo [DEL] Example: del old_file.txt & pause & goto FileMenu)
if "%f%"=="4" (cls & echo [REN] Example: ren file.txt newname.txt & pause & goto FileMenu)
if "%f%"=="5" (cls & echo [MOVE] Example: move file.txt C:\TargetFolder & pause & goto FileMenu)
if "%f%"=="6" (cls & echo [MKDIR] Example: mkdir MyNewFolder & pause & goto FileMenu)
if "%f%"=="7" (cls & echo [RMDIR] Example: rmdir OldFolder & pause & goto FileMenu)
if "%f%"=="8" (cls & echo [ATTRIB] Example: attrib +h file.txt & pause & goto FileMenu)
if "%f%"=="9" (cls & tree %labPath% /f & pause & goto FileMenu)
if "%f%"=="10" (cls & type %labPath%\practice.txt & pause & goto FileMenu)
goto FileMenu

:: --- CATEGORY B: 11-20 ---
:SysMenu
cls
echo [ CATEGORY B: SYSTEM INFORMATION ]
echo 11.SYSINFO 12.TASKLIST 13.TASKKILL 14.CHKDSK 15.SHUTDOWN 
echo 16.SCHTASKS 17.VER 18.CPU INFO 19.MEM 20.PROMPT
echo [M] Back to Main Menu
echo ----------------------------------------------------------
set /p s="Select command (11-20): "
if /i "%s%"=="M" goto MainMenu
if "%s%"=="11" (cls & systeminfo | findstr /B /C:"OS" & pause & goto SysMenu)
if "%s%"=="12" (cls & tasklist & pause & goto SysMenu)
if "%s%"=="13" (cls & echo [TASKKILL] Force stop a process & pause & goto SysMenu)
if "%s%"=="14" (cls & echo [CHKDSK] Check disk for errors & pause & goto SysMenu)
if "%s%"=="15" (cls & echo [SHUTDOWN] shutdown /s /t 60 & pause & goto SysMenu)
if "%s%"=="16" (cls & echo [SCHTASKS] Manage scheduled tasks & pause & goto SysMenu)
if "%s%"=="17" (cls & ver & pause & goto SysMenu)
if "%s%"=="18" (cls & powershell "Get-CimInstance Win32_Processor | Select-Object Name" & pause & goto SysMenu)
if "%s%"=="19" (cls & echo [MEM] Memory status & pause & goto SysMenu)
if "%s%"=="20" (cls & echo [PROMPT] Change CMD prompt & pause & goto SysMenu)
goto SysMenu

:: --- CATEGORY C: 21-30 ---
:NetMenu
cls
echo [ CATEGORY C: NETWORK TOOLS ]
echo 21.IPCONFIG 22.PING 23.TRACERT 24.NETSTAT 25.NSLOOKUP 
echo 26.NET USE 27.GETMAC 28.ARP 29.HOSTNAME 30.ROUTE
echo [M] Back to Main Menu
echo ----------------------------------------------------------
set /p n="Select command (21-30): "
if /i "%n%"=="M" goto MainMenu
if "%n%"=="21" (cls & ipconfig & pause & goto NetMenu)
if "%n%"=="22" (cls & ping google.com & pause & goto NetMenu)
if "%n%"=="23" (cls & echo [TRACERT] Trace network path & pause & goto NetMenu)
if "%n%"=="24" (cls & netstat -an & pause & goto NetMenu)
if "%n%"=="25" (cls & echo [NSLOOKUP] DNS lookup & pause & goto NetMenu)
if "%n%"=="26" (cls & echo [NET USE] Map network drives & pause & goto NetMenu)
if "%n%"=="27" (cls & getmac & pause & goto NetMenu)
if "%n%"=="28" (cls & arp -a & pause & goto NetMenu)
if "%n%"=="29" (cls & hostname & pause & goto NetMenu)
if "%n%"=="30" (cls & route print & pause & goto NetMenu)
goto NetMenu

:: --- CATEGORY D: 31-40 ---
:AdvMenu
cls
echo [ CATEGORY D: POWER USER / ADVANCED ]
echo 31.SFC 32.DISM 33.CIPHER 34.ASSOC 35.FC 
echo 36.DRIVERQUERY 37.POWERCFG 38.ICACLS 39.DISKPART 40.GPUPDATE
echo [M] Back to Main Menu
echo ----------------------------------------------------------
set /p d="Select command (31-40): "
if /i "%d%"=="M" goto MainMenu
if "%d%"=="31" (cls & echo [SFC] System File Checker & pause & goto AdvMenu)
if "%d%"=="32" (cls & echo [DISM] Deployment Image Servicing & pause & goto AdvMenu)
if "%d%"=="33" (cls & echo [CIPHER] File encryption & pause & goto AdvMenu)
if "%d%"=="34" (cls & assoc .txt & pause & goto AdvMenu)
if "%d%"=="35" (cls & echo [FC] Compare two files & pause & goto AdvMenu)
if "%d%"=="36" (cls & driverquery & pause & goto AdvMenu)
if "%d%"=="37" (cls & powercfg /list & pause & goto AdvMenu)
if "%d%"=="38" (cls & echo [ICACLS] File permissions & pause & goto AdvMenu)
if "%d%"=="39" (cls & echo [DISKPART] Disk management & pause & goto AdvMenu)
if "%d%"=="40" (cls & gpupdate /force & pause & goto AdvMenu)
goto AdvMenu

:: --- CLEANUP SECTION ---
:Cleanup
cls
echo [SYSTEM] NorthDev Automatic Cleanup...
if exist %labPath% (
    rd /s /q %labPath%
    echo [OK] Lab environment %labPath% removed.
)
echo [DONE] Thank you for using NorthDev Encyclopedia!
timeout /t 2 >nul
exit
