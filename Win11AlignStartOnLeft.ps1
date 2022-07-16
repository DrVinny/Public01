# In Windows 11, set the start button to be aligned to the left
$keyVar = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$nameVar = "TaskbarAl"
$valueVar = "0"

# Run a check to see if the value exists and save to $checkResult
$checkResult = (gp $keyVar).$nameVar

if ($checkResult -eq $null){
    
    New-Item -Path $keyVar -Force | Out-Null

    New-ItemProperty -Path $keyVar -Name $nameVar -Value $valueVar -PropertyType DWORD -Force | Out-Null

}
else {
    Write-Output "Registry entry already exists, and is already set to the correct value (0)."
}
