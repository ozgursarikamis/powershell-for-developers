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

Get-Process s* | Out-File './output/process.txt' | Get-Member # You must specify an object for the Get-Member cmdlet.