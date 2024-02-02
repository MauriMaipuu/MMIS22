$baseDirectory = Read-Host "Sisesta kaust, mida soovid varundada"
$destination = Read-Host "Sisesta kaust, kuhu soovid varundada"
$7zipPath = "$env:ProgramFiles\7-Zip\7z.exe"

if ((Test-Path $baseDirectory) -and (Test-Path $destination)) {
    $kp = Get-Date -Format "ddMMyy"
    $varundus = "backup_$kp.zip"
    if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
    throw "7 zip file '$7zipPath' not found"
}
    Set-Alias 7zip $7zipPath
    7zip a -mx=9 $destination $varundus $baseDirectory
    Write-Host "Varundus õnnestus asukohta $sihtpunkt"
} else {
    if (!(Test-Path $baseDirectory)) {
        Write-Host "Kausta $allikas ei leitud"
    }
    if (!(Test-Path $destination)) {
        Write-Host "Kausta $sihtpunkt ei leitud"
    }
}