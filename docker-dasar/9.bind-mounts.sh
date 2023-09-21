# bind mount digunakan untuk kita bisa menyimpan file atau folder dari host ke container

# contoh saat kita membuat container:
# docker container create --name namaContainer --mount "type=bind, source=folder, destination=folder, readonly" namaImage:tas
docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/Users/stevanuspangau/Development/Learning/Belajar-Docker/docker-dasar/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest

# jadi ibarat data yang disimpan dari container langsung kesimpan di komputer kita