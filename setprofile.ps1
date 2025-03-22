$profilePath = Split-Path -Path $PROFILE
$profileUrl = "https://raw.githubusercontent.com/ChrisTitusTech/powershell-profile/main/Microsoft.PowerShell_profile.ps1"

try {
    $developmentNoticePresent = Test-Path -Path $PROFILE -PathType Leaf -ErrorAction SilentlyContinue |  ForEach-Object { Get-Content -Path $PROFILE -ErrorAction SilentlyContinue } | Select-String -Pattern "# DEVELOPMENT NOTICE" -Quiet
    Invoke-WebRequest -Uri $profileUrl -OutFile "$profilePath\Microsoft.PowerShell_profile.ps1"
    if ($developmentNoticePresent) {
        Add-Content -Path $PROFILE -Value "# DEVELOPMENT NOTICE`n# This file is currently in DEVELOPMENT mode.`n# //DEVELOPMENT NOTICE"
    }
    Write-Host "PowerShell profile aktualisiert." -ForegroundColor Green
} catch {
    Write-Error "Fehler beim Herunterladen des PowerShell-Profils: $($_.Exception.Message)"
}