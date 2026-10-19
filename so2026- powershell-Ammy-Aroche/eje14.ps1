for ($i = 1; $i -le 5; $i++) {
    $nombre = "Proyecto$i"

    if (Test-Path $nombre) {
        Write-Host "$nombre ya existe"
    }
    else {
        New-Item -ItemType Directory -Name $nombre
        Write-Host "$nombre creada"
    }
}