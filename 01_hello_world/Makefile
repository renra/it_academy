.DEFAULT: all
all: assembly python ruby haskell java mono

.PHONY: clean
clean:
	rm hello.hi
	rm hello.o
	rm hello_haskell
	rm Hello.class
	rm hello.exe
	rm hello_assembly
	rm hello_assembly.o

assembly:
	nasm -f elf64 hello.asm -o hello_assembly.o
	ld hello_assembly.o -o hello_assembly
	./hello_assembly

python:
	python hello.py

ruby:
	ruby hello.rb

haskell:
	ghc -o hello_haskell hello.hs
	./hello_haskell

java:
	javac Hello.java
	java Hello

mono:
	csc hello.cs
	mono hello.exe

