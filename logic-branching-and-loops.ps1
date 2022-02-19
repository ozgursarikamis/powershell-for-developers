Clear-Host

if (1 -eq 1) {
	"that's true..."
}

# you can have multiple commands on the same line using a semicolon:
$a = "Hi"; $b = "Mom"; "$a $b"

# Switch Statment
Clear-Host

$var = 42

switch ($var) {
	41 { "Forty One" }
	42 { "Forty Two" }
	43 { "Forty Three" }
	Default { "Default Value" }
}

"`tbeware of multiple matches:"

switch ($var) {
	41 { "Forty One" }
	'42' { "Forty Two 1"; break }
	42 { "Forty Two 2" }
	43 { "Forty Three" }
	Default { "Default Value" }
}


"LOOPING"
Clear-Host

$v = 1
while ($v -lt 10) {
	"Current item is: $v"
	$v += 1
}

Clear-Host
"Also supports do-while"

$v2 = 10
do {
	"Current item is: $v2"
	$v2 -= 1
} while ($v2 -gt 0)

Clear-Host

"Do Until"

$v3 = 0
do {
	$v3++
	"current v3 is $v3"
} until ($v3 -eq 100)