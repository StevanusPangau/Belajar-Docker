# From Instruction
docker build -t stevanuspangau/from from

# From Run
docker build -t stevanuspangau/run run

# From Run - memunculkan Display Output seperti cat
docker build -t stevanuspangau/run run --progress=plain --no-cache

# From Command
docker build -t stevanuspangau/command command

# From Command - untuk melihat hasil echo ketik perintah
docker image inspect stevanuspangau/command

# From Command - buat container dari image stevanuspangau/command
docker container create --name command stevanuspangau/command
docker container start command
docker container logs command