# 🖥️ Windows System Audit Tool (v1.0)
**Developed by SAM North Dev**

![Systeminfo](https://img.shields.io/badge/Tools-Systeminfo%20%7C%20IPConfig-blue)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey)

---

## 📖 Overview
The **System Audit Tool** is a quick diagnostic script designed to gather essential system information and network status in seconds. It's built for IT technicians and power users who need a snapshot of their machine's identity and connectivity without navigating through complex Windows menus.

## ✨ Key Features
- **OS Identification:** Extracts the exact OS Name and version.
- **Hardware Model:** Identifies the System Model (e.g., ROG, Dell, HP).
- **Network Snapshot:** Pulls all active IPv4 addresses to verify connectivity.
- **Automated Logging:** Saves all collected data into a clean `System_Audit.txt` on the Desktop.

## 🚀 How to Use
1. Run `SystemAudit.bat`.
2. Wait for the `[STATUS] Scanning...` message.
3. Once the `[SUCCESS]` message appears, check your **Desktop** for the report.

## 📊 Sample Output in Report
```text
======================================== 
          SYSTEM AUDIT REPORT            
======================================== 

[OS AND MODEL INFO]
OS Name:                   Microsoft Windows 11 Pro
System Model:              ROG Strix G513

[NETWORK INFO]
   IPv4 Address. . . . . . . . . . . : 192.168.1.15
