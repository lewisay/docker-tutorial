FROM golang:1.16.3-buster as builder
WORKDIR /go/src/github.com/lewisay/docker-tutorial
COPY main.go .
COPY go.mod .
RUN CGO_ENABLED=0 GOOS=linux go build -o app .

FROM scratch as prod
LABEL maintainer="lewisay@163.com"
WORKDIR /
COPY --from=builder /go/src/github.com/lewisay/docker-tutorial/app .
EXPOSE 80
ENTRYPOINT ["/app"]