package main

import "fmt"

func main() {
	fmt.Println(Soma(30, 5))
}

func Soma(a, b int) int {
	return a + b
}

func Sub(a, b int) int {
	return a - b
}

func times(a, b int) int {
	return a * b
}

func SomaX(a, b int) int {
	return a * b + a
}