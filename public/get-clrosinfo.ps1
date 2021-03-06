Function Get-clrosinfo {
    param (
        [string[]]$machinename
    )

    $osinfo = Get-CimInstance Win32_OperatingSystem -ComputerName $machinename

    [PSCustomObject]@{
        'Operating System' = $osinfo.Caption
        'Serial Number' = $osinfo.SerialNumber
        'Version' = $osinfo.Version
        'Build Number' = $osinfo.BuildNumber
        'OS Architecture' = $osinfo.OSArchitecture
    }
}