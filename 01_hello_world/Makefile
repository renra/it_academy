.PHONY: assembly

assembly:
	nasm -f elf64 hello.asm
	ld hello.o
	./a.out

python:
	python hello.py

ruby:
	ruby hello.rb

haskell:
	ghc -o hello hello.hs
	./hello

java:
	javac Hello.java
	java Hello

mono:
	csc hello.cs
	mono hello.exe

