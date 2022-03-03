2,3,4,5,6,7,8,9 | ForEach-Object {
	 $_ * 3 
}

Clear-Host
$n = 1..10

foreach($item in $n) {
	Write-Host $item
}