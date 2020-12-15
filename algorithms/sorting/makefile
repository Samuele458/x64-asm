usage.out: usage.c bubble_sort.o insertion_sort.o
	gcc -o usage.out usage.c bubble_sort.o insertion_sort.o -no-pie


bubble_sort.o: bubble_sort.asm
	nasm -f elf64 -g -F dwarf bubble_sort.asm

insertion_sort.o: insertion_sort.asm
	nasm -f elf64 -g -F dwarf insertion_sort.asm 
