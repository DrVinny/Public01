# Set short date format in windows 10 to yyyy.MM.dd


$keyVar = "HKCU:\Control Panel\International"
$nameVar = "sShortDate"
$valueVar = "yyyy.MM.dd"

sp -Path $keyVar -Name $nameVar -Value $valueVar
Stop-Process -ProcessName explorer
