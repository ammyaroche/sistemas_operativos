$clave = Read-Host "Ingrese la contraseña"

while ($clave -cne "PowerShell123") {
    Write-Host "Contraseña incorrecta"
    $clave = Read-Host "Intente nuevamente"
}

Write-Host "Acceso permitido"