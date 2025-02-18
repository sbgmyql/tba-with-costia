# Define colors
$Red = "`e[31m"
$Green = "`e[32m"
$Reset = "`e[0m"

# Define the repo path
$RepoPath = "$HOME\source\repos\tba-with-costia"

# Check if the directory exists
if (Test-Path "$HOME\source\repos") {
    if (Test-Path $RepoPath) {
        Remove-Item -Recurse -Force $RepoPath
    }
    Move-Item -Path "tba-with-costia" -Destination "$HOME\source\repos"
    Set-Location "$HOME\source\repos\tba-with-costia"
    python ./onstart.py
    Clear-Host
    Write-Host "${Green}All passed, tell Michael he did a good job${Reset}"
} else {
    Write-Host "${Red}[Something is wrong]${Reset}"
}

