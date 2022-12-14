# This script renames the software distribution folders, after running this try windows update again

stop-service -Name bits
Stop-Service -Name wuauserv
Rename-Item %systemroot%\softwaredistribution softwaredistribution.bak
Rename-Item %systemroot%\system32\catroot2 catroot2.bak
Start-Service -Name BITS
Start-Service -Name wuauserv

DISM.exe /Checkhealth

#use windows update to repair corrupt files.
DISM.exe /Online /Cleanup-image /Restorehealth