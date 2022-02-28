# switch to Windows Powershell

# Get-EventLog System -EntryType Error -Newest 1000 | Format-List

# $ComputerName = $env:COMPUTERNAME

# Get-EventLog System -EntryType Error -Newest 1000 -ComputerName $ComputerName | Group-Object -Property Source -NoElement

# DECLARING PARAMETERS AND DEFAULT VALUES:

Param(
	[string]$Log = "System",
	[string]$ComputerName = $env:COMPUTERNAME,
	[int32]$Newest = 500,
	[string]$ReportTitle = "Event Log Report",
	[Parameter(Mandatory, HelpMessage = "Enter the path of HTML file.")][string]$path
)

$data = Get-EventLog -logname $Log -EntryType Error -Newest $Newest -ComputerName $ComputerName Group-Object -Property Source -NoElement

# Create an HTML report
$footer = "<h5>Report Run $(Get-Date)</h5>"
$css = "http://sample.css"
$precontent = "<h1>$ComputerName</h1><h2>Last $newest error sources from $Log</h2>"

$data | Sort-Object -Property Count, Name -Descending |
	Select-Object Count, Name |
	ConvertTo-Html -Title $ReportTitle -PreContent $precontent -PostContent $footer -CssUri = $css |
	Out-File -FilePath $path

		# help '.\Parameterize Scripting.ps1'
		# Output is:

			# Parameterize Scripting.ps1 [[-Log] <string>] [[-ComputerName] <string>] [[-Newest] <int>] [[-ReportTitle] <string>] [-path] <string> [<CommonParameters>]