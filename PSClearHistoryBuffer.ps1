# Clear session buffer
# Source: https://stackoverflow.com/questions/13257775/powershells-clear-history-doesnt-clear-history
([Microsoft.PowerShell.PSConsoleReadLine]::ClearHistory())

# Remove history file
# Source: https://www.shellhacks.com/clear-history-powershell/

Remove-Item (Get-PSReadlineOption).HistorySavePath

# Change how history is saved:
# Source: https://www.shellhacks.com/clear-history-powershell/

# PS C:\> Set-PSReadlineOption -HistorySaveStyle SaveIncrementally # default
# PS C:\> Set-PSReadlineOption -HistorySaveStyle SaveAtExit
# PS C:\> Set-PSReadlineOption -HistorySaveStyle SaveNothing
