FROM golang:1.21.0

COPY . /app

WORKDIR /app 

EXPOSE 80

RUN go mod download
RUN go build -o main .

CMD ["./main"]