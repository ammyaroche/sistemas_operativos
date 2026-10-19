$estudiantes = @(Import-Csv "$PSScriptRoot\estudiantes.csv")

for ($i = 0; $i -lt $estudiantes.Count; $i++) {
    Write-Host "Carnet:" $estudiantes[$i].carnet
    Write-Host "Nombre:" $estudiantes[$i].nombre
    Write-Host "Email:" $estudiantes[$i].email
    Write-Host "Telefono:" $estudiantes[$i].telefono
    Write-Host "----------------------"
}