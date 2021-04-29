FROM golang:latest

WORKDIR /app
ENV PATH="/go/bin:${PATH}"

COPY go.mod .
### Setting a proxy for downloading modules
ENV GOPROXY https://proxy.golang.org,direct

### Download Go application module dependencies
RUN go mod download

COPY . .    

RUN go build -o math
# RUN go test --coverprofile=coverage.out

CMD ["tail", "-f", "/dev/null"]