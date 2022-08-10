# This is a sample of how to create folders, in this case on the desktop, but can be adapted to work in any path

$DesktopPath = [Environment]::GetFolderPath("Desktop")
$topFolder = "w"
# Old Way
# mkdir $DesktopPath\Working

#New Way
New-Item -Path $DesktopPath -ItemType "Directory" -Name "$topFolder\dl"
New-Item -Path $DesktopPath -ItemType "Directory" -Name "$topFolder\test"
New-Item -Path $DesktopPath -ItemType "Directory" -Name "$topFolder\xfer"
