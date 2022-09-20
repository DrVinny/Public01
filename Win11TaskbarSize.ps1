# Change windows 11 tasbar size
# source: https://www.tomshardware.com/how-to/change-taskbar-icon-size-windows-11

$keySiz = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$nameSiz = "TaskbarSi"
$valueSiz = "1"

# Run a check to see if the value exists and save to $checkResult
$checkResult = (gp $keySiz).$nameSiz
$checkResult

if ($checkResult -eq $null){ 
    # Note: including the one line immediately below line will reset the entire $keySiz key
    # New-Item -Path $keySiz -Force | Out-Null
    New-ItemProperty -Path $keySiz -Name $nameSiz -Value $valueSiz -PropertyType DWORD -Force | Out-Null
}
elseif ($checkResult -ne "1") {
    Set-ItemProperty -Path $keySiz -Name $nameSiz -Value -$valueSiz
}
else {
    Write-Output "Registry entry already exists, and is already set to the correct value (1)."
}

Stop-Process -Name explorer
