try {
	Get-Service bits -computername $computername -ErrorAction Stop
}
catch {
	Write-Warning "Failed operation"
}