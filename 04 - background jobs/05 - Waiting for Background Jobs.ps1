# Wait for All Jobs

Get-Job | Wait-Job

# Wait for several jobs by id to finish:
Wait-Job -Id 1,2,5

# Waiting for "Invoke-Command" Jobs

$session = New-PSSession -ComputerName localhost
$job = Invoke-Command -Session $session -ScriptBlock { Get-Process } -AsJob
$job | Wait-Job


# Get-Job		 : Gets PS BACKGROUND JOBS that are running in the current session
# Receive-Job	 : Gets the RESULTS of the PS background jobs in the current session

# Retrieve job details:
$job = Start-Job -ScriptBlock { Get-Process } -Name "Job1"

Get-Job -IncludeChildJob
Get-Job -IncludeChildJob -Name "Job2"

Receive-Job -Id 5

# The Receive-Job cmdlet gets the results of PowerShell background jobs
$job = Start-Job -ScriptBlock { $env:COMPUTERNAME }
Receive-Job -Job $job