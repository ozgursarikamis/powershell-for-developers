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

# $formatData = Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1

# $formatData.FormatViewDefinition[0].Control
# $formatData.FormatViewDefinition[0].Control.Headers | Format-Table

# New-Item "./Docs" -ItemType Directory

# Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1 | Export-FormatData -Path './Docs/export.xml' -IncludeScriptBlock

# notepad.exe './Docs/export.xml'

Test-NetConnection -ComputerName www.google.com -CommonTCPPort  HTTP | Format-List
Test-NetConnection -ComputerName www.google.com -CommonTCPPort  HTTP | Format-Table
""
Test-NetConnection -ComputerName www.google.com -CommonTCPPort  HTTP 
| Select-Object ComputerName, RemoteAddress, RemotePort, SourceAddress
| Format-List