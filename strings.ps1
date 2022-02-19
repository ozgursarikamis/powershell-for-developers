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

# it won't work with single-quotes:
'This is a sentence that contains a variable: $some_text '

"`t `t This is tabbed in"

"Here is some text `r`n`r`nA blank line before this."

# Escaping a variable name
"The `$items variable os $items"