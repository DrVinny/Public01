# In Windows 11, use windows 10 style context menus
# Source: https://www.laptopmag.com/how-to/get-the-windows-10-context-menu-back-in-windows-11

$key1ConMenu = "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}"
$key2ConMenu = "HKCU:\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32"
$nameConMenu = "(Default)"
$valueConMenu = "$null"

# Run a check to see if the path exists and save to $checkResult
$checkResult = test-path $key2ConMenu
Write-Output "Test Path result is:"$checkResult


if ($checkResult -eq $False){    
    # Inculuding the one line immediately below will reset the entire $keyConMenu key
    # New-Item -Path $keyConMenu -Force | Out-Null
    New-Item -Path $key1ConMenu
    New-Item -Path $key2ConMenu
    New-ItemProperty -Path $key2ConMenu -Name $nameConMenu -Value $valueConMenu -PropertyType string -Force | Out-Null
}

if ( $checkResult -eq $True ) {
    Write-Output "Key already exists. No Changes Made."
}

stop-process -Name explorer
