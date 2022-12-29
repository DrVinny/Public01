# This does not work in a PSSession
# Must be on a console directly on the machine, (rdp or ninja), or run as a ps1 file

# save a .ps1 file with the following contents, change time as necessary
# double check that $waitseconds echo is a positive number
# negative number indicates that there is likely a typo or incorrect date

$startTime = Get-Date
$rebootTime = Get-Date -Date 2022-12-29t09:14
$waitSeconds = ($rebootTime-$startTime).totalSeconds
$waitSeconds
start-sleep -seconds $waitSeconds

restart-computer -force


# Source: https://devblogs.microsoft.com/scripting/powertip-get-time-difference-between-dates-with-powershell/
# Source 2: https://www.reddit.com/r/PowerShell/comments/bddl8z/restartcomputer_at_a_certain_time/
