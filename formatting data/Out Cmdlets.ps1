# Out cmdlets do not format objects
# Pipe data to an out cmdlet, or use the InputObject parameter
# Except for Out-String, out cmdlets don't output objects to the pipeline
# When using out cmdlets, your declaring that you're done with objects.

## Always put out cmdlets at the end of the pipeline.

# help Out-File

Clear-Host

Get-Process s* | Out-File -FilePath './output/processes.txt'