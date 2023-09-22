# Menggunakan Inspect

# Melihat Detail Image
# docker image inspect <image_name>:<tag>
docker image inspect nginx:latest

# Melihat Detail Container
# docker container inspect <container_name>
docker container inspect contohnginx

# Melihat Detail Volume
# docker volume inspect <volume_name>
docker volume inspect contohvolume

# Melihat Detail Network
# docker network inspect <network_name>
docker network inspect bridge
