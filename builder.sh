#!/bin/bash
make build
touch Dockerfile
echo -e "FROM golang:latest" >> Dockerfile
echo -e "COPY ./bin/main.exe /" >> Dockerfile
echo -e "COPY run.cmd /" >> Dockerfile
echo -e "CMD[\"/run.cmd\"]" >> Dockerfile
docker build .