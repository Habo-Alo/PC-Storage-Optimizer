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

###🔹 Scan user directory (recommended)
.\FileTypeAnalysis.ps1 -Path "C:\Users"

###🔹 Include system folders
.\FileTypeAnalysis.ps1 -ExcludeFolders @()


### 🔹 Increase top file results
.\FileTypeAnalysis.ps1 -TopFilesPerExtension 10

### 📊 Sample Output
Extension  FileCount  Size GB  TopFiles
---------  ---------  ------  --------------------------------------------------
.pst       3          18.4    C:\Users\...\outlook.pst | C:\Backup\archive.pst
.mp4       12         9.2     C:\Users\...\video1.mp4 | C:\Videos\movie.mp4
.zip       25         4.8     C:\Users\...\backup.zip | C:\Data\data.zip

### 📁 Exported Report
The script generates a CSV file:
C:\Users\<username>\Desktop\FileTypeReport.csv


Supported tools:

Excel
Power BI
ServiceNow attachments
Internal reporting dashboards


###⚡ Performance Tips

🚀 Scan C:\Users instead of full drive for faster results
🚫 Exclude system folders to reduce processing time
🕒 Run during off-hours for large environments
🔑 Run as Administrator for maximum visibility


### 🔍 Use Cases
✅ Disk Cleanup Support
Quickly identify large file types impacting storage
✅ Outlook Storage Issues
Locate large .pst / .ost files
✅ Media / Archive Detection
Find storage-heavy files like:

.mp4, .mkv
.zip, .iso

### ✅ Endpoint Auditing
Analyze storage patterns across user devices



### ⚠️ Limitations

⏳ Full drive scans may take time on large disks
🔐 Some directories may be skipped due to permissions
📊 Progress indicator is approximate
📁 Folder exclusion matches by name (not full path)


### 🔒 Security

✅ Read-only operation (no file modifications)
✅ Safe for production use
✅ No data deletion or changes


### 🧠 Best Practices

Run as Administrator
Start with C:\Users for efficiency
Review CSV in Excel for filtering/sorting
Use exclusions strategically

### 📦 Recommended Command for IT Support
.\FileTypeAnalysis.ps1 -Path "C:\Users" -TopFilesPerExtension 10

Built for IT support workflows to quickly identify storage usage trends and major file offenders across endpoints.


