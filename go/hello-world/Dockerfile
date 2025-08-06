# Build stage
FROM golang:1.24-alpine AS builder

WORKDIR /app

# Copy go.mod and go.sum files
COPY go.mod ./

# Download dependencies
RUN go mod download

# Copy the entire source code
COPY . .

# Build the Go app
RUN CGO_ENABLED=0 GOOS=linux go build -o /go-app .

# Final stage
FROM alpine:latest

WORKDIR /root/

# Copy the pre-built binary from the builder stage
COPY --from=builder /go-app .

EXPOSE 8080

# Command to run the executable
CMD ["./go-app"]