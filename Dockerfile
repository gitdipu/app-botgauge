FROM golang:latest

WORKDIR /app

COPY go.mod Gopkg.toml ./

RUN go mod download

COPY cmd/main.go .

RUN go build -o botgauge cmd/main.go

EXPOSE 8080

CMD ["botgauge"]