hello: hello.o
	ld -o hello hello.o
	strip hello
hello.o: hello.asm
	nasm -f elf64 hello.asm
clean:
	rm -f hello hello.o

