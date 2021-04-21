Function Get-Lab4Cmds {
    param (
        [string[]]$mchnm
    )
    
    # Retun to the screen all services that being with the letter "S"
    Invoke-Command -ComputerName $mchnm -ScriptBlock { Get-Service | Where-Object { $_.Name -like 'S*' } } 

    # Return to the screen top 5 processes
    Invoke-Command -ComputerName $mchnm -ScriptBlock { Get-Process | Select-Object -First 5 }

    # Top 5 by CPU Usage
    Invoke-Command -ComputerName $mchnm -ScriptBlock { Get-Process | Sort-Object CPU -Descending | Select-Object -First 5 }
}



