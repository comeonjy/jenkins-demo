#!/bin/bash
make gobuild

rm Dockerfile
echo -e "FROM golang:latest" >> Dockerfile
echo -e "WORKDIR /" >> Dockerfile
echo -e "COPY ./bin/main /" >> Dockerfile
echo -e "EXPOSE 1234" >> Dockerfile
echo -e  "CMD [\"./main\"]" >> Dockerfile
ls -a
docker build -t j_one .