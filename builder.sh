#!/bin/bash
make gobuild
rm Dockerfile
echo "FROM golang:latest" >> Dockerfile
echo "WORKDIR /" >> Dockerfile
echo "COPY ./bin/main /" >> Dockerfile
echo "EXPOSE 1234" >> Dockerfile
echo  "CMD [\"./main\"]" >> Dockerfile
ls -a
docker build -t j_one .