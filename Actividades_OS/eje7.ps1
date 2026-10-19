$num = [int](Read-Host "Ingrese un numero")

for ($i = 1; $i -le 10; $i++) {
    $resultado = $num * $i
    Write-Host "$num x $i = $resultado"
}