$proyecto = Read-Host "Nombre del proyecto"

New-Item -ItemType Directory -Name $proyecto -Force

$carpetas = "Documentos", "Imagenes", "Codigo", "Respaldos", "Reportes"

foreach ($carpeta in $carpetas) {
    New-Item -ItemType Directory -Path "$proyecto\$carpeta" -Force
}

Write-Host "Estructura creada"