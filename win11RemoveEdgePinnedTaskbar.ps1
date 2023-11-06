# Source 1: https://superuser.com/questions/984091/remove-microsoft-edge-and-store-taskbar-shortcuts-for-all-new-users-windows-10
# Source 2: https://stackoverflow.com/questions/45152335/unpin-the-microsoft-edge-and-store-taskbar-shortcuts-programmatically

<# The link is found in : 
 %AppData%\Microsoft\Internet Explorer\Quick Launch\
 and 
 %AppData%\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar,
remove all instances and variances of "Microsoft Edge.lnk"
 #>

<# 
Also they are saved on the registry key:
HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Taskband
It may be easier to just remove the .lnk files
#>

function Unpin-App([string]$appname) {
    ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() |
        ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt()}
}

Unpin-App("Microsoft Edge")
Unpin-App("Microsoft Store")
