FROM golang:latest
WORKDIR $GOPATH
COPY ./src $GOPATH
COPY run.cmd $GOPATH
EXPOSE 1234
RUN ls
RUN go build $GOPATH/main.go
CMD ["./main"]
