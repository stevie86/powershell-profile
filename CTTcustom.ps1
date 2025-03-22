function doctor {
    Write-Host "PowerShell Version: $($PSVersionTable.PSVersion)"
    Write-Host "Operating System: $(Get-WmiObject win32_operatingsystem | Select-Object -ExpandProperty Caption)"
    Write-Host "PATH: $env:PATH"
    Write-Host "Installed Modules:"
    Get-Module -ListAvailable | Format-Table Name, Version

    if (Test-Path "$PSScriptRoot\CTTcustom.ps1") {
        Write-Host "CTTcustom.ps1 exists"
    } else {
        Write-Host "CTTcustom.ps1 does not exist"
    }

    if (Get-Command conda -ErrorAction SilentlyContinue) {
        Write-Host "conda is installed"
    } else {
        Write-Host "conda is not installed"
    }

    if (Get-Command python -ErrorAction SilentlyContinue) {
        Write-Host "python is installed"
    } else {
        Write-Host "python is not installed"
    }
}