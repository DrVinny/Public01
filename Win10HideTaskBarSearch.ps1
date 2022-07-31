# Windows 10 hide taskbar

$tbsPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search"
$tbsName = "SearchBoxTaskbarMode"
$tbsValue = "0"

# Test if value exists
$tbsTest = gpv -Path $tbsPath -Name $tbsName

if ($tbsTest -ne 0) {
    sp -Path $tbsPath -Name $tbsName -Value $tbsValue -Type "DWord" -Force
}
else {
    Write-Output "Value already exists and is set to 0"
}
stop-process -Name "Explorer"
