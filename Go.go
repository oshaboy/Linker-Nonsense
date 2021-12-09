package main
/*
#cgo LDFLAGS: call_this.o
#include "call_this.h"
*/
import "C"

func main() {
       lang_name:=C.CString("Go")
	   C.call_this(lang_name)
}