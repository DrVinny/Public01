# This script gets the password expiry date
# Source: https://activedirectorypro.com/how-to-get-ad-users-password-expiration-date/

# For a single User
Get-ADUser -identity UserLogonNameHere –Properties "DisplayName", "msDS-UserPasswordExpiryTimeComputed" | Select-Object -Property "Displayname",@{Name="ExpiryDate";Expression={[datetime]::FromFileTime($_."msDS-UserPasswordExpiryTimeComputed")}}
