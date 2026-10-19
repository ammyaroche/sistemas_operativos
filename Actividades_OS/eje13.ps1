$aprobados = 0
$reprobados = 0
$carpetas = 0

for ($i = 1; $i -le 5; $i++) {
    $nombre = Read-Host "Nombre del estudiante"
    $nota = [int](Read-Host "Ingrese la nota")

    if ($nota -ge 61) {
        $aprobados++

        if (-not (Test-Path -LiteralPath $nombre)) {
            New-Item -ItemType Directory -Name $nombre
            $carpetas++
        }
    }
    else {
        Write-Host "Estudiante reprobado"
        $reprobados++
    }
}

Write-Host "Aprobados: $aprobados"
Write-Host "Reprobados: $reprobados"
Write-Host "Carpetas creadas: $carpetas"