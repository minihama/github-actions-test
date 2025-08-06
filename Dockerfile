# Build stage
FROM golang:1.24-alpine AS builder

WORKDIR /app

COPY go.mod ./go/hello-world
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o /go-app

# Final stage
FROM alpine:latest

WORKDIR /root/

COPY --from=builder /go-app .

EXPOSE 8080

CMD ["./go-app"]
