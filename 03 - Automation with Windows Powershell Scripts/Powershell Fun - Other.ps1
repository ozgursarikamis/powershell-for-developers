# "Accessing .NET COM Objects"

# $wsh = New-Object -ComObject wscript.shell
# $wsh.Popup.OverloadDefinitions

# $wsh.Popup("Isn't this fun?", 10, "Powershell Automation", 0+64)
# $wsh.Popup("Failed to do something. Do you want to try again?", -1, "Script Error", 4+32)

# $Host.UI.RawUI.WindowTitle

# foreach ($item in 1..5) {
# 	$Host.UI.RawUI.WindowTitle = $item
# 	Start-Sleep -Seconds 1
# }

$host.UI.RawUI.BackgroundColor = "White"
$host.UI.RawUI.ForegroundColor = "Magenta"