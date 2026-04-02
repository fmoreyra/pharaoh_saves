$REPO_DIR = $PSScriptRoot # Esto obtiene la carpeta donde está el script (Save/)

Set-Location $REPO_DIR

Write-Host "Syncing saves..." -ForegroundColor Cyan
git pull origin main

if (git status --porcelain) {
    git add -A
    git commit -m "Save update"
    git push origin main
    Write-Host "Saves subidos." -ForegroundColor Green
}
