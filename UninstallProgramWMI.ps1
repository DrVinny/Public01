# How to uninstall a program with powershell using WMI
# Source: https://stackoverflow.com/questions/113542/how-can-i-uninstall-an-application-using-powershell

<# Original sample
$app = Get-WmiObject -Class Win32_Product | Where-Object { 
    $_.Name -match "Software Name" 
}

$app.Uninstall()
Edit: Rob found another way to do it with the Filter parameter:

$app = Get-WmiObject -Class Win32_Product `
                     -Filter "Name = 'Software Name'"
#>

$nameOfAppToUninstall = Get-WmiObject -Class Win32_Product -Filter "Name = 'Software Name as it appears in Add/Remove Programs'"
Write-Output "Show name of app being uninstalled:"
$nameOfAppToUninstall
$nameOfAppToUninstall.Uninstall()
