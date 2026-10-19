$nombres = "Ana", "Luis", "Pedro", "Maria", "Carlos"

foreach ($nombre in $nombres) {
    New-Item -ItemType Directory -Name $nombre
}