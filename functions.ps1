# function Get-AValue {
# 	param (
# 		$one, $two
# 	)

# 	Clear-Host
# 	return $one + $two
# }

function Get-AValue($one, $two) {
	Clear-Host
	return "$one $two"
}

Get-AValue('my name is', 'ozgur')