$RED = [ConsoleColor]::Red
$GREEN = [ConsoleColor]::Green

if (Test-Path "$env:USERPROFILE\source\repos") {
    if (Test-Path "$env:USERPROFILE\source\repos\tba-with-costia") {
        Remove-Item -Recurse -Force "$env:USERPROFILE\source\repos\tba-with-costia"
    }
    Set-Location ..
    Move-Item -Path "tba-with-costia" -Destination "$env:USERPROFILE\source\repos"
    Set-Location "$env:USERPROFILE\source\repos"
    Clear-Host
    Write-Host "All passed, tell Michael he did a good job" -ForegroundColor $GREEN
} else {
    Write-Host "[Something is wrong]" -ForegroundColor $RED
}

