FROM golang:1.18-alpine

RUN mkdir app
COPY main.go app

# EXPOSE adalah instruksi yang digunakan untuk mengekspos port dari container ke host
# EXPOSE <port>
# Jadi expost ini hanya memberitahukan saja jadi jika tidak di tulis pun tidak masalah, hanya saja sebaiknya digunakan agar orang lain tau port yang akan digunakan
EXPOSE 8080

CMD go run app/main.go