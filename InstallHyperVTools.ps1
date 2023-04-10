# Source: https://learn.microsoft.com/en-us/windows-server/virtualization/hyper-v/manage/remotely-manage-hyper-v-hosts
# the original source, but: *only works if you have RSAT installed

# add-windowsfeature rsat-hyper-v-tools


# Instead try this:
# https://technoresult.com/how-to-turn-on-or-off-windows-features-using-powershell/
# Get-WindowsOptionalFeature –Online -FeatureName *hyper*
# give you:

# Pick one
# I think its this one
Enable-WindowsOptionalFeature -Online -FeatureName “Microsoft-Hyper-V-Tools-All” –all

# but could be
# Enable-WindowsOptionalFeature -Online -FeatureName “Microsoft-Hyper-V-All” –all
# or
# Enable-WindowsOptionalFeature -Online -FeatureName “Microsoft-Hyper-V” –all
