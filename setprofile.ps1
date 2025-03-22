$profilePath = Split-Path -Path $PROFILE
$profileUrl = "https://raw.githubusercontent.com/ChrisTitusTech/powershell-profile/main/Microsoft.PowerShell_profile.ps1"

try {
    Invoke-WebRequest -Uri $profileUrl -OutFile "$profilePath\Microsoft.PowerShell_profile.ps1"
    Write-Host "PowerShell profile aktualisiert." -ForegroundColor Green
} catch {
    Write-Error "Fehler beim Herunterladen des PowerShell-Profils: $($_.Exception.Message)"
}