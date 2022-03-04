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