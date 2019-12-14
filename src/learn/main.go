package main

import "fmt"

type A struct {
	code int
}

func (a *A) T1() {
	fmt.Println("a t1")
}

func (a *A) T2() {
	fmt.Println("a t2")
}

type B struct {
	BA A
}

func (b *B) T3()  {
	fmt.Println("b t2")
}
1231
func main() {
	b:=&B{}
	b.BA.T1()
	b.BA.T2()
}
