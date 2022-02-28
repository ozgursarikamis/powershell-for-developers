Write-Host "I am running a script" -ForegroundColor Green

if ($x) {
	Write-Host "Found an existing variable with a value if $x" -ForegroundColor Yellow
}

[Int32]$x = Read-Host "Enter a new value for x"

Write-Host "Setting `$x to $x" -ForegroundColor Green

$x + $x