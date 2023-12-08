FROM golang:1.21

WORKDIR /app

RUN go mod init github.com/DigitalATT/ci-go

COPY . .

RUN go build -o math

CMD [ "./math" ]
