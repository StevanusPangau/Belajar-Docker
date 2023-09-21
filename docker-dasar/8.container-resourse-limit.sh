# Di dalam container kita bisa membatasi source yang digunakan oleh container tersebut. dengan menambahkan --memory

# MEMORY
# memory yang digunakan adalah dalam satuan b (byte), k (kilobyte), m (megabyte), g (gigabyte)
# contoh 100m maka 100 mega byte

# CPU
# cpu yang digunakan adalah dalam satuan angka, jika ingin menggunakan 1 core maka gunakan 1, jika ingin menggunakan 2 core maka gunakan 2
# contoh 1 maka 1 core, 2 maka 2 core atau 1,5 maka 1,5 core

# contoh
docker container create --name smallnginx --publish 8081:80 --memory 100m nginx:latest
docker container create --name smallnginx --publish 8081:80 --cpus 0.5 nginx:latest
docker container create --name smallnginx --publish 8081:80 --memory 100m --cpus 0.5 nginx:latest