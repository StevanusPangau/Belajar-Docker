FROM golang:1.18-alpine as builder
# jangan lupa menggunakan as builder, karena kita akan menggunakan multi stage build
# multi stage builder bisa dibuat lebih dari satu dan sebanyak yang kita butuhkan
WORKDIR /app/
COPY main.go .
# main.go . artinya kita akan mengcopy file main.go ke dalam folder /app, kita menggunakan . karena sekarang kita sedang berada di dalam folder /app
RUN go build -o /app/main /app/main.go


# kita akan membuat image baru dengan base image alpine
FROM alpine:3
# kita akan mengcopy file main yang sudah kita build tadi ke dalam folder /app
COPY --from=builder /app/main /app/
# kita akan mengekspose port 8080
EXPOSE 8080
# kita akan menjalankan file main yang sudah kita copy tadi
CMD /app/main

# jadi size image kita akan menjadi lebih kecil karena kita tidak perlu menginstall go lagi
# size image mengikuti image yang paling terakhir, jadi image kita akan mengikuti image alpine:3