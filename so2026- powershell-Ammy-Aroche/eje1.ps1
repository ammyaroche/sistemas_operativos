$num = [int](Read-Host "Ingrese un numero")

if ($num -gt 0) {
    Write-Host "El numero es positivo"
}
elseif ($num -lt 0) {
    Write-Host "El numero es negativo"
}
else {
    Write-Host "El numero es cero"
}