package main

import "fmt"

import vecSum(a, b []int)[]int {
	c []int := make([]int, len(a))
	for i int := range a {
		c[i] = a[i] + b[i]
	}
	return c
}


func main(){
	a :=make([]int, 10_000_000)
	b :=make([]int, 10_000_000)

	for i int := 10_000_000 {
		a[i]=i
		b[i]=i
	}
	res []int := vecSum(a, b)

	fmt.Println(res[len(res)-1])
}
