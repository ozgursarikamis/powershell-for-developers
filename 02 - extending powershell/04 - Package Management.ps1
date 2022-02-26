# Get-Command -Module PackageManagement

# Clear-Host

# Get-PackageProvider | Format-Table

# Get-Command -Module PowerShellGet

# Clear-Host

# Get-PSRepository | Format-Table

# New-Item -Path C:\LocalPSRepo -ItemType Directory
#TODO: check if directory exists

New-SmbShare -Name LocalPSRepo -Path C:\LocalPSRepo

Register-PSRepository -Name LocalPSRepo -SourceLocation \\localhost\LocalPSRepo\ -ScriptSourceLocation \\localhost\LocalPSRepo\ -InstallationPolicy Trusted

Get-PSRepository

### Outpur

# Name                      InstallationPolicy   SourceLocation
# ----                      ------------------   --------------
# LocalPSRepo               Trusted              \\localhost\LocalPSRepo\
# PSGallery                 Untrusted            https://www.powershellgallery.com/api/v2

Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# Name                      InstallationPolicy   SourceLocation
# ----                      ------------------   --------------
# PSGallery                 Trusted              https://www.powershellgallery.com/api/v2
# LocalPSRepo               Trusted              \\localhost\LocalPSRepo\

Find-Module -Name "*Slack*" # Search by name
Clear-Host

Find-Module -Tag "Slack" # Search by tag

Find-Module -Name PSSlack -AllVersions
Find-Module -Name PSSlack -MaximumVersion 1.0
Find-Module -Name PSSlack -RequiredVersion 1.0.2
