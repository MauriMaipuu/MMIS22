clear-host
$SkriptiAsukoht = $MyInvocation.MyCommand.Path
$dir = Split-Path $SkriptiAsukoht

$emailid = Get-Content -Path $dir\emailid.txt

$massiiv = $emailid.split(",")

$MinuEmail = "mauri.maipuu@vikk.ee"
$massiiv += $MinuEmail

Write-Host "Massiivis on $($massiiv.Count) e-maili aadressi"
Write-Host " "
Write-Host "Esimene e-mail: `r`n $($massiiv[0])"
Write-Host "Viimane e-mail: `r`n $($massiiv[-1])"

