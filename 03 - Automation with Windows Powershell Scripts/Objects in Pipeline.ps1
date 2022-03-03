$files = Get-ChildItem C:\Scripts -File
$folders = Get-ChildItem C:\Scripts -Directory

$files | Format-Table
$folders | Format-Table

$n = Get-Date

$n

foreach($file in $files) {
	$h = @{
		Name = $file.Name
		Modified = $file.LastWriteTime
		Size = $file.Length
		Age = $file.LastWriteTimeString
	}
	New-Object psobject -Property $h | Format-Table
}