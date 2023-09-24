FROM golang:1.18-alpine
ENV APP_PORT=8080
ENV APP_DATA=/logs

RUN mkdir ${APP_DATA}
RUN mkdir app
COPY main.go app

EXPOSE ${APP_PORT}

# Buat Volume
# VOLUME merupakan instruksi yang digunakan untuk membuat volume secara otomatis ketika kita membuat Docker Container
# Semua file yang terdapat di volume secara otomatis akan otomatis di copy ke Docker Volume, walaupun kita tidak membuat Docker Volume ketika membuat Docker Container nya
# Ini sangat cocok pada kasus ketika aplikasi kita misal menyimpan data di dalam file, sehingga data bisa secara otomatis aman berada di Docker Volume
VOLUME ${APP_DATA}

CMD go run app/main.go