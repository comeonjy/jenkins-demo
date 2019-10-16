#!/bin/bash
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -i -o ./bin/main src/main.go
rm Dockerfile
echo -e "FROM golang:latest" >> Dockerfile
echo -e "WORKDIR /" >> Dockerfile
echo -e "COPY ./bin/main /" >> Dockerfile
echo -e "EXPOSE 1234" >> Dockerfile
echo -e  "CMD [\"./main\"]" >> Dockerfile
ls -a
docker build -t j_one .