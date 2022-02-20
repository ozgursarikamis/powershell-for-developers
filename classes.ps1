Enum MyTwitters {
	ozgursarikamis
	vscode
}

$usernames = [MyTwitters].GetEnumNames()
$usernames


# When typing the last :, it will trigger intellisense.
Clear-Host
[MyTwitters]::vscode