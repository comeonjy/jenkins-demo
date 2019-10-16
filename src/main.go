package main

import (
	"fmt"
	"log"
	"net"
	//pb "other/src/core/login/protobuf/login_pb"
	"time"
	//"github.com/gin-gonic/gin"
	//"google.golang.org/grpc"
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

//func a()  {
//	router := gin.Default()
//	router.Use(gin.Recovery())
//
//	v1 := router.Group("/v1")
//	{
//		v1.GET("/login", func(context *gin.Context) {
//			conn, err := grpc.Dial(":8082",grpc.WithInsecure())
//			if err != nil {
//				log.Fatal(err)
//			}
//			defer conn.Close()
//
//			client := pb.NewLoginClient(conn)
//
//			feature, err := client.Login(context, &pb.LoginParam{})
//			if err != nil {
//				log.Fatal(err)
//			}
//			fmt.Println(feature.Msg)
//		})
//	}
//
//	if err := router.Run(":8083"); err != nil {
//		log.Fatal(err)
//	}
//
//}