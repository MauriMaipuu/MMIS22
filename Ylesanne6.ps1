#Skript muutujate katsetamiseks
#Autor: Mauri Maipuu, IS22
#Muudetud: 19.01.2024

Clear-Host

#Muutujad
$name = "Mauri Maipuu"
$email = "mauri.maipuu@vikk.ee"
$paev = Get-Date -Format dddd
${hetke kp} = Get-Date -Format dd.MM.yy
$filename = "skriptimine_${hetke kp}.txt"
$asukoht = "C:\Users\maurp\Downloads\Scripts"


#Kuvamis tekst
Write-Host "Tere mina olen:"
Write-Host "$name"
Write-Host ""
Write-Host "Minu e-post on: $email"
Write-Host ""
Write-Host "Täna on $paev ${hetke kp}"
Write-Host "See on hea päev skriptimiseks"
Write-Host
Write-Host "Fail $filename on loodud asukohta $asukoht"