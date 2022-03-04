# Get-Command "*job" # Commands with Job

Start-Job -ScriptBlock { 
	# Do something.
	Get-Process
 }

 Start-Job -ScriptBlock {
	 Get-Process
 } -Name "TestJob" -Verbose

 Get-Job -Id 11
 Remove-Job -Id 11


 Receive-Job -Id 19
# Gets the results of the PowerShell background jobs in the current session.

