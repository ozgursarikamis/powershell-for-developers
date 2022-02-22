$myString = "this is a string of text. nothing too exciting"

# Does nothing much. Since it's just a string
$myString | Format-Table
$myString | Format-List

Clear-Host

Get-NetAdapter
""
Get-NetAdapter | Out-Host

Get-NetAdapter | Out-Default | Out-Host

# Almost identical because `Out-Host` was already commanded implicitly

# Clear-Host

