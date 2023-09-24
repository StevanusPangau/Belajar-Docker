FROM alpine:3

# Contoh Label
# Instruksi LABEL merupakan instruksi yang digunakan untuk menambahkan metadata ke dalam Docker Image yang kita buat
# Metadata adalah informasi tambahan, misal seperti nama aplikasi, pembuat, website, perusahaan, lisensi dan lain-lain
# Metadata hanya berguna sebagai informasi saja, tidak akan digunakan ketika kita menjalankan Docker Container

LABEL author="Stevanus Evan Pangau"
LABEL company="Alfamat" website="https://alfamat.co.id"
# Label lainnya...

RUN mkdir hello
RUN echo "Hello World" > "/hello/world.txt"

CMD cat "/hello/world.txt"