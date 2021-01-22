# Error Views

$errorview = "normalview"
[int]$number = read-host -Prompt "What is the latest version of powershell"
break

$errorview = "categoryview"
test-connection -ComputerName "notrealcomputer" -count 1
break

$errorview = "categoryview"
[int]$number = read-host -Prompt "What is the latest version of powershell"
break

$errorview = "normalview"
test-connection -ComputerName "notrealcomputer" -Count 1
break

$errorview = "conciseview"
[int]$number = read-host -Prompt "What is the latest version of powershell"
break

#get-error cmdlet
get-childitem -path /NotRealDirectory

get-process | select-object

#history of errors
get-error

get-error -Newest 5

get-error -Newest 20 |Out-GridView

Links:
https://docs.microsoft.com/en-us/powershell/scripting/what-s-new-in-powershell-70?view=what-s-new-in-powershell-7
#end 