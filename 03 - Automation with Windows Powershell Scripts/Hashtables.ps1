 $hash = @{ Name = "Jeff "}

 $hash.Name

 $hash.Version = $PSVersionTable.PSVersion

 $hash.Version

 $h = [ordered]@{
	Name = "Jeff"
	Color = 'Green'
	Version = $PSVersionTable.PSVersion
}

$h | Format-Table

# Splatting:

$params = @{
	ComputerName = 'Server 01'
	Classname = 'win32_logicaldisk'
	Filter = "deviceid='C:'"
	Verbose = $true
}

$params

Get-CimInstance @params