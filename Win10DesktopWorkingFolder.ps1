# Create desktop working ("w") folder and subfolders in current profile

$DesktopPath = [Environment]::GetFolderPath("Desktop")
$topFolder = "w"
# Old Way
# mkdir $DesktopPath\Working

#New Way
New-Item -Path $DesktopPath -Name "$topFolder\dl" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "$topFolder\test" -ItemType "Directory"
New-Item -Path $DesktopPath -Name "$topFolder\xfer" -ItemType "Directory"
