class Twitterer {

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