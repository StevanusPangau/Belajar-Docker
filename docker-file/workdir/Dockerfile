FROM golang:1.18-alpine

# WORKDIR adalah instruksi untuk menentukan direktori / folder untuk menjalankan instruksi RUN, CMD, ENTRYPOINT, COPY dan ADD
# Jika WORKDIR tidak ada, secara otomatis direktorinya akan dibuat, dan selanjutnya setelah kita tentukan lokasi WORKDIR nya, direktori tersebut dijadikan tempat menjalankan instruksi selaniutnya
# Jika lokasi WORKDIR adalah relative path, maka secara otomatis dia akan masuk ke direktori dari WORKDIR sebelumnya
# WORKDIR juga bisa digunakan sebagai path untuk lokasi pertama kali ketika kita masuk ke dalam Docker Container
WORKDIR /app

COPY main.go /app

EXPOSE 8080

# Biasa kita akan menjalankan perintah /app/main.go, cma karena sekarang kita memakai WORKDIR maka kita cukup menjalankan perintah main.go saja karena saat ini programnya ada di /app
CMD go run main.go