#Go
gobuild:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -i -o ./bin/main src/main.go
clear:
	rm -rf ./bin
