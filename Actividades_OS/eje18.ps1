$estudiantes = Import-Csv "$PSScriptRoot\notas.csv"

New-Item -ItemType Directory -Path "$PSScriptRoot\Aprobados" -Force
New-Item -ItemType Directory -Path "$PSScriptRoot\Reprobados" -Force

foreach ($estudiante in $estudiantes) {
    if ([int]$estudiante.nota -ge 61) {
        $ruta = "$PSScriptRoot\Aprobados"
    }
    else {
        $ruta = "$PSScriptRoot\Reprobados"
    }

    New-Item -ItemType Directory -Path $ruta -Name $estudiante.carnet -Force
}

Write-Host "Estudiantes clasificados"