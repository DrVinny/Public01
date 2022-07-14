# Installs the following software with winget

$instApps = 

'Microsoft.PowerShell',
'Microsoft.WindowsTerminal',
# 'Microsoft.VisualStudioCode',
# 'Logitech.GHUB',
# 'Adobe.Acrobat.Reader.64-bit',
# 'BlenderFoundation.Blender'

$instApps | ForEach-Object {winget install -e --id $_}
