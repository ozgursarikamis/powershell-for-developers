[math].GetMembers() | Format-Table

Clear-Host

""
"Members"
[math].GetMembers() | Select-Object Name, MemberType -Unique | Sort-Object MemberType, Name | Format-Table

Clear-Host

[math]::PI

[math]::Pow(2,3)
[math]::Sqrt(25)
[math]::Exp(2)

Clear-Host

$num = 1234.5678
[math]::Truncate($num) # 1234
[math]::Round($num, 2) # 1234.57

Clear-Host
"$num -as [int]"
$num -as [int]
""