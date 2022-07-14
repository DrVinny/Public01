# This is a sample of how to create folders, in this case on the desktop, but can be adapted to work in any path

$DesktopPath = [Environment]::GetFolderPath("Desktop")
$topFolder = "w"
# Old Way
# mkdir $DesktopPath\Working

#New Way
New-Item -Path $DesktopPath -Name "$topFolder\dl" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "$topFolder\test" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "$topFolder\xfer" -ItemType "Directory"
