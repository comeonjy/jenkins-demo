FROM golang:latest
WORKDIR /
COPY ./bin/main /
EXPOSE 1234
CMD ["./main"]
