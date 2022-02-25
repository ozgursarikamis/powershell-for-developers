$env:PSModulePath.split(';')

$env:PSModulePath -split ";"

# Setting a path:

Clear-Host
$currentPath = [System.Environment]::GetEnvironmentVariable('PSModulePath', 'Machine')

$currentPath

$newPath = $currentPath + ';C:\MyPowershellModules'

$currentPath = [System.Environment]::SetEnvironmentVariable('PSModulePath', $newPath, 'Machine')

$currentPath = [System.Environment]::GetEnvironmentVariable('PSModulePath', 'Machine')
$currentPath 

Get-Module # modules in the current session

Get-Module -ListAvailable