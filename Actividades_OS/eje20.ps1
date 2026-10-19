$carpetas = "Imagenes", "Documentos", "PDF", "Otros"

foreach ($carpeta in $carpetas) {
    if (-not (Test-Path $carpeta)) {
        New-Item -ItemType Directory -Name $carpeta
    }
}

$archivos = Get-ChildItem -File

foreach ($archivo in $archivos) {
    if ($archivo.Extension -in ".jpg", ".png") {
        $destino = "Imagenes"
    }
    elseif ($archivo.Extension -in ".docx", ".txt") {
        $destino = "Documentos"
    }
    elseif ($archivo.Extension -eq ".pdf") {
        $destino = "PDF"
    }
    else {
        $destino = "Otros"
    }

    if (Test-Path $destino) {
        $rutaDestino = Join-Path $destino $archivo.Name

        if (-not (Test-Path -LiteralPath $rutaDestino)) {
            Move-Item -LiteralPath $archivo.FullName -Destination $destino
        }
        else {
            Write-Host "Ya existe: $($archivo.Name)"
        }
    }
}

Write-Host "Archivos organizados"