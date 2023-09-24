FROM golang:1.18-alpine

RUN apk --no-cache add curl
# apk : perintah untuk menginstal package
# --no-cache : untuk menghapus cache yang ada di dalam image
# add curl : untuk menambahkan package curl ke dalam image

RUN mkdir app

COPY main.go app

EXPOSE 8080

# HEALTHCHECK adalah instruksi yang digunakan untuk member tahu Docker bagaimana untuk mengecek apakah Container mash berialan dengan baik atau tidak
# Jika terdapat HEALTHCHECK, secara otomatis Container akan memili status health, dari awalnya bernilai starting, jika sukses maka bernilai healthy, jika gagal akan bernilai unhealty
HEALTHCHECK --interval=5s --start-period=5s CMD curl -f http://localhost:8080/health
# --interval=5s : interval waktu untuk mengecek status health
# --start-period=5s : waktu awal untuk mengecek status health
# CMD : perintah yang akan dijalankan untuk mengecek status health
# -f : jika status health bernilai false, maka akan mengembalikan nilai 1, jika bernilai true maka akan mengembalikan nilai 0

CMD go run app/main.go
