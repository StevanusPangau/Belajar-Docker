# Menambahkan Environment Variable ke Container

# Untuk menambahkan environtment variable kita bisa menggunakan perintah --env atau -e saat membuat container. Contoh:
# docker container create --name namacontainer --publish porthost:portcontainer --env KEY="value" --env KEY2="value" namaimage:tag

# contoh 1
docker container create --name contohnginx --publish 8080:80 --env NGINX_PORT=80 nginx:latest

# contoh 2
docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest