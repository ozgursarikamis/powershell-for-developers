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

# $twit = [Twitterer]::new()
# $twit.TwitterHandle = 'ozgursarikamis'
# $twit.OpenTwitter() # call a method in class.

Clear-Host

class TwRedux {

	[string] $Name = "Ozgur Sarikamis"
	[string] $TwitterHandle

	static [string] $version = '2020.10.31.001'
	
	# Function that returns a string
	[string] TwitterURL()
	{
		# Call the function to build the twitterurl
		# passing in the property we want
		$url = $this.TwitterURL($this.TwitterHandle)

		return $url
	}

	# Overloaded function that returns a string
	[string] TwitterURL($twitterHandle) {
		return "https://twitter.com/$($twitterHandle)"
	}
	
	# Function that has no return value
	[void] OpenTwitter()
	{
		Start-Process $this.TwitterURL()
	}

	# Can launch a twitter page without instantiating the class
	static [void] OpenTwitterPage([string] $twitterHandle) {
		Start-Process "http://twitter.com/$($TwitterHandle)"
	}

	TwRedux() { }

	TwRedux([string] $twitterHandle) {
		$this.TwitterHandle = $twitterHandle
	}

	TwRedux([string] $Name, [string] $TwitterHandle) {
		$this.Name = $Name
		$this.TwitterHandle = $TwitterHandle
	}
}

[TwRedux]::OpenTwitterPage('ozgursarikamis')
# Static Value - Can be called without initializing the class
[TwRedux]::Version

# Use the static method
[TwRedux]::OpenTwitterPage('N4IXT')