#!/bin/bash
make build
touch Dockerfile
echo -e "FROM golang:latest" >> Dockerfile
echo -e "WORKDIR $GOPATH" >> Dockerfile
echo -e "COPY ./bin/main.exe $GOPATH" >> Dockerfile
echo -e "COPY run.cmd $GOPATH" >> Dockerfile
echo -e "CMD [\"./main.exe\"]" >> Dockerfile
docker build -t j_one .