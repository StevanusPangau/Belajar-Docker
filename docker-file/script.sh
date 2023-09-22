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