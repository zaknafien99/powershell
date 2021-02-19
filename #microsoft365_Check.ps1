#microsoft365_Check.ps1
#Checking the health of microsoft365
install-module -name msonline -verbose
install-module -name office365cmdlets -Verbose
import-module -name msonline 
import-module -name office365cmdlets 


connect-msolservice 

Get-MsolDomain