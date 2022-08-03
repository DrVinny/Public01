# This script uses powershell to download the Publc01 Repo

$repoOwn = 'DrVinny'
$repoName = 'Public01'

# $repoBranch = 'main'
# $repoURI = "https://api.github.com/repos/$repoOwn/$repoName/zipball/$repoBranch"
# Main is assumed if $repoBranch is omitted
# No token is required for public Repos

$repoURI = "https://api.github.com/repos/$repoOwn/$repoName/zipball/"
# $token = "ghp_yourAccessToken"
# $headers = @{"Authorization" = "bearer $token"}

$ZipFile = "$pwd\$repoName.zip"

Invoke-RestMethod -Uri $repoURI -OutFile $ZipFile -Method Get # -Headers $headers
