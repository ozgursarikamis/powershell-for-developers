# Start a Background job:
Start-Job -ScriptBlock { Get-Process -Name pwsh }

# Run existing PS Script within a job
Start-Job -FilePath 'C:\Scripts\Background Jobs\SomeJob.ps1'

# Use an Argument List with job:
Start-Job -ScriptBlock { Get-Process -Name $args } -ArgumentList powershell, pwsh, notepad