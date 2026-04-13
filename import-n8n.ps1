# Script para importar los flujos de n8n compartidos por el equipo
Write-Host "Importando flujos de n8n desde el archivo compartido..." -ForegroundColor Cyan

if (-Not (Test-Path ./n8n_workflows.json)) {
    Write-Host "❌ Error: No se encontró el archivo 'n8n_workflows.json'. Asegúrate de hacer 'git pull' primero." -ForegroundColor Red
    exit
}

# 1. Copiar el archivo compartido al contenedor
docker cp ./n8n_workflows.json elegant_n8n:/home/node/.n8n/workflows_import.json

# 2. Importar los flujos dentro del contenedor
docker exec elegant_n8n n8n import:workflow --input=/home/node/.n8n/workflows_import.json

Write-Host "✅ ¡Éxito! Los flujos han sido importados en tu instancia local de n8n." -ForegroundColor Green
Write-Host "Reiniciando n8n para asegurar que todo esté sincronizado..." -ForegroundColor Gray
docker compose -f docker-compose.dev.yml restart n8n
