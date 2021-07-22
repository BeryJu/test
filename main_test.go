package main

import "testing"

func TestFoo(t *testing.T) {
	_, b := DoStuff(-1, 3)
	if b == nil {
		t.Error("b should be error")
	}

	a, b := DoStuff(1, 3)
	if a != 3 {
		t.Error("a should be 3")
	}
	main()
}
