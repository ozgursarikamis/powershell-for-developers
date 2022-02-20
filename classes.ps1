Enum MyTwitters {
	ozgursarikamis
	vscode
}

$usernames = [MyTwitters].GetEnumNames()
$usernames


# When typing the last :, it will trigger intellisense.
Clear-Host
[MyTwitters]::vscode

$vscode = [MyTwitters]::vscode
$vscode

$isDefined = [enum]::IsDefined([MyTwitters], $vscode)
$isDefined