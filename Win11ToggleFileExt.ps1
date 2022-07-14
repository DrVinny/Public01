# This file toggles the visibility of file extensions in windows explorer

# Path, name, and value of registry entry
$pathFileExt = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
$nameFileExt = "HideFileEXt"
$value0FileExt = 0
$value1FileExt = 1

#check the value of the entry if it exists
$testFileExt = (gp $pathFileExt).$nameFileExt
$testFileExt
# a value of 0 = show extensions, 1 = hide extensions
# if the reg entry doesn't exist, create it, and set the value to 0
# or toggle between a setting of 0 (show extensions) or 1 (hide extensions)

if ($testFileExt -eq $null)
    {
    New-ItemProperty $pathFileExt -Name $nameFileExt -Value $value0FileExt
    echo "Added registry entry"
    }
elseif ($testFileExt -eq 0) 
    {
    Set-ItemProperty -Path $pathFileExt -Name $nameFileExt -Value $value1FileExt
    }   
elseif ($testFileExt -eq 1)
    {
    Set-ItemProperty -Path $pathFileExt -Name $nameFileExt -Value $value0FileExt
    echo "Registry key exists. Value is 1. Setting to 0."
    }

# Force a refresh of explorer
Stop-Process -Name explorer -Force
