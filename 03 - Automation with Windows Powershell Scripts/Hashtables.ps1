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