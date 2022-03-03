$now = Get-Date

# $now | Get-Member 
$now | Select-Object *

$now.DayOfWeek
$now.DayOfYear

$now.ToShortDateString()

Get-Date -Format dd/MM/yyyy
""
$now.AddDays(-62) | Format-Table