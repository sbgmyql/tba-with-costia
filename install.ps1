$RED = "Red"

if (Test-Path "$env:USERPROFILE\source\repos") {
    Set-Location ..
    Move-Item -Path "tba-with-costia" -Destination "$env:USERPROFIL\source\repos"
    Set-Location "C:$env:USERPROFILE\source\repos"  
    Clear-Host 
} else {
    Write-Host "[Something is wrong]" -ForegroundColor $RED
}
