# Sets MS Edge Settings
# Source: https://social.technet.microsoft.com/Forums/windows/en-US/566116be-36f3-468c-946c-4ed4a5a44536/how-to-set-homepage-on-edge-browser

$edgeHomePath = "HKCU:\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main"
$edgeHomeName = "HomeButtonPage"
$edgeHomeButtonName = "HomeButtonEnabled"

# In this case it sets it to ablank page
$edgeHomeValue = "about:blank"

Set-ItemProperty -Path $edgeHomePath -Name $edgeHomeName -Value $edgeHomeValue


Computer\HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\AppContainer\Storage\microsoft.microsoftedge_8wekyb3d8bbwe\MicrosoftEdge\Main

"HomeButtonEnabled"=dword:00000001

"HomeButtonPage"="https://www.microsoft.com/"
