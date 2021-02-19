#Filters
#we're out of Filters

$control = {
    $Events = get-winevent -logname application -erroraction silentlycontinue |
        where {$_.Id - eq 16384 -and $_.TimeCreated -ge (Get-Date).AddHours(-1)}
}

$Variation = {
    $Events = Get-Winevent -FilterHashtable @{
        LogName = 'Application'
        Id = 16384
        TimeCreated = (Get-Date).AddHours(-1)
    } -ErrorAction SilentlyContinue
}

Start-RunBucket -Control $Control -Variation $Variation -Title 'Filter Left' -Iterations 