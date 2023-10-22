package gostark

/*
#cgo LDFLAGS: -L./libs -lrusty
#include "./libs/rusty.h"
*/
import "C"

func Average(a float64, b float64) float64 {
	return (a + b) / 2
}

func SayHello() {
	C.hello(C.CString("world"))
}

func SayWisper() {
	C.whisper(C.CString("this is code from the dynamic library"))
}
