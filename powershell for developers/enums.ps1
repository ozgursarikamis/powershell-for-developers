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


Clear-Host

Enum MyColors {
	Red = 1
	Blue = 2
	Green = 3
}

[MyColors].GetEnumNames()

Clear-Host
$colorValues = [MyColors].GetEnumValues()
$colorValues

# well, this is interesting:
[MyColors]::Green -eq 3