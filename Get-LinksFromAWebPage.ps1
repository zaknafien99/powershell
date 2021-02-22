#Get-LinksFromAWebPage.ps1


#$Response = (invoke-webrequest -Uri "https://aka.ms/pscore6-docs").Links.Href

$Response = Invoke-WebRequest -Uri "https://aka.ms/pscore6-docs"
$Stream = [System.IO.StreamWriter]::new('.\docspage.html', $false, $response.Encoding)
try {
    $Stream.Write($Response.Content)
}
finally {
    $Stream.Dispose()
}