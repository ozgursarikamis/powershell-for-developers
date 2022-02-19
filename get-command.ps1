
# # Get all PS commands
# Get-Command

# # Get all PS 'GET' commands 
# Get-Command -Verb Get
# Get-Command -Verb Write

# Get-Command -Noun Host

# Get-ChildItem

# Write-Host 'Howdy World'

pwsh -command "get-command -verb Get"

# This is a comment

<#
	This is block of a comment
#>

#region
	# This is also region in code.
#endregion