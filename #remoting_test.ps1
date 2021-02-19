#remoting_test

$remote_service = get-service -name winrm

if($remote_service.Status -ne "running")
{
    start-service -name winrm
}
    


#create a remote session
$compsession1 = New-PSSession -ComputerName $env:COMPUTERNAME

#create a session
$session1 = New-CimSession -ComputerName $compsession1

#connect to the session
enter-pssession -session $session1

invoke-command -session $session1 -name get-service

#for workgroups you can use some of the functionality of of implicit remoting using the IP address
#e.g.
get-service -name bits -ComputerName 192.168.0.25
#this may also work on domains where there is an issue with DNS or WINS