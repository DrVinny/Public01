# Clear History buffer

([Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory())
Remove-Item (Get-PSReadlineOption).HistorySavePath

