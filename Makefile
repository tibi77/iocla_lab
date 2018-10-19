ex_bonus: ex_bonus.asm
	-nasm -f elf32 -o ex_bonus.o $<
	-gcc -m32 -o $@ ex_bonus.o

clean:
	rm -f ex_bonus ex_bonus.o
