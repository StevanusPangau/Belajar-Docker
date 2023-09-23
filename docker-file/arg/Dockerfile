FROM golang:1.18-alpine

# ARG merupakan instruksi yang digunakan untuk mendefinisikan variable yang bisa digunakan ole pengguna untuk dikirim ketika melakukan proses docker build menggunakan perintah --build-arg key=value
# ARG hanya digunakan pada saat proses build time, artinya ketika berjalan dalam Docker Container, ARG tidak akan digunakan, berbeda dengan ENV yang digunakan ketika berjalan dalam Docker Container
# Cara mengakses variable dari ARG sama seperti mengakses variable dari ENV, menggunakan ${variable name}
ARG app=main

RUN mkdir app
COPY main.go app
RUN mv app/main.go app/${app}.go

EXPOSE 8080

# Kita tambahkan ENV app=${app} agar bisa diakses dari dalam Docker Container, karena ARG hanya bisa diakses pada saat proses build time
ENV app=${app}
CMD go run app/${app}.go