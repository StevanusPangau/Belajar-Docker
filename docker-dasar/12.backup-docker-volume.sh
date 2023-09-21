# Matika dlu container yang akan kita backup
docker container stop namaContainer

# Buat folder backup
/Users/stevanuspangau/Development/Learning/Belajar-Docker/docker-dasar/backup

# Buat container baru untuk backup
docker container create --name nginxbackup --mount "type=bind,source=/Users/stevanuspangau/Development/Learning/Belajar-Docker/docker-dasar/backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest

# Jalankan containernya
docker container start nginxbackup

# masuk ke exec container namaContainer
docker container exec -i -t nginxbackup /bin/bash

# backup data dari folder data ke folder backup
tar cvf /backup/mongodata.tar.gz /data

# jika sudah jangan lupa exit dari exec container
exit

# lalu stop container
docker container stop namaContainer

# lalu hapus container
docker container rm namaContainer

# nanti otomatis file backupnya ada di folder backup yang sudah kita buat sebelumnya
# jalankan lagi container yang sudah kita bakcup datanya


# ============ Cara cepat backup volume dengan container run ============ #
# install dlu image yang bisa digunakan yang sekali eksekusi langsung mati misalnya ubuntu
docker image pull ubuntu:latest

# ingat juga untuk mematikan dlu container yang akan kita backup
docker container stop namaContainer

# Perintah
docker container run --rm --name ubuntubackup --mount "type=bind,source=/Users/stevanuspangau/Development/Learning/Belajar-Docker-contoh_backup,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" ubuntu:latest tar cvf /backup/mongodata-backup.tar.gz /data

# tinggal di start lagi
docker container start namaContainer

# notes: disini kita tidak menggunakan perintah container create lagi melainkan run, lalu kita tambahkan --rm untuk langsung menghapus containernya setelah selesai dijalankan