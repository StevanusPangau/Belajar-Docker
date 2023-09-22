# Network dalam docker hampir sama dengan image dan container atau volume, jadi kita bisa membuat network sendiri atau menggunakan network yang sudah ada. Untuk melihat network yang ada di docker kita bisa menggunakan perintah docker network ls.


# ada syarat sebuah driver network bisa kita gunakan
# - bridge = yaitu driver network yang digunakan untuk menghubungkan container yang berjalan di host yang sama
# - host = yaitu driver network yang digunakan untuk menghubungkan container yang berjalan di host yang sama, host hanya bisa digunakan dalam sistem operasi linux
# - none (default) = yaitu driver network yang digunakan untuk menghubungkan container yang berjalan di host yang berbeda

# driver lainnnya yang bisa digunakan
# - overlay = yaitu driver network yang digunakan untuk menghubungkan container yang berjalan di host yang berbeda
# - macvlan = yaitu driver network yang digunakan untuk menghubungkan container yang berjalan di host yang berbeda


# perintah untuk melihat list network yang ada di docker
docker network ls

# perintah untuk membuat network
# jika kita tidak menambahkan --driver maka secara default akan menggunakan driver bridge
docker network create --driver <nama_driver> <nama_network>

# perintah untuk menghapus network
# notes: jika network yang akan dihapus masih digunakan oleh container maka akan terjadi error
docker network rm <nama_network>