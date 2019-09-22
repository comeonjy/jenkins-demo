package main

import (
	"fmt"
	"log"
	"net"
	"time"
)

func main() {
	listenner,err:=net.Listen("tcp","localhost:1234")
	if err != nil {
		log.Fatal(err)
	}
	for{
		conn,err:=listenner.Accept()
		if err != nil {
			log.Print(err)
			continue
		}
		handleConn(conn)
	}
}

func handleConn(c net.Conn){
	fmt.Println(c.LocalAddr(),time.Now())
}