# 📊 File Type Storage Analysis Script (PowerShell)

![PowerShell](https://img.shields.io/badge/PowerShell-5.1+-blue.svg)
![Platform](https://img.shields.io/badge/Platform-Windows-lightgrey.svg)
![License](https://img.shields.io/badge/License-Internal-green.svg)

---

## 📌 Overview

This PowerShell script scans a specified directory (default: `C:\`) and generates a detailed report of disk usage grouped by file type (extension).

It is designed for **IT support, system administrators, and troubleshooting scenarios** where identifying storage consumption is critical.

---

## 🚀 Features

- ✅ Recursive drive or folder scanning  
- ✅ File grouping by extension  
- ✅ Total file count per type  
- ✅ Storage usage calculation (GB)  
- ✅ Top largest files per file type  
- ✅ Console output + CSV export  
- ✅ Folder exclusion support  
- ✅ Progress indicator during scanning  

---

## 🛠 Requirements

- Windows OS  
- PowerShell 5.1 or later  
- Administrator privileges recommended (for full scan coverage)

---

## 📂 Parameters

| Parameter | Description | Default |
|----------|------------|--------|
| `-Path` | Root directory to scan | `C:\` |
| `-ExcludeFolders` | Folders to exclude from scan | `Windows`, `Program Files`, `Program Files (x86)`, `ProgramData` |
| `-TopFilesPerExtension` | Number of largest files to return per type | `5` |
| `-ExportPath` | CSV output location | `Desktop\FileTypeReport.csv` |

---

## ▶️ Usage

### 🔹 Run with defaults
```powershell
.\FileTypeAnalysis.ps1
