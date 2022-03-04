# Get-Command "*job" # Commands with Job

Start-Job -ScriptBlock { 
	# Do something.
	Get-Process
 }