$estudiantes = Import-Csv "$PSScriptRoot\estudiantes.csv"

foreach ($estudiante in $estudiantes) {
    $nombre = "$($estudiante.carnet)_$($estudiante.nombre)"

    $nombre = $nombre -replace '[\\/:*?"<>|]', '_'

    New-Item -ItemType Directory -Path $PSScriptRoot -Name $nombre -Force
}

Write-Host "Carpetas creadas"