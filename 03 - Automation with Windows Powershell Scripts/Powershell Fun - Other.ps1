"Accessing .NET COM Objects"

$wsh = New-Object -ComObject wscript.shell
$wsh.Popup.OverloadDefinitions

$wsh.Popup("Isn't this fun?", 10, "Powershell Automation", 0+64)
$wsh.Popup("Failed to do something. Do you want to try again?", -1, "Script Error", 4+32)