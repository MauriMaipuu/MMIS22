$destinationFolder = 'C:\Windows\Temp'
$backupFolder = 'C:\Varundus'


$np = (Get-Date).DayOfWeek.value__

switch ($np) {
    1 { $destinationFolder = "$backupFolder\Mon" }
    2 { $destinationFolder = "$backupFolder\Tue" }
    3 { $destinationFolder = "$backupFolder\Wed" }
    4 { $destinationFolder = "$backupFolder\Thu" }
    5 { $destinationFolder = "$backupFolder\Fri" }
    default { $destinationFolder = $null }
}

if ($destinationFolder -eq $null) {
    Write-Host "Laupäeval ja pühapäeval varundust ei tehta."
} else {
    $sourceFolder = "C:\Users\maurp\AppData\Local\Temp"
    $filesToBackup = Get-ChildItem $sourceFolder -Filter *.log

    if ($filesToBackup.Count -eq 0) {
        Write-Host "C:\Windows\Temp kaustas ei leitud .log laiendiga faile."
    } else {
        foreach ($file in $filesToBackup) {
            $destinationPath = Join-Path $destinationFolder $file.Name
            Copy-Item $file.FullName $destinationPath -Force
        }

        Write-Host "Failid on varundatud kausta: $destinationFolder"
    }
}