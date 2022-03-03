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
Clear-Host

try {
	$wc = New-Object System.Net.WebClient
	$wc.DownloadFile("http://www.contoso.com/MyDoc.doc", 'C:\Scripts\Folder 1')
	
}
catch [System.Net.WebException], [System.IO.IOException] {
	Write-Error "One of these exceptions happened [System.Net.WebException], [System.IO.IOException]"
}
catch {
	"An error occurred that could not be resolved."
}