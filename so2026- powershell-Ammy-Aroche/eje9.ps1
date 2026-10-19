$positivos = 0
$negativos = 0
$ceros = 0

for ($i = 1; $i -le 10; $i++) {
    $num = [int](Read-Host "Ingrese numero $i")

    if ($num -gt 0) {
        $positivos++
    }
    elseif ($num -lt 0) {
        $negativos++
    }
    else {
        $ceros++
    }
}

Write-Host "Positivos: $positivos"
Write-Host "Negativos: $negativos"
Write-Host "Ceros: $ceros"
