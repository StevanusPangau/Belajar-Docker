# Untuk melakukan port forwarding di docker container kita bisa melakukan dengan perintah berikut saat membuat container:
# docker container create --name namaContainer --publish posthhost:portContainer namaImage:tag
docker container create --name contohnginx --publish 8080:80 nginx:latest

# 