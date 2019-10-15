#!/bin/bash

#rm Dockerfile
#touch Dockerfile
#echo -e "FROM golang:latest" >> Dockerfile
#echo -e "WORKDIR $GOPATH" >> Dockerfile
#echo -e "COPY ./src $GOPATH" >> Dockerfile
#echo -e "COPY run.cmd $GOPATH" >> Dockerfile
#echo -e "RUN go build ." >> Dockerfile
#echo -e "CMD [\"./src.exe\"]" >> Dockerfile
docker build -t j_one .