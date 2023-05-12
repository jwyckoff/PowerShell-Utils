<#
.SYNOPSIS
Creates a line for you.
.DESCRIPTION
Creates a line for you.  Useful for creating a line of dashes or equals signs to separate sections of output.
.PARAMETER char
The character to use to create the line.  Default is "-".  You can use any character you like, but it's probably best to use a single character.
.PARAMETER length
The length of the line.  Default is 80.

.EXAMPLE
Write-Line 

Result: (default values)
--------------------------------------------------------------------------------
.EXAMPLE
Write-Line -char '=' -length 40

Result:
========================================
.EXAMPLE
write-Line -char "*" -length "foo".Length

Result:
***
(since the $message variable is 3 characters long, the line is 3 characters long)
#>
function Write-Line {
    param (
        [Parameter(HelpMessage = 'The character to use to create the line. Default is "-".')]
        [string]$char = '-',

        [Parameter(HelpMessage = 'The length of the line. Default is 80.')]
        [int]$length = 80
    )

    Write-Host $( $char * $length)
}
