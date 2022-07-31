# Windows 10 set wallpaper value in registry to blank

$wpPath = "HKCU:\Control Panel\Desktop\"
$wpName = "WallPaper"
$wpValue = ""

# Test if wallpaper is set
$wpTest = Get-ItemPropertyValue -Path $wpPath -Name $wpName


if ($wpTest -eq $null) {
    Write-Output "$wpName is already blank"
}
else {
    Set-ItemProperty -Path $wpPath -Name $wpName -Value $wpValue
}

Stop-Process -Name explorer
