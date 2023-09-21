# Untuk merestore volume yang sudah di backup kita perlu membuat container dan volume baru

# Buat volume baru
# docker volume create <nama volume>
docker volume create mongorestore

# tulis perintah untuk mount seperti hampir sama dengan backup
docker container run --rm --name ubunturestore --mount "type=bind,source=/Users/stevanuspangau/Development/Learning/Belajar-Docker-contoh_backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/mongodata-backup.tar.gz --strip 1"

# bedanya dengan comman backup yaitu:
# bash -c "cd /data && tar xvf /backup/mongodata-backup.tar.gz --strip 1"
# disini kita menggunakan bash -c untuk menjalankan perintah bash di dalam container
# cd /data untuk masuk ke folder data
# && untuk menambahkan perintah selanjutnya
# tar xvf /backup/mongodata-backup.tar.gz --strip 1 untuk mengekstrak file backup yang sudah kita buat sebelumnya

# cek volume
docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest