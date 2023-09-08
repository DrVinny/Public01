# this script uninstalls apps based on the names in the list

# to see a list of installed apps: winget list
# copy the name in the "ID" column to the list below to remove the app

$uninstApps = 
"Microsoft.XboxApp_8wekyb3d8bbwe",
"Microsoft.XboxIdentityProvider_8wekyb3d8bbwe",
"Microsoft.XboxSpeechToTextOverlay_8wekyb3d8bbwe",
"Microsoft.XboxGamingOverlay_8wekyb3d8bbwe",
"Microsoft.XboxGameOverlay_8wekyb3d8bbwe",
"Microsoft.WindowsMaps_8wekyb3d8bbwe",
"microsoft.windowscommunicationsapps_8wekyb3d8bbwe",
"SpotifyAB.SpotifyMusic_zpdnekdrzrea0",
"Microsoft.ZuneMusic_8wekyb3d8bbwe",
"Microsoft.ZuneVideo_8wekyb3d8bbwe",
"Disney.37853FC22B2CE_6rarf9sa4v8jt",
"Microsoft.BingWeather_8wekyb3d8bbwe",
"Microsoft.MicrosoftSolitaireCollection_8wekyb3d8bbwe",
"Microsoft.People_8wekyb3d8bbwe",
"Microsoft.SkypeApp_kzf8qxf38zg5c",
"Microsoft.WindowsCamera_8wekyb3d8bbwe",
"Microsoft.MicrosoftOfficeHub_8wekyb3d8bbwe",
"Microsoft.549981C3F5F10_8wekyb3d8bbwe",
"Microsoft.WindowsAlarms_8wekyb3d8bbwe",
"Microsoft.YourPhone_8wekyb3d8bbwe",
"Microsoft.GamingApp_8wekyb3d8bbwe",
"Microsoft.MicrosoftSudoku_8wekyb3d8bbwe",
"Microsoft.OneConnect_8wekyb3d8bbwe",
"Microsoft.Studios.Wordament_8wekyb3d8bbwe",
"Microsoft.Xbox.TCUI_8wekyb3d8bbwe",
"Microsoft.Getstarted_8wekyb3d8bbwe",
"Microsoft.MicrosoftEdge.Stable_8wekyb3d8bbwe",
"Microsoft.EdgeWebView2Runtime",
"9WZDNCRFJ3Q2", # MSN Weather, but it doesn't work

# This will uninstall windows 11 widgets, among other things
"MicrosoftWindows.Client.WebExperience_cw5n1h2txyewy",
# Just in case the Above doesn't work
"windows web experience pack"

$uninstApps | ForEach-Object {winget uninstall --accept-source-agreements -h -e --id $_} -ErrorAction Silently
