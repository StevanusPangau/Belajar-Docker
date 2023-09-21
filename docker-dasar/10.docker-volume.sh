# secara default saat kita membuat container, maka data yang akan disimpan dari container itu ada di volume
# docker volume ini sama dengan bind mount, hanya saja datanya disimpan langsung di dalam docker sedangkan mount disimpan langsung di foler host

# cara melihat daftar volume
docker volume ls

# membuat volume
# docker volume create namavolume
docker volume create mongovolume