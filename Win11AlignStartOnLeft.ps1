# In Windows 11, set the start button to be aligned to the left
$keyAl = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$nameAl = "TaskbarAl"
# Left Aligned
$valueAl = "0"
# Center Aligned
# $valueAl = "1"

# Run a check to see if the value exists and save to $checkResult
$checkResult = (gp $keyAl).$nameAl

if ($checkResult -eq $null){    
    # Inculuding the one line immediately below will reset the entire $keyAL key
    # New-Item -Path $keyAl -Force | Out-Null
    New-ItemProperty -Path $keyAl -Name $nameAl -Value $valueAl -PropertyType DWORD -Force | Out-Null
}
elseif ($checkResult -eq 1) {
    Set-ItemProperty -Path $keyAl -Name $nameAl -Value "0"
}
else {
    Write-Output "Registry entry already exists, and is already set to the correct value (0)."
}
