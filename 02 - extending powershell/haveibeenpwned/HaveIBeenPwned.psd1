#
# Module manifest for module 'haveibeenpwned'
#
# Generated by: Ukotic
#
# Generated on: 30/09/2017
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'HaveIBeenPwned.psm1'

# Version number of this module.
ModuleVersion = '3.1'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'fec1f305-848b-47f9-a9cb-7df878249bc2'

# Author of this module
Author = 'Mark Ukotic'

# Company or vendor of this module
CompanyName = 'Ukoticland'

# Copyright statement for this module
Copyright = '(c) 2020 Mark Ukotic. All rights reserved.'

# Description of the functionality provided by this module
Description = @'
Identify Pwned accounts and passwords via the "Have I Been Pwned?" (https://haveibeenpwned.com) API.

Use of some of these functions requires an API key.  This module does not come with an API key.
An API key can be obtained from https://haveibeenpwned.com/API/Key
'@

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @('Get-PwnedAccount','Get-PwnedBreach','Get-PwnedDataClass','Get-PwnedPassword','Get-PwnedPasteAccount')

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'haveibeenpwned','pwned','password', 'hibp'

        # A URL to the license for this module.
        LicenseUri = 'https://github.com/originaluko/haveibeenpwned/blob/master/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/originaluko/haveibeenpwned'

        # A URL to an icon representing this module.
        IconUri = 'https://raw.githubusercontent.com/originaluko/haveibeenpwned/master/haveibeenpwned.jpg'

        # ReleaseNotes of this module
        ReleaseNotes = @'
3.1
Implemented Add-Padding header to Get-PwnedPassword with default true         
3.0.1
Minor update to CSV rate-limiting (thanks to @JordanJenkinson)
3.0
Updated to use the HIBP v3 API which now requires authorisation        
1.4.1
Parameter additions for better usability
1.4
Rewrite of catch handling to work with both Windows PowerShell and PowerShell Core
Added CSV import ability into Get-PwnedAccount         
1.3.1
Switched to MailAddress Class for email address validation in Get-PwnedAccount 
1.3
Added UserAgent string in Get-PwnedAccount to work with Have I Been Pwned v2 API        
1.2.1
Fixed Get-PwnedPassword to work with PowerShell Core        
1.2.0
Update Get-PwnedPassword to use K-anonymity only (contribution by @plaintextcity)         
1.1.0 
'Email address not found.' now returned as an object rather than a string 
1.0.0
Initial Publish
'@

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

