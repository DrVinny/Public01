# Source: 
# https://www.techrepublic.com/article/3-simple-ways-to-find-your-windows-10-product-key/
# (this script uses the 3rd option)

# Check if there is a property under the value in the following path


$licKey = "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
$licVal = "BackupProductKeyDefault"

$licCheck = (Get-ItemProperty $licKey).$licVal
$licCheck
