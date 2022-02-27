# # Get-Command -Module PackageManagement

# # Clear-Host

# # Get-PackageProvider | Format-Table

# # Get-Command -Module PowerShellGet

# # Clear-Host

# # Get-PSRepository | Format-Table

# # New-Item -Path C:\LocalPSRepo -ItemType Directory
# #TODO: check if directory exists

# New-SmbShare -Name LocalPSRepo -Path C:\LocalPSRepo

# Register-PSRepository -Name LocalPSRepo -SourceLocation \\localhost\LocalPSRepo\ -ScriptSourceLocation \\localhost\LocalPSRepo\ -InstallationPolicy Trusted

# Get-PSRepository

# ### Outpur

# # Name                      InstallationPolicy   SourceLocation
# # ----                      ------------------   --------------
# # LocalPSRepo               Trusted              \\localhost\LocalPSRepo\
# # PSGallery                 Untrusted            https://www.powershellgallery.com/api/v2

# Set-PSRepository -Name PSGallery -InstallationPolicy Trusted

# # Name                      InstallationPolicy   SourceLocation
# # ----                      ------------------   --------------
# # PSGallery                 Trusted              https://www.powershellgallery.com/api/v2
# # LocalPSRepo               Trusted              \\localhost\LocalPSRepo\

# Find-Module -Name "*Slack*" # Search by name
# Clear-Host

# Find-Module -Tag "Slack" # Search by tag

# Find-Module -Name PSSlack -AllVersions
# Find-Module -Name PSSlack -MaximumVersion 1.0
# Find-Module -Name PSSlack -RequiredVersion 1.0.2

#  Clear-Host

#  Find-Command -ModuleName PSSlack

#  Find-Command -Name Get-VM

# Install-Module -Name PSSlack

# Get-Module PSSlack -ListAvailable | Format-List

# Get-Command -Module PSSlack

# Install-Module -Name posh-ssh -RequiredVersion 2.0

# Get-Module posh-ssh -ListAvailable

# Update-Module posh-ssh

# # Updating a module, does not remove the older version.

# (Get-InstalledModule).count
# (Get-Module).count

Uninstall-Module -Name posh-ssh