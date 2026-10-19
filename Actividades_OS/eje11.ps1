$cantidad = [int](Read-Host "Cantidad de carpetas")

for ($i = 1; $i -le $cantidad; $i++) {
    New-Item -ItemType Directory -Name "Carpeta$i"
}