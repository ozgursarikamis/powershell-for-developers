$array = "Ozgur", "Sarikamis"
$array

$array.GetType() # System.Array

""
"`tArray Properties"
$array.Count
$array.IsFixedSize
$array.Length
$array.Rank

# Indexes
""
"`tUsing Array Index"
$array[0]

"Interpolation and Array: $($array[0])"

""
"`tAdding New Items to array..."
$array += "Zana"
$array += "Halime"

$array

""
"`tDeclaring an Empty Array"
$array = @()

$array

$array += "Item 1", 5
$array