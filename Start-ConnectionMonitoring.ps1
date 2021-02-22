function Start-ConnectionMonitoring
{
    param($isp, $gateway, $Logfile, [int]$Delay = 10, [Ipaddress] $adapter, [switch]$ispPopup, [switch]$gateWayPopup)
    $spacer = '------------------------------'
    while($true)
    {
        if(!(Test-Connection $gateway -source $adapter - count 1 -ea Ignore))
        {
            get-date | Add-Content -path $Logfile
            "$gateway Connection Failure" | add-Content -path $Logfile
            $outagetime = Start-ContinuousPing -address $gateway -adapter $adapter -Delay $Delay
            "Total Outage time in Seconds: $outagetime" | add-Content -path $Logfile
            if($gateWayPopup)
            {
                New-PopupMessage -location $gateway -outagetime $outagetime
            }
            $spacer |add-Content -path $Logfile
        }

        if((!(Test-Connection $isp -source $adapter -count 1 -ea Ignore)) -and (Test-Connection $gateway -count 1 -ea Ignore))
        {
            get-date | Add-Content -path $Logfile
            "$isp Connection Failure" | Add-Content -Path $Logfile
            $outagetime = Start-ContinuousPing -address $isp -adapter $adapter -Delay $Delay
            "Total Outage time in Seconds: $outagetime" | add-Content -path $Logfile
            if($ispPopup)
            {
                New-PopupMessage -location $isp -outagetime $outagetime
            }
            $spacer |add-Content -path $Logfile
        }
        start-sleep -Seconds $Delay
    }
}

function Start-ContinuousPing
{
    param($address, [Ipaddress] $adapter, [int]$Delay = 10)
    $currentTime = get-date
    While(!(Test-Connection $address - Source $adapter - count 1 -ea Ignore))
    {
        Sleep -Seconds $Delay
    }
    $outageTime = ((get-date) - $currentTime).TotalSeconds
    $outageTime
}

function New-PopupMessage
{
    param($location, $outagetime)
    $Popup = New-Object -ComObject Wscript.Shell
    $popup.popup("$location Failure - Seconds: $outagetime ", 0, "$location",0x1)

}

$Logfile = "c:\temp\connection.log"
$isp = 'www.telstra.com.au'
if(!(test-path $Logfile))
{
    new-item -Path $Logfile
}
$IP = (Get-NetIPConfiguration).ipv4defaultGateway.nexthop
start-ConnectionMonitoring -isp $isp -gateway $gateway -Logfile $Logfile -adapter $IP -ispPopup -gateWayPopup