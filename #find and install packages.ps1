#find and install packages
# find in chocolatey repo
choco find notepadplusplus

choco install sysinternals -y
choco install notepadplusplus -y --force

choco upgrade sysinternals -y
choco upgrade notepadplusplus -y

choco find nmap 7.80
choco install nmap 7.80

choco install googleearth