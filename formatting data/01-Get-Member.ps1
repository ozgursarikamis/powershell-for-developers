$myString = "this is a string of text. nothing too exciting"

# # Does nothing much. Since it's just a string
# $myString | Format-Table
# $myString | Format-List

# Clear-Host

# Get-NetAdapter
# ""
# Get-NetAdapter | Out-Host

# Get-NetAdapter | Out-Default | Out-Host

# Almost identical because `Out-Host` was already commanded implicitly

# Clear-Host
# Get-Process | Get-Member | more


Clear-Host

$formatData = Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1

$formatData.FormatViewDefinition[0].Control
$formatData.FormatViewDefinition[0].Control.Headers | Format-Table
