$nota = [int](Read-Host "Ingrese la nota")

if ($nota -lt 0 -or $nota -gt 100) {
    Write-Host "Error: nota fuera de rango"
}
elseif ($nota -ge 90) {
    Write-Host "Excelente"
}
elseif ($nota -ge 61) {
    Write-Host "Aprobado"
}
else {
    Write-Host "Reprobado"
}