# Pada contoh kali ini kita membuat dua container yaitu mongodb dan mongoexpress yang dimana kedua container tersebut akan kita gabungkan dalam satu network sehingga container mongoexpress bisa mengakses container mongodb.

# buat dulu networknya
# docker network create --driver bridge <nama_network>
docker network create --driver bridge mongonetwork


# Perintah untuk membuat container network
# docker container create --name <nama_container> --network <nama_network> image:tag
docker container create --name mongodb --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest

# install image mongo-express
docker image pull mongo-express:latest

# buat container untuk mono-express
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://admin:admin@mongodb:27017/" mongo-express:latest
# pada perintah ME_CONFIG_MONGODB_URL=mongodb://admin:admin@mongodb:27021/
# admin:admin adalah username dan password yang kita buat pada container mongodb
# @mongodb adalah nama container mongodb
# 27021 adalah port yang kita expose pada container mongodb

# lalu tinggal start mongodb dan mongodbexpress
docker container start mongodb
docker container start mongodbexpress


# perintah untuk menghapus container dari network
# docker network disconnect <nama_network> <nama_container>
docker network disconnect mongonetwork mongodb

# perintah untuk menambahkan container ke network
# docker network connect <nama_network> <nama_container>
docker network connect mongonetwork mongodb