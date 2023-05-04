# Source: 
# https://www.techrepublic.com/article/3-simple-ways-to-find-your-windows-10-product-key/
# (Use the 3rd option)

# Check if there is a property under the value in the following path
$licKey = HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform
$licVal = BackupProductKeyDefault
# $licProp
