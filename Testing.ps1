Testing.ps1
#this is a test script

$PSversionTable
Start-Transcript -Path 'C:\Users\zakna\OneDrive\Documents\PowerShell Scripts\TranscriptTesting'
Get-WinEvent -LogName "Security" -MaxEvents 5 
Get-NetConnectionProfile -name "TelstraCB4063" -Verbose

#region RemoteInstall
#test code
Find-Package -name winget #try this when it's out of alpha, it's currently version 0.0.1 as of 23/5/2020
install-package -name winget


#endregion RemoteInstall


#region hashtable   

    $p = @{"PowerShell" = (Get-Process PowerShell);
    "Notepad" = (Get-Process notepad);
"edge" = (get-process msedge);}
$p.Count
#endregion hashtable

#region virtual_machine
$winRMSrv = get-service -name WinRM
if ($winRMSrv.Status -eq "stopped")
{
    start-service -name winrm
    $session = New-CimSession -ComputerName localhost
    New-NetworkSwitchVlan -CimSession $session

    
}



#endregion virtual_machine




Stop-Transcript


#region runspace
$ps = [powershell]::Create()
$rpcComputerInfo = [System.Management.Automation.]
$ps.AddScript("Get-Process -id $pid")
$rs = [runspacefactory]::CreateRunspace($host, $rpcComputerInfo)

#endregion runspace

get-ciminstance -ClassName CIM_ComputerSystem | format-list

Get-CimInstance -ClassName CIM_Chip | Out-Host -Paging

get-ciminstance -ClassName Win32_BIOS

