# Set-Location "./Demo"
# Set-Location "../../"
# clear

# Get-Help Get-ChildItem -Online

Get-ChildItem | Where-Object { $_.Length -gt 1kb }
Get-ChildItem | Where-Object -Property Length -gt 1kb