# log into a pssession
# disconnect but leave session open

# then use "New-TimeSpan"
# Source: https://devblogs.microsoft.com/scripting/powertip-get-time-difference-between-dates-with-powershell/
# Source 2: https://www.reddit.com/r/PowerShell/comments/bddl8z/restartcomputer_at_a_certain_time/

$startTime = get-date
# change date to match current reboot requirements
$rebootTime = get-Date -Date 2022-12-2T08:50
$waitSeconds = ($rebootTime-$startTime).totalSeconds
$waitSeconds

shutdown -r -t $waitseconds
