FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S stvangroup
RUN adduser -S -D -h /app stvanuser stvangroup
RUN chown -R stvanuser:stvangroup /app

USER stvanuser

COPY main.go /app

EXPOSE 8080

CMD go run /app/main.go