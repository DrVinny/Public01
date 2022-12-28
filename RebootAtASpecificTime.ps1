log into a pssession
disconnect but session open

then use "New-TimeSpan"
# Source: https://devblogs.microsoft.com/scripting/powertip-get-time-difference-between-dates-with-powershell/
# Source 2: https://www.reddit.com/r/PowerShell/comments/bddl8z/restartcomputer_at_a_certain_time/

$startTime = get-date
# change date to match current reboot requirements
$rebootTime = get-Date -Date 2022-12-28T20:00
$waitSeconds = ($startTime - $rebootTime).totalSeconds

shutdown -r -t $waitseconds
