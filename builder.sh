#!/bin/bash
make build
touch Dockerfile
echo -e "FROM golang:latest" >> Dockerfile
echo -e "WORKDIR /" >> Dockerfile
echo -e "COPY ./bin/main.exe /" >> Dockerfile
echo -e "COPY run.cmd /" >> Dockerfile
echo -e "CMD [\"./main.exe\"]" >> Dockerfile
docker build -t j_one .