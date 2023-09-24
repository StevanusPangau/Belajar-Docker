FROM golang:1.18-alpine

RUN mkdir /app/
COPY main.go /app/

EXPOSE 8080

# ENTRYPOINT adalah instruksi untuk menentukan executable file yang akan dijalankan oleh container
# Biasanya ENTRYPOINT itu erat kaitannya dengan instruksi CMD
# Saat kita membuat instruksi CMD tapa executable file, secara otomatis CMD akan menggunakan ENTRYPOINT

ENTRYPOINT [ "go", "run" ]
CMD [ "/app/main.go" ]

# Jadi ibarat kita menggunakan entry point akan menjadi go run /app/main.go
