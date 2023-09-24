# 1. From
docker build -t stevanuspangau/from from


# 2. Run
docker build -t stevanuspangau/run run
# 2. Run - memunculkan Display Output seperti cat
docker build -t stevanuspangau/run run --progress=plain --no-cache


# 3. Command
docker build -t stevanuspangau/command command
# 3. Command - untuk melihat hasil echo ketik perintah
docker image inspect stevanuspangau/command
# 3. Command - buat container dari image stevanuspangau/command
docker container create --name command stevanuspangau/command
docker container start command
docker container logs command


# 4. Label
docker build -t stevanuspangau/label label


# 5. Add
docker build -t stevanuspangau/add add
# 5. Add - Untuk melihat hasil Add
docker container create --name add stevanuspangau/add
docker container start add
docker container logs add


# 6. Copy
docker build -t stevanuspangau/copy copy
# 6. Copy - Untuk melihat hasil Copy
docker container create --name copy stevanuspangau/copy
docker container start copy
docker container logs copy


# 7. Ignore
docker build -t stevanuspangau/ignore ignore
# 7. Ignore - Untuk melihat hasil Ignore
docker container create --name ignore stevanuspangau/ignore
docker container start ignore
docker container logs ignore


# 8. Expose
docker build -t stevanuspangau/expose expose
# 8. Expose - Untuk melihat hasil Expose lihat di inspect pada bagian ExposedPorts
docker image inspect stevanuspangau/expose
# 8. Expose - Kita coba buat container dari image stevanuspangau/expose
docker container create --name expose --publish 8080:8080 stevanuspangau/expose
docker container start expose
docker container logs expose


# 9. Env
docker build -t stevanuspangau/env env
# 9. Env - Untuk melihat hasil Env
docker image inspect stevanuspangau/env
# 9. Env - Kita coba buat container dari image stevanuspangau/env dan kita coba ganti env portnya
docker container create --name env --env APP_PORT=9090 -p 9090:9090 stevanuspangau/env
docker container start env
docker container logs env


# 10. Volume
docker build -t stevanuspangau/volume volume
# 10. Volume - Untuk melihat hasil Volume
docker image inspect stevanuspangau/volume
# 10. Volume - Kita coba buat container dari image stevanuspangau/volume
docker container create --name volume --env APP_PORT=9090 -p 9090:9090 stevanuspangau/volume
docker container start volume
docker container logs volume


# 11. Workdir
docker build -t stevanuspangau/workdir workdir
# 11. Workdir - Kita coba buat container dari image stevanuspangau/workdir
docker container create --name workdir -p 8080:8080 stevanuspangau/workdir
docker container start workdir
# 11. Workdir - Kita coba masuk ke execnya
docker container exec -i -t workdir /bin/sh
# Lalu coba ketik PWD untuk melihat direktori sekarang


# 12. User
docker build -t stevanuspangau/user user
# 12. User - Kita coba buat container dari image stevanuspangau/user
docker container create --name user -p 8080:8080 stevanuspangau/user
docker container start user
# 12. User - Kita coba masuk ke execnya
docker container exec -i -t user /bin/sh
# Lalu coba ketik 'whoami' untuk melihat user sekarang


# 13. Argumen
docker build -t stevanuspangau/arg arg --build-arg app=evan
# 13. Argumen - Kita coba buat container dari image stevanuspangau/arg
docker container create --name arg -p 8080:8080 stevanuspangau/arg
docker container start arg
# 13. Argumen - Kita coba masuk ke execnya
docker container exec -i -t arg /bin/sh


# 14. Healthcheck
docker build -t stevanuspangau/health health
# 14. Healthcheck - Kita coba buat container dari image stevanuspangau/health
docker container create --name health -p 8080:8080 stevanuspangau/health
docker container start health
# 14. Healthcheck- Untuk check jika container masih sehat cukup ketik
docker container ls
docker container inspect health


# 15. Entrypoint
docker build -t stevanuspangau/entrypoint entrypoint
# 15. Entrypoint - Kita coba buat container dari image stevanuspangau/entrypoint
docker container create --name entrypoint -p 8080:8080 stevanuspangau/entrypoint
docker container start entrypoint
docker container logs entrypoint
# 15. Entrypoint - Kita coba masuk ke execnya
docker container exec -i -t entrypoint /bin/sh


# 16. Multi Stage Build
docker build -t stevanuspangau/multi multi
# 16. Multi Stage Build - Lihat size image
docker image ls
# 16. Multi Stage Build - Kita coba buat container dari image stevanuspangau/multi
docker container create --name multi -p 8080:8080 stevanuspangau/multi
docker container start multi
curl localhost:8080
# 16. Multi Stage Build - Kita coba masuk ke execnya
docker container exec -i -t multi /bin/sh
