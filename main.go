package main

import "fmt"

func vecSum(a, b []int) []int {
	c := make([]int, len(a))
	for i := range a {
		c[i] = a[i] + b[i]
	}
	return c
}


func main() {
	a := make([]int, 10_000_000)
	b := make([]int, 10_000_000)

	for i := 0; i < 10_000_000; i++ {
		a[i] = i
		b[i] = i
	}
	res := vecSum(a, b)

	fmt.Println(res[len(res)-1])
}
