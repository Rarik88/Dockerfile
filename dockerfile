FROM golang:1.21.0

COPY . /app

WORKDIR /app 

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o main .


EXPOSE 80

CMD ["./main"]