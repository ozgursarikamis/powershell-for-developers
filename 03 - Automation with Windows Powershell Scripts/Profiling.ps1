"PROFILE:" + $profile

$profile | Select-Object *host* | format-list 

# Create a profile
Set-Location /

Get-ChildItem $profile

# Get-ChildItem: Cannot find path 'C:\Users\Oz\Documents\PowerShell\Microsoft.VSCode_profile.ps1' 
# because it does not exist.
New-Item $profile -Force

# C:\Users\Oz\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1

Add-Content -value 'Set-Location "C:\Scripts"' -Path $profile
Add-Content -value '$var = 123' -Path $profile
Add-Content -value '$host.privatedata.errorforegroundcolor="green"' -Path $profile
Add-Content -value 'Write-Host "Hello Art. Have a nice day" -foregroundcolor magenta' -path $profile

New-Item $profile.CurrentUserAllHosts -Force

Add-Content -value "Set-Alias np Notepad" -Path $profile.CurrentUserAllHosts

# we will test if Profile exists or not in our PowerShell installation.
Test-Path $profile

# if $profile doesn't exist:
New-Item -Type File -Force $profile

Test-Path $PROFILE.CurrentUserAllHosts

<#
	Block / Multiline comment !
#>