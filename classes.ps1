class Twitterer {

	Twitterer() {
		Write-Host "Default construtor called"
	}

	# create a property
	[string] $TwitterHandle

	# create a property and set a default value
	[string] $Name = 'Ozgur Sarikamis'

	# Function that returns a string
	[string] TwitterUrl() {
		$url = "https://twitter.com/$($this.TwitterHandle)"
		return $url
	}

	# Function that has no return value
	[void] OpenTwitter() {
		Start-Process $this.TwitterUrl()
	}
}

$twit = [Twitterer]::new()
$twit.TwitterHandle = 'ozgursarikamis'
$twit.OpenTwitter() # call a method in class.

Clear-Host

class TwRedux {

	[string] $Name = "Ozgur Sarikamis"
	[string] $TwitterHandle

	TwRedux() { }

	TwRedux([string] $twitterHandle) {
		$this.TwitterHandle = $twitterHandle
	}

	TwRedux([string] $Name, [string] $TwitterHandle) {
		$this.Name = $Name
		$this.TwitterHandle = $TwitterHandle
	}
}