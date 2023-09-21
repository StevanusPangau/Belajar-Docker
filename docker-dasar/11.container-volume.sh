# Cara mengintregasikan volume ke dalam container
# hampir sama dengan bind mounts hanya saja kita ganti untuk type yang tadinya bind jadi volume dan sourvenya nama volumenya
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=admin --env MONGO_INITDB_ROOT_PASSWORD=admin mongo:latest