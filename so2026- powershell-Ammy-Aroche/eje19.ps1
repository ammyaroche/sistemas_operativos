$txt = 0
$csv = 0
$otros = 0

$archivos = Get-ChildItem -File

foreach ($archivo in $archivos) {
    if ($archivo.Extension -eq ".txt") {
        Write-Host "$($archivo.Name): Archivo de texto"
        $txt++
    }
    elseif ($archivo.Extension -eq ".csv") {
        Write-Host "$($archivo.Name): Archivo CSV"
        $csv++
    }
    else {
        Write-Host "$($archivo.Name): Otro tipo de archivo"
        $otros++
    }
}

Write-Host "TXT: $txt"
Write-Host "CSV: $csv"
Write-Host "Otros: $otros"