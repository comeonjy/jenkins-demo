FROM golang:latest
WORKDIR $GOPATH
COPY ./src $GOPATH
COPY run.cmd $GOPATH
RUN go build .
CMD ["src.exe"]
