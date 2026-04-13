# Script para exportar los flujos de n8n a un archivo para compartir con el equipo
Write-Host "Exportando flujos de n8n..." -ForegroundColor Cyan

# 1. Exportar todos los flujos dentro del contenedor
docker exec elegant_n8n n8n export:workflow --all --output=/home/node/.n8n/workflows_export.json

# 2. Copiar el archivo del contenedor al PC local
docker cp elegant_n8n:/home/node/.n8n/workflows_export.json ./n8n_workflows.json

Write-Host "✅ ¡Éxito! Los flujos se han guardado en 'n8n_workflows.json'." -ForegroundColor Green
Write-Host "Ahora puedes hacer 'git add n8n_workflows.json', 'git commit' y 'git push' para compartirlos." -ForegroundColor Yellow
