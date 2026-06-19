param (
    [string]$Path = "C:\",
    [string[]]$ExcludeFolders = @("Windows", "Program Files", "Program Files (x86)", "ProgramData"),
    [int]$TopFilesPerExtension = 5,
    [string]$ExportPath = "$env:USERPROFILE\Desktop\FileTypeReport.csv"
)

Write-Host "Starting scan on $Path..." -ForegroundColor Cyan

# Collect all files with progress bar
$files = @()
$i = 0

Get-ChildItem -Path $Path -Recurse -File -ErrorAction SilentlyContinue | ForEach-Object {
    
    # Skip excluded folders
    if ($ExcludeFolders -contains $_.Directory.Name) {
        return
    }

    $files += $_
    
    $i++
    if ($i % 1000 -eq 0) {
        Write-Progress -Activity "Scanning files..." -Status "$i files processed"
    }
}

Write-Host "`nGrouping by file type..." -ForegroundColor Yellow

# Group by extension and build report
$report = $files | Group-Object Extension | ForEach-Object {

    $group = $_.Group
    $totalSize = ($group | Measure-Object Length -Sum).Sum

    # Get top files in this extension
    $topFiles = $group | Sort-Object Length -Descending | Select-Object -First $TopFilesPerExtension

    [PSCustomObject]@{
        Extension = if ($_.Name) { $_.Name } else { "[No Extension]" }
        FileCount = $_.Count
        SizeGB    = [math]::Round($totalSize / 1GB, 2)
        TopFiles  = ($topFiles.FullName -join " | ")
    }
} | Sort-Object SizeGB -Descending

# Display on screen
$report | Format-Table -AutoSize

# Export to CSV
$report | Export-Csv -Path $ExportPath -NoTypeInformation

Write-Host "`nReport exported to: $ExportPath" -ForegroundColor Green
