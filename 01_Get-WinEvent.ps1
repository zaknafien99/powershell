Get-WinEvent -LogName "Application" -MaxEvents 5

$EventHash = @{
    ProviderName = 'PowerShe*'
    ID = '300', '403', '400', '500'
}

$PowerShellEvents = Get-WinEvent -FilterHashtable $EventHash -MaxEvents 3000

$PowerShellEvents | Select TimeCreated, ID, @{Name='Desc'; Expression={($_.messsage -split '\r?\n')[0]}} |
out-gridview -PassThru | Export-csv -path "C:\temp\Pwsh_events.csv" -Force


# SIG # Begin signature block
# MIIFdgYJKoZIhvcNAQcCoIIFZzCCBWMCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU0BeZxWkA9zmcOnYtuAxvVrwj
# rNygggMOMIIDCjCCAfKgAwIBAgIQcnj8A8lHf75FK2sTlWzCoDANBgkqhkiG9w0B
# AQUFADAdMRswGQYDVQQDDBJMb2NhbCBDb2RlIFNpZ25pbmcwHhcNMjAwNzA4MTEy
# NzU3WhcNMjEwNzA4MTE0NzU3WjAdMRswGQYDVQQDDBJMb2NhbCBDb2RlIFNpZ25p
# bmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC/KUuqZTdLpIYTwR+1
# fFr6b9NvrneMnjTedls8OomKguAO0Pd8x4EUC5Pjd0nc0OAyDayflcGpp6FDaSCy
# pQ+VwxVMEogAcYkU6d1Lnt0KZnEB2vgUyNTawkRlwbE3aXTuAuPbC7iTKwbt4KQT
# /+SkqkPgZagEa9m4GuDOHzsPt01CDuSgMV0Y7uK9Dz48hEfUbJjBsXOxQraeeQqQ
# SEselNzTlMOG5X+7FNrWkkNfMQ8kI9bGIXhYtxkDxQmtckIp4dL+Lb3j2zoFOc8/
# nXDa4jyHh5jW6tT8nWJC1DAWR/ZvAk57PdkGvbCCQJWQau2q5rCqpObcdjquMg0L
# 9o0VAgMBAAGjRjBEMA4GA1UdDwEB/wQEAwIHgDATBgNVHSUEDDAKBggrBgEFBQcD
# AzAdBgNVHQ4EFgQURbU+VBudxcZCH64nma85nGgznTMwDQYJKoZIhvcNAQEFBQAD
# ggEBAC8tB2Nho5pXLhav0D1aj8pq/D4luv4Sf537cVZmO/Skuhvc2thJpv0vtvGY
# fRYbko06/j37lbvd+cZ1B4MGou7P+hYv3fDMVeZmm9Vu+Kjz8xGQaE/kjtfkJ3Q1
# EQ4kHYwy/7Z/Tkp0AjmVAsf59UhfkzWt15YmcOTkE+kLQ52V6a3e3fLv6e9dkz2J
# za9wvOv40w4CZVIAhS00J7OHf9GSsAhsTpOrIyLv3AxfWdT5wW1Oi643IDb+szxp
# TC3PY4YWZwjKOTsWPs2TOo0uiFyhHRYEWkUab0bOjdQV2eCiVDNUzMRsgkisp4gE
# ReysFSbTd5vI4Di5a7DHienuMIMxggHSMIIBzgIBATAxMB0xGzAZBgNVBAMMEkxv
# Y2FsIENvZGUgU2lnbmluZwIQcnj8A8lHf75FK2sTlWzCoDAJBgUrDgMCGgUAoHgw
# GAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMxDAYKKwYBBAGC
# NwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAjBgkqhkiG9w0BCQQx
# FgQU1ByeveVwx6BEpkwvYNwqmsb53lMwDQYJKoZIhvcNAQEBBQAEggEAFs5gsj6F
# L8izH1TxdRsu1aemxZHJh2yadDu4OrLItYDcAtOuyjG973pq/hniNAsNuILM65KA
# n3n2Q7TjhUc/lTHpBmZMlcCa5DTEbSanjfcU3weQLSFsiVgfMoeSfSNc/BxbS1Dn
# W9EfxTeYec/D70AeL6A0F/HCK2uzxxHVm9b52lBWwk+W6uEU34K+YL9MW3sihHNs
# VkYNTGNexSCp767TkRQDUNz87FWpPJTJvnU1j5Wo+OUyu7Nkq4vAny3e+iW7k5OX
# IlqztgGbjoih9N1kDux1JuPy3hDPmzB16nBZDjURbWLP9twfyFNvUxarO023YlAg
# G0yfYxPTQjH2hg==
# SIG # End signature block

