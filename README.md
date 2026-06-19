
📊 File Type Storage Analysis Script (PowerShell)
📌 Overview
This PowerShell script scans a specified directory (default: C:\) and generates a detailed report of disk usage grouped by file type (extension).
It is designed for IT support, system administration, and troubleshooting scenarios where identifying storage consumption trends is critical.

🚀 Features

Scans entire drive or specified directory
Groups files by extension (file type)
Calculates:

Total file count per type
Total storage usage per type (GB)


Identifies top largest files per file type
Displays results in console
Exports report to CSV for further analysis
Includes exclusion support for system directories
Provides progress feedback during scanning


🛠 Requirements

PowerShell 5.1 or later
Local administrator rights recommended (for full scan coverage)


📂 Script Parameters






























ParameterDescriptionDefault-PathRoot directory to scanC:\-ExcludeFoldersList of folder names to excludeWindows, Program Files, Program Files (x86), ProgramData-TopFilesPerExtensionNumber of largest files to display per file type5-ExportPathOutput CSV file locationDesktop\FileTypeReport.csv

▶️ Usage
🔹 Basic usage
PowerShell.\FileTypeAnalysis.ps1Show more lines

🔹 Scan a specific folder
PowerShell.\FileTypeAnalysis.ps1 -Path "C:\Users"Show more lines

🔹 Include system folders
PowerShell.\FileTypeAnalysis.ps1 -ExcludeFolders @()Show more lines

🔹 Increase top file results
PowerShell.\FileTypeAnalysis.ps1 -TopFilesPerExtension 10Show more lines

📊 Output Example





























ExtensionFileCountSizeGBTopFiles.pst318.4outlook.pst | archive.pst.mp4129.2video1.mp4 | video2.mp4.zip254.8backup.zip | data.zip

📁 Output File
The script exports a CSV report to:
C:\Users\<username>\Desktop\FileTypeReport.csv

This file can be opened in:

Excel
Power BI
ServiceNow attachments
Reporting dashboards


⚡ Performance Considerations

Full drive scans may take significant time depending on disk size
Excluding system directories greatly improves performance
Running during off-hours is recommended for large environments
Scanning user directories (C:\Users) is faster and often sufficient


🔍 Common Use Cases
✅ Identify large Outlook files

Look for .pst and .ost

✅ Detect storage-heavy files

Video files (.mp4, .mkv)
Archives (.zip, .iso)

✅ Support disk cleanup tickets

Quickly pinpoint user storage issues
Provide actionable file paths to users

✅ Audit endpoints

Identify patterns across multiple machines


⚠️ Known Limitations

Long-running on very large drives
The progress bar is approximate (PowerShell limitation)
May skip restricted directories without admin access
Exclusion filter checks folder names only (not full paths)


🔒 Security Notes

Script runs in read-only mode (no file modifications)
Does not delete or alter any data
Safe for production use


🧠 Best Practices

Run as Administrator for full visibility
Start with C:\Users for faster results
Review CSV in Excel for better filtering and sorting
Use exclusions strategically to reduce scan time


🧩 Example Command (Recommended for IT Support)
PowerShell.\FileTypeAnalysis.ps1 -Path "C:\Users" -TopFilesPerExtension 10Show more lines

📬 Author Notes
This script is intended for IT support and systems administration workflows, helping quickly identify storage usage patterns and large file offenders across endpoints.
