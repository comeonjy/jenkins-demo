package main

import (
	"demo"
	"fmt"
	"github.com/gin-gonic/gin"
	"log"
	"net"
	"time"
)

func main() {
	fmt.Println("start Listen :1234")
	demo.Demo()
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

func a()  {
	router := gin.Default()
	router.Use(gin.Recovery())



	if err := router.Run(":8083"); err != nil {
		log.Fatal(err)
	}

}