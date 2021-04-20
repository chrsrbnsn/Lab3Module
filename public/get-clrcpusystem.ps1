Function Get-clrcpusystem {
    $cpuvalues = Get-CimInstance -ClassName Win32_ComputerSystem

    [PSCustomObject]@{
        'Computer Name' = $cpuvalues.Name
        'Domain' = $cpuvalues.Domain
        'Model' = $cpuvalues.Model
    } | format-list
}