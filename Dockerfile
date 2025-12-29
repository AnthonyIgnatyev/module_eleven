FROM golang:1.24.4
WORKDIR /app
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o /module_eleven
CMD ["/module_eleven"]