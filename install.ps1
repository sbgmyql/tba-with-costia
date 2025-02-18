$RED = "Red"

if (Test-Path "C:\Users\user1\source\repos") {
    Set-Location ..
    Move-Item -Path "tba-with-costia" -Destination "C:\Users\user1\source\repos"
    Set-Location "C:\Users\user1\source\repos"  
    Clear-Host 
} else {
    Write-Host "[Something is wrong]" -ForegroundColor $RED
}
