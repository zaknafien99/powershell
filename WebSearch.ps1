#WebSearch.ps1
#Using PowerShell to search the web

$response = Invoke-Webrequest -URI https://www.bing.com/search?q=how+many+meters+in+a+kilometer
$response.InputFields | where-object {
    $_.name -like "* Value*"
} | Select-Object Name, Value


$response = Invoke-Webrequest -URI https://www.bing.com/search?q=how+many+millimeters+in+a+kilometer
$response.InputFields | where-object {
    $_.name -like "* Value*"
} | Select-Object Name, Value

$response = Invoke-Webrequest -URI https://www.bing.com/search?q=what+
$response.InputFields | where-object {
    $_.name -like "* Value*"
} | Select-Object Name, Value