# this will prompt for the sAMAccountName first 
$sam = Read-Host "Enter sAMAccountName"; Get-ADComputer -Filter * | ForEach-Object {if (Get-EventLog -LogName Security -ComputerName $_.Name -InstanceId 4624 -Message "*$sam*" -Newest 1 -ErrorAction SilentlyContinue) {Write-Output "$sam last logged into $($_.Name)"}}
