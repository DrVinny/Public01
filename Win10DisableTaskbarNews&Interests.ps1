# Windows 10 Completely disable news and interests in tasbar

$tbniPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Feeds"
$tbniName = "ShellFeedsTaskbarViewMode"
$tbniValue = "2"

# Test if value exists

$tbniTest = Get-ItemPropertyValue -Path $tbniPath -Name $tbniName

if ($tbniTest -eq 2) {
    Write-Output "$tbniName already exists, and is already set to 2."
} 
else {
    Set-ItemProperty -Path $tbniPath -Name $tbniName -Value $tbniValue -Force
}
Stop-Process -Name explorer
