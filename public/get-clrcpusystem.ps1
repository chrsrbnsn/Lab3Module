Function Get-clrcpusystem {
    
    param (
        [string[]]$machinename
    )

    $cpuvalues = Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $machinename

    [PSCustomObject]@{
        'Computer Name' = $cpuvalues.Name
        'Domain' = $cpuvalues.Domain
        'Model' = $cpuvalues.Model
    } | format-list
}