# Out cmdlets do not format objects
# Pipe data to an out cmdlet, or use the InputObject parameter
# Except for Out-String, out cmdlets don't output objects to the pipeline
# When using out cmdlets, your declaring that you're done with objects.

## Always put out cmdlets at the end of the pipeline.

# help Out-File

Clear-Host

# Get-Process s* | Out-File -FilePath './output/processes.txt'
# Get-Process s* | Format-Table | Out-File -FilePath "./output/process.txt"
# Get-Process s* | Format-List | Out-File -FilePath "./output/process.txt" -Append

# Get-Process s* | Format-List | Out-File -FilePath "./output/process.txt" -Width 20 # First 20 characters on each line

# $processes = Get-Process s*
# Out-File -InputObject $processes -FilePath "./output/process.txt"

# Get-Process s* | Out-File './output/process.txt' | Get-Member # You must specify an object for the Get-Member cmdlet.

# Get-Process > './output/process.txt' # redirectional operator
# Get-Process >> './output/process.txt' # redirectional operator (append)

# Get-Process | Out-String | Get-Member

Clear-Host

# $processes = Get-Process
# $processes.Count # count of the processes
# $processes[0] # the first object

# $processes | Select-Object -First 3

# $myArray = New-Object System.Collections.ArrayList
# $myArray.Add("Thing1")
# $myArray.Add("Thing2")
# $myArray.Add("Thing3")

# $myArray.Add("Thing4") | Out-Null # Hides the output instead of sending it down the pipeline or displaying it.

# $myArray

# $myArray.Add('thing 2') > $null

# [void]$myArray # cast to void / null

Install-Module Microsoft.Powershell.ConsoleGuiTools -Force
Get-Command -Module Microsoft.PowerShell.ConsoleGuiTools

Install-Module Microsoft.Powershell.ConsoleGuiTools
Get-Process | Out-ConsoleGridView -Filter Brave
Get-Process | Out-ConsoleGridView -Filter "Brave" -Title "Brave Processes"