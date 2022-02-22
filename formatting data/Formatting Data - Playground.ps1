# $myString = "this is a string of text. nothing too exciting"

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

# Test-NetConnection -ComputerName www.google.com -CommonTCPPort  HTTP | Format-List
# Test-NetConnection -ComputerName www.google.com -CommonTCPPort  HTTP | Format-Table
# ""
# Test-NetConnection -ComputerName www.google.com -CommonTCPPort  HTTP 
# | Select-Object ComputerName, RemoteAddress, RemotePort, SourceAddress
# | Format-List

# Get-Alias -Definition Format-Table

# Get-Date | ft

# Get-Process | Select-Object ProcessName, Responding, Description | Format-List
# Get-Process | Sort-Object -Property ProcessName | Format-Table

# Get-Process | Sort-Object -Property Name | Format-List -GroupBy Name

# Get-Process ThumbnailExtens | Format-List Name, Id
# ""
# Get-Process ThumbnailExtens | Format-Table * -Wrap

# Clear-Host

# Get-Process ThumbnailExtens | Format-List @{Name="Some Other Name"; Expression={"Some ON: $($_.Name)"}}, Id

# $processes = Get-Process

# Format-List -InputObject $processes

# Clear-Host
# Get-Process | Format-Wide -AutoSize

# Clear-Host
# Get-Process | Format-Wide -Column 3

# Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1


# (Get-FormatData -TypeName System.Diagnostics.Process -PowerShellVersion 5.1).FormatViewDefinition


# Get-Process | Format-Table | Out-File './output/processes.txt'

Get-Content './output/processes.txt'