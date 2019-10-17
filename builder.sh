#!/bin/bash
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -i -o ./bin/main src/main.go
rm Dockerfile
echo "FROM golang:latest" >> Dockerfile
echo "WORKDIR /" >> Dockerfile
echo "COPY ./bin/main /" >> Dockerfile
echo "EXPOSE 1234" >> Dockerfile
echo  "CMD [\"./main\"]" >> Dockerfile
ls -a
docker build -t j_one .