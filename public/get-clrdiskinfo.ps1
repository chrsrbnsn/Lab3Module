Function Get-clrdiskinfo {
    $volumeinfo = get-volume | where-object { $_.DriveLetter -eq 'C' }
    $SpaceRemaining = [math]::round(($volumeinfo.Size - $volumeinfo.SizeRemaining)/1GB,1)

    Write-Host "Drive space free $SpaceRemaining GB"
}
