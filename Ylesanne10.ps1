$an = $env:COMPUTERNAME
Write-Host "Arvuti $an kettainfo"

# Leia arvutis olevad loogilised kettad (kõvakettad) ning väljasta nende koguarv
$logicalDisks = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.DriveType -eq 3 }
$totalDisks = $logicalDisks.Count
Write-Host "Kokku leitud kõvakettad: $totalDisks"

# Väljasta ketaste info tabelina
Write-Host "`nKettad:"
Write-Host "----------------------------------------------------------------------------------------------------------------------"
Write-Host "Ketas       Nimi        Suurus (GB)     Vaba kettaruum (GB)    Mahutuvus (%)        Staatus"
Write-Host "----------------------------------------------------------------------------------------------------------------------"

foreach ($disk in $logicalDisks) {
    $diskLetter = $disk.DeviceID
    $diskSizeGB = [math]::Round($disk.Size / 1GB, 2)
    $freeSpaceGB = [math]::Round($disk.FreeSpace / 1GB, 2)
    $capacityPercent = [math]::Round(($freeSpaceGB / $diskSizeGB) * 100, 2)
    $status = if ($capacityPercent -lt 50) { "Ruumi hakkab väheks jääma!" } else { "Ruumi on piisavalt!" }
     
    Write-Host "$diskLetter            $($disk.VolumeName)          $diskSizeGB GB                   $freeSpaceGB GB           $capacityPercent%        $status"
}

Write-Host "----------------------------------------------------------------------------------------------------------------------"