BINARIES=call_this.so cplusplus C Java.jar Cobol Rust Go Basic Lua Assembly
OBJECTS=call_this.o
all: $(BINARIES)
call_this.o:
	gcc -O3 -c call_this.c 
call_this.so: call_this.o
	gcc -O3 -shared -o call_this.so call_this.o
cplusplus: call_this.o
	g++ -O3 -o cplusplus cplusplus.cpp call_this.o
C: call_this.o
	gcc -O3 -o C C.c call_this.o
Java.jar: call_this.so
	javac java.java
	jar cef Java Java.jar Java.class 
	rm Java.class
Cobol: call_this.o
	cobc -x -O3 -o Cobol Cobol.cob call_this.o
Basic: call_this.o 
	fbc Basic.bas call_this.o 
Rust: call_this.o
	rustc -Clink-arg=call_this.o Rust.rs
Go: call_this.o
	go build ./Go.go
Lua: call_this.o
	gcc -O3 -o Lua Lua.c call_this.o -llua
Assembly: call_this.o
	gcc -o Assembly Assembly.s call_this.o
clean:
	rm -f $(OBJECTS) $(BINARIES)
