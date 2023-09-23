# From
docker build -t stevanuspangau/from from

# Run
docker build -t stevanuspangau/run run

# Run - memunculkan Display Output seperti cat
docker build -t stevanuspangau/run run --progress=plain --no-cache

# Command
docker build -t stevanuspangau/command command

# Command - untuk melihat hasil echo ketik perintah
docker image inspect stevanuspangau/command

# Command - buat container dari image stevanuspangau/command
docker container create --name command stevanuspangau/command
docker container start command
docker container logs command

# Label
docker build -t stevanuspangau/label label

# Add
docker build -t stevanuspangau/add add
# Add - Untuk melihat hasil Add
docker container create --name add stevanuspangau/add
docker container start add
docker container logs add

# Copy
docker build -t stevanuspangau/copy copy
# Copy - Untuk melihat hasil Copy
docker container create --name copy stevanuspangau/copy
docker container start copy
docker container logs copy

# Ignore
docker build -t stevanuspangau/ignore ignore
# Ignore - Untuk melihat hasil Ignore
docker container create --name ignore stevanuspangau/ignore
docker container start ignore
docker container logs ignore

# Expose
docker build -t stevanuspangau/expose expose
# Expose - Untuk melihat hasil Expose lihat di inspect pada bagian ExposedPorts
docker image inspect stevanuspangau/expose
# Expose - Kita coba buat container dari image stevanuspangau/expose
docker container create --name expose --publish 8080:8080 stevanuspangau/expose
docker container start expose
docker container logs expose


# Env
docker build -t stevanuspangau/env env
# Env - Untuk melihat hasil Env
docker image inspect stevanuspangau/env
# Env - Kita coba buat container dari image stevanuspangau/env dan kita coba ganti env portnya
docker container create --name env --env APP_PORT=9090 -p 9090:9090 stevanuspangau/env
docker container start env
docker container logs env