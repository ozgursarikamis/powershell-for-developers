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