package main

import (
	"errors"
	"fmt"
)

func DoStuff(a, b int) (int, error) {
	if a < 0 {
		return -1, errors.New("No")
	}
	return b, nil
}

func main() {
	fmt.Println(DoStuff(1, 3))
}
