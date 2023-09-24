FROM alpine:3

# RUN adalah sebuah instruksi untuk mengeksekusi perintah di dalam image pada saat build stage.
# Hasil perintah RUN akan di commit dalam perubahan image tersebut, jadi perintah RUN akan dieksekusi pada saat proses docker build saja, setelah menjadi Docker Image, perintah tersebut tidak akan dijalankan lagi.
# Jadi ketika kita menjalankan Docker Container dari Image tersebut, maka perintah RUN tidak akan dijalankan lagi.

RUN mkdir hello
RUN echo "Hello World" > "/hello/world.txt"
RUN cat "/hello/world.txt"