# Get the Security log
$SecurityLog = Get-WinEvent -LogName Security

# Filter for event ID 4624 - An account was successfully logged on
$SuccessfulLogonEvents = $SecurityLog | Where-Object {$_.Id -eq 4624}

# Filter for event ID 4625 - An account failed to log on
$FailedLogonEvents = $SecurityLog | Where-Object {$_.Id -eq 4625}

# Display successful remote logon attempts
Write-Host "Successful Remote Logon Attempts:"
$SuccessfulLogonEvents | ForEach-Object {
    Write-Host ("Time: " + $_.TimeCreated)
    Write-Host ("User: " + $_.Properties[5].Value)
    Write-Host ""
}

# Display failed remote logon attempts
Write-Host "Failed Remote Logon Attempts:"
$FailedLogonEvents | ForEach-Object {
    Write-Host ("Time: " + $_.TimeCreated)
    Write-Host ("User: " + $_.Properties[5].Value)
    Write-Host ""
}
