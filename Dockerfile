# Build stage
FROM golang:1.22-alpine AS builder

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o /go-app

# Final stage
FROM alpine:latest

WORKDIR /root/

COPY --from=builder /go-app .

EXPOSE 8080

CMD ["./go-app"]
