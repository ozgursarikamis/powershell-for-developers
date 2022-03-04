# Creating Background Job using "Start-Job"

Start-Job -ScriptBlock { Get-Process -Name notepad }

# Create Background Job using 'Ampersand' (&) operator
Get-Process -Name notepad &

# Create Background Job using "Invoke-Command" and "-AsJob" Parameter

Invoke-Command -ComputerName Ozgur -ScriptBlock { Get-Process -Name notepad } -JobName "Notepad" -AsJob # RemoteJob

Get-Process -Name notepad & # BackgroundJob

Get-Job -IncludeChildJob