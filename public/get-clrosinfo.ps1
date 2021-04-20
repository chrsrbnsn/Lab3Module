Function Get-clrosinfo {
    $osinfo = Get-CimInstance Win32_OperatingSystem

    [PSCustomObject]@{
        'Operating System' = $osinfo.Caption
        'Serial Number' = $osinfo.SerialNumber
        'Version' = $osinfo.Version
        'Build Number' = $osinfo.BuildNumber
        'OS Architecture' = $osinfo.OSArchitecture
    }
}