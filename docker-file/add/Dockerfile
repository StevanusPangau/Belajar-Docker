FROM alpine:3

RUN mkdir hello

# ADD adalah instruksi yang dapat digunakan untuk menambahkan file dari source ke dalam folder destination di Docker Image
# Perintah ADD bisa mendeteksi apakah sebuah file source merupakan file kompres seperti tar.g, gzip, dan lain-lain. Jika mendeteksi file source adalah berupa file kompress, maka secara otomatis file tersebut akan di extract dalam folder destination
# Perintah ADD juga bisa mendukung banyak penambahan file sekaligus
# Penambahan banyak file sekaligus di instruksi ADD menggunakan Pattern di Go-Lang: https://pkg.go.dev/path/filepath#Match

# Menambahkan data ke folder hello
# ADD <source> <destination>
ADD text/*.txt /hello

# pada source juga bisa ditambahkan url, jadi nantinya programnya akan mendownload dari url dan menyimpannya dalam folder destination

CMD cat "/hello/world.txt"