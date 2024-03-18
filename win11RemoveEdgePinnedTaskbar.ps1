# Source 1: https://superuser.com/questions/984091/remove-microsoft-edge-and-store-taskbar-shortcuts-for-all-new-users-windows-10
# Source 2: https://stackoverflow.com/questions/45152335/unpin-the-microsoft-edge-and-store-taskbar-shortcuts-programmatically

<# The link shortcut is found in : 
$env:AppData\"Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
remove all instances and variances of "Microsoft Edge.lnk"
 #>

<# 
Also they are saved on the registry key:
HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband
It may be easier to just remove the .lnk files
#>

# List pinned apps
ls $env:APPDATA\"Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar"
# See if edge is there
Test-Path $env:APPDATA\"Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk"
# Remove it
Remove-Item $env:APPDATA\"Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Microsoft Edge.lnk"
Stop-Process -Name explorer
