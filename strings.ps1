$some_text = @"
this is a text

with multiline
"@

$some_text

# other way to have multiline strings:
$sql = 'select col' `
+ ', col2' `
+ ', col3' `
+ 'from some_table '

$sql


# String Interpolation:
"This is a sentence that contains a variable: $some_text "