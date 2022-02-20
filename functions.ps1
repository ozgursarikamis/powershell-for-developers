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
	[CmdletBinding()]
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

# Get-BValue -two 2

Clear-Host

# Doing something useful with pipeline enablement

function Get-PSFiles() {
	param([Parameter(ValueFromPipeline)] $file)

	begin {}
	process {
		if ($file.Name -like "*.ps1") {
			$retVal = "`tPowerShell file is $($file.Name)"
			$retVal
		}
	}
	end {}
}

Clear-Host
$output = Get-ChildItem | Get-PSFiles
$output
$output.GetType()


Clear-Host

function Get-AName() {
	param (
		[Parameter(ValueFromPipelineByPropertyName)] $Name
	)
	begin {}

	process {
		"`tYou passed in $Name"
	}

	end {}
}

Get-ChildItem | Get-AName
Get-Process | Get-AName