# Invoke-Item .

# POWERSHELL SCOPES:
	# Global  #Script 
	# Private # Numbered Scopes

	# PS looks in the current scope,
		# if it finds it, Success!
			# else, it looks to the parent
				# and grandparent
					# until itfinds it
						# you may or may not get an error
	# But PS can only write or create in the CURRENT scope
	# Everyting in the ISE runs in the GLOBAL SCOPE
	# Some cmdlets have -Scope parameter