try {
	Get-Service bits -computername $computername -ErrorAction Stop
}
catch {
	Write-Warning "Failed operation"
}

Clear-Host

try {
	NonesenseString
}
catch {
	"SOMETHING BAD HAPPENED"
}
finally {
	"THIS IS FINALLY BLOCK"
}