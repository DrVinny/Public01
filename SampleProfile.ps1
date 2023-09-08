# Create profile folder / file
<#
$profDir = Split-path $PROFILE
ni $profDir -ItemType Directory
ni $PROFILE
#>
# Clear History buffer

([Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory())
Remove-Item (Get-PSReadlineOption).HistorySavePath

