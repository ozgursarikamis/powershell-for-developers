# Get-Job

$job = Get-Job -Name Notepad

$job | Remove-Job

Get-Job

Get-Job -Id 1

Remove-Job -Id 1 # Remove by id

Remove-Job -InstanceId 64e3bf65-9ba3-11ec-a5ff-c4a77d045798 # Remove by instance id


# CREATE A NEW SESSION
$session = New-PSSession -ComputerName localhost
$session

Invoke-Command -Session $session -ScriptBlock { Start-Job -ScriptBlock { Get-Process } -Name "LocalhostJob" }