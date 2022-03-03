$s = "powershell rocks!"

# $s | Get-Member 

Clear-Host
$s.Length
$s.ToUpper()
$s.Substring(5)
$s.Substring(1, 4)
$s.IndexOf("s")

$s = $s.Replace("s", 5).Replace("e", 3)
$s

$t = 'a,b,c,d,e,f,g'
$t -is [array]

$split = $t.Split(',')
$split -is [array]
$split

$randoms = $split | Get-Random -Count 2
"===== Random characters"
$randoms