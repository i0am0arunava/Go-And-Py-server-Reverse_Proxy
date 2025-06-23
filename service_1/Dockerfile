# service_1/Dockerfile
FROM golang:1.20

WORKDIR /app
COPY . .
RUN go mod init service1 && go mod tidy

EXPOSE 8001
CMD ["go", "run", "main.go"]
