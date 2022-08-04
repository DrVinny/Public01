# Manage chat in windows 11
# Source: https://community.spiceworks.com/topic/2268367-powershell-check-if-registry-item-exists-if-not-create


# This step removes chat from the taskbar

$tbChatPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$tbChatName = "TaskbarMn"
$tbChatValue = "0"

$tbChatTest = gpv $tbChatPath -Name $tbChatName

if ($tbChatTest -eq 0) {
    Write-Output "Value Exists and is already set to 0"
}
else {
    Set-ItemProperty -Path $tbChatPath -Name $tbChatName -Value $tbChatValue
}

# This step removes chat toggle from taskbar settings

<#
$settingsChatPath = ""
$settingsChatName = ""
$settingsChatValue = ""


Set-ItemProperty -Path $settingsChatPath -Name $settingsChatName -Value $settingsChatValue
#>

Stop-Process -Name explorer
