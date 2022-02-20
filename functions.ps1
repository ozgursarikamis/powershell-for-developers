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

function Get-BValue {
	param (
		[Parameter(Mandatory = $true, HelpMessage = "Please enter value one")] [int] $one,
		# Parameter help description
		[Parameter(Mandatory = $false, HelpMessage = "Please enter value two")]
		[int] $two = 65
	)
	begin {
		Clear-Host
		"BEGIN"
	}
		process {
			"PROCESS"
			return $one + $two
		}
	end {
		"END"
	}
}

# Get-BValue -one 1 -two 99

Get-BValue -two 2