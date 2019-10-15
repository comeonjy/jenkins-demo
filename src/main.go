package main

import (
	"fmt"
	"log"
	"net"
	"time"
)

func main() {
	fmt.Println("start Listen :1234")
	listenner,err:=net.Listen("tcp","0.0.0.0:1234")
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