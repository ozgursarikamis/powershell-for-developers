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