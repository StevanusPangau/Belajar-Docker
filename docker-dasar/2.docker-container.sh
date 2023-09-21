# Melihat semua container yang sedang berjalan maupun yang tidak berjalan
docker container ls -a

# Melihat semua container yang sedang berjalan
docker container ls

# Membuat container baru
# docker container create --name namacontainer namaimage:tag
docker container create --name contohredis redis:latest

# Menjalankan container
# docker container start containerId/namacontainer
docker container start contohredis

# Menghentikan container
# docker container stop containerId/namacontainer
docker container stop contohredis

# Menghapus container
# docker container rm containerId/namacontainer
docker container rm contohredis