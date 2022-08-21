# This script gets the public ip address of the current network and saves it to a variable

$myPubIP = (Invoke-WebRequest ifconfig.me/ip).Content.Trim()
$myPubIP | set-clipboard
$myPubIP
