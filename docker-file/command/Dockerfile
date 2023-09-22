FROM alpine:3

# CMD atau Command, merupakan instruksi yang digunakan ketika Docker Container berjalan
# CMD tidak akan dijalankan ketika proses build, namun dijalankan ketika Docker Container berialan
# Dalam Dockerfile, kita tidak bisa menambah lebih dari satu instruksi CMD, jika kita tambahkan lebih dari satu instruksi MD, maka yang akan digunakan untuk menialankan Docker Container adalah instruksi CMD yang terakhir

RUN mkdir hello
RUN echo "Hello World" > "/hello/world.txt"

CMD cat "/hello/world.txt"