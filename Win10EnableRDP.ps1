# Enable rdp into windows 10 PC (real computer or VM)

# original command
# Set-ItemProperty -Path $tsConnPath -name $tsConnName -value $tsConnValue
# Enable-NetFirewallRule -DisplayGroup "Remote Desktop"



$tsConnPath = "HKLM:\System\CurrentControlSet\Control\Terminal Server"
$tsConnName = "fDenyTSConnections"
$tsConnValue = "0"

$tsConnTest = gpv $tsConnPath -Name $tsConnName

if ($tsconnTest -eq $null) {
    Set-ItemProperty -Path $tsConnPath -name $tsConnName -value $tsConnValue
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
 }
elseif ($tsconnTest -eq 2) {
    Set-ItemProperty -Path $tsConnPath -name $tsConnName -value $tsConnValue
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
 }
elseif ($tsconnTest -eq 0) {
    Write-Output "Value exists and is already set to 0"
 }
