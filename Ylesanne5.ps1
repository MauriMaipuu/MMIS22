#Mauri Maipuu IS22

Clear-Host
Write-Host "*******************"
$env:COMPUTERNAME

Write-Host "*******************"
(Get-CimInstance Win32_OperatingSystem).Caption

Write-Host "*******************"
(Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias Ethernet0).IPAddress

Write-Host "*******************"
(systeminfo | Select-String 'Total Physical Memory:').ToString().Split(':')[1].Trim()

Write-Host "*******************"
(Get-CimInstance Win32_Processor).Name

Write-Host "*******************"
(Get-WmiObject Win32_VideoController).Name

Write-Host "*******************"
(Get-WmiObject -Class Win32_UserAccount).Name
