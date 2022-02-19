Clear-Host

$hash = @{'Key' = 'Value'}

# $hash.Key

$scoreboard_ozgur = @{ 
	'Player' = 'Ozgur'
	'Score'  = 65
}

$scoreboard_ozgur.Player
$scoreboard_ozgur.Score

$scoreboard_ozgur['Player']
$scoreboard_ozgur['Score']

""
"`tHashtable Keys"
$scoreboard_ozgur.Keys
""
"`tHashtable Values"
$scoreboard_ozgur.Values

""
"`tEmpty Hashtables"
$scoreboard_ozgur = @{}
$scoreboard_ozgur

$scoreboard_ozgur['Date'] = " $(Get-Date)" + " \ " + $(Get-TimeZone)
$scoreboard_ozgur['Weather'] = '60 Degrees'

$scoreboard_ozgur